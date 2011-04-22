typedef void (*ForkHandler)(void);
 
#include "m3core.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef M3_USER_THREADS

typedef struct _fork_handlers_t {
  ForkHandler prepare;
  ForkHandler parent;
  ForkHandler child;
} fork_handlers_t;

typedef struct _vector_t {
  void* p;
  size_t count_allocated;
  size_t count_used;
} vector_t;

vector_t fork_handlers;

INTEGER
__cdecl
RTProcess__RegisterForkHandlers(ForkHandler prepare,
                                ForkHandler parent,
                                ForkHandler child)
{
  typedef fork_handlers_t T;
  T* p = { 0 };
  size_t new_allocated = { 0 };
  size_t count_allocated = { 0 };
  size_t count_used = { 0 };
  int ret = { 0 };

  Scheduler__DisableSwitching();
  count_used = fork_handlers.count_used;
  count_allocated = fork_handlers.count_allocated;
  if (count_used + 1 >= count_allocated)
  {
    new_allocated = 2 * (1 + count_allocated);
    p = (T*)calloc(new_allocated, sizeof(T));
    if (!p)
    {
      ret = ENOMEM;
      goto Exit;
    }
    memcpy(p, fork_handlers.p, count_used * sizeof(T));
    free(fork_handlers.p);
    fork_handlers.count_allocated = new_allocated;
    fork_handlers.p = p;
  }
  else
  {
    p = count_used + (T*)fork_handlers.p;
  }
  p->prepare = prepare;
  p->parent = parent;
  p->child = child;
  fork_handlers.count_used = (count_used + 1);  
Exit:
  Scheduler__EnableSwitching();
  return ret;
}

#else /* M3_USER_THREADS */

INTEGER
__cdecl
RTProcess__RegisterForkHandlers(ForkHandler prepare,
                                ForkHandler parent,
                                ForkHandler child)
{
/* FreeBSD < 6 lacks pthread_atfork. Would be good to use autoconf.
 * VMS lacks pthread_atfork? Would be good to use autoconf.
 * Win32 lacks pthread_atfork and fork. OK.
 *
 * As well, for all Posix systems, we could implement
 * atfork ourselves, as long as we provide a fork()
 * wrapper that code uses.
 */
#if defined(_WIN32) \
        || defined(__vms) \
        || (defined(__FreeBSD__) && (__FreeBSD__ < 6))
    return 0;
#else
    while (1)
    {
      int i = pthread_atfork(prepare, parent, child);
      if (i != EAGAIN)
        return i;
      sleep(0);
    }
#endif
}

#endif /* M3_USER_THREADS */

#ifdef __cplusplus
} /* extern "C" */
#endif
