(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtEventRaw;


IMPORT Ctypes AS C;


<* EXTERNAL New_QEvent0 *>
PROCEDURE New_QEvent0 (type: C.int; ): QEvent;

<* EXTERNAL Delete_QEvent *>
PROCEDURE Delete_QEvent (self: QEvent; );

<* EXTERNAL QEvent_type *>
PROCEDURE QEvent_type (self: QEvent; ): C.int;

<* EXTERNAL QEvent_spontaneous *>
PROCEDURE QEvent_spontaneous (self: QEvent; ): BOOLEAN;

<* EXTERNAL QEvent_setAccepted *>
PROCEDURE QEvent_setAccepted (self: QEvent; accepted: BOOLEAN; );

<* EXTERNAL QEvent_isAccepted *>
PROCEDURE QEvent_isAccepted (self: QEvent; ): BOOLEAN;

<* EXTERNAL QEvent_accept *>
PROCEDURE QEvent_accept (self: QEvent; );

<* EXTERNAL QEvent_ignore *>
PROCEDURE QEvent_ignore (self: QEvent; );

<* EXTERNAL RegisterEventType *>
PROCEDURE RegisterEventType (hint: C.int; ): C.int;

TYPE QEvent <: ADDRESS;

<* EXTERNAL New_QTimerEvent0 *>
PROCEDURE New_QTimerEvent0 (timerId: C.int; ): QTimerEvent;

<* EXTERNAL Delete_QTimerEvent *>
PROCEDURE Delete_QTimerEvent (self: QTimerEvent; );

<* EXTERNAL QTimerEvent_timerId *>
PROCEDURE QTimerEvent_timerId (self: QTimerEvent; ): C.int;

TYPE QTimerEvent = ADDRESS;

<* EXTERNAL New_QChildEvent0 *>
PROCEDURE New_QChildEvent0 (type: C.int; child: ADDRESS; ): QChildEvent;

<* EXTERNAL Delete_QChildEvent *>
PROCEDURE Delete_QChildEvent (self: QChildEvent; );

<* EXTERNAL QChildEvent_child *>
PROCEDURE QChildEvent_child (self: QChildEvent; ): ADDRESS;

<* EXTERNAL QChildEvent_added *>
PROCEDURE QChildEvent_added (self: QChildEvent; ): BOOLEAN;

<* EXTERNAL QChildEvent_polished *>
PROCEDURE QChildEvent_polished (self: QChildEvent; ): BOOLEAN;

<* EXTERNAL QChildEvent_removed *>
PROCEDURE QChildEvent_removed (self: QChildEvent; ): BOOLEAN;

TYPE QChildEvent = ADDRESS;

<* EXTERNAL New_QDynamicPropertyChangeEvent0 *>
PROCEDURE New_QDynamicPropertyChangeEvent0 (READONLY name: ADDRESS; ):
  QDynamicPropertyChangeEvent;

<* EXTERNAL Delete_QDynamicPropertyChangeEvent *>
PROCEDURE Delete_QDynamicPropertyChangeEvent
  (self: QDynamicPropertyChangeEvent; );

<* EXTERNAL QDynamicPropertyChangeEvent_propertyName *>
PROCEDURE QDynamicPropertyChangeEvent_propertyName
  (self: QDynamicPropertyChangeEvent; ): ADDRESS;

TYPE QDynamicPropertyChangeEvent = ADDRESS;

END QtEventRaw.
