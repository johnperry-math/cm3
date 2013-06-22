(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtObject;


IMPORT M3toC;
IMPORT QtObjectRaw;
IMPORT Ctypes AS C;
FROM QtNamespace IMPORT ConnectionType;


IMPORT WeakRef;
FROM QtEvent IMPORT QEvent;
FROM QtString IMPORT QString;
FROM QtByteArray IMPORT QByteArray;

PROCEDURE New_QObject0 (self:QObject; parent: QObject;
): QObject =
VAR
result : ADDRESS;
arg1tmp :=  LOOPHOLE(parent.cxxObj,ADDRESS);
BEGIN
result := QtObjectRaw.New_QObject0(arg1tmp);

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QObject);

RETURN self;
END New_QObject0;

PROCEDURE New_QObject1 (self:QObject;): QObject =
VAR
result : ADDRESS;
BEGIN
result := QtObjectRaw.New_QObject1();

  self.cxxObj := result;
  EVAL WeakRef.FromRef(self,Cleanup_QObject);

RETURN self;
END New_QObject1;

PROCEDURE Delete_QObject ( self: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.Delete_QObject(arg1tmp);
END Delete_QObject;

PROCEDURE QObject_event ( self: QObject;
 arg2: REFANY (*QEvent*);
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(NARROW(arg2,QEvent).cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_event(arg1tmp, arg2tmp);
END QObject_event;

PROCEDURE QObject_eventFilter ( self, arg2: QObject;
 arg3: REFANY (*QEvent*);
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(arg2.cxxObj,ADDRESS);
arg3tmp :=  LOOPHOLE(NARROW(arg3,QEvent).cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_eventFilter(arg1tmp, arg2tmp, arg3tmp);
END QObject_eventFilter;

PROCEDURE QObject_objectName ( self: QObject;
): TEXT =
VAR
ret : ADDRESS;
qstr := NEW(QString);
ba : QByteArray;
result : TEXT;
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtObjectRaw.QObject_objectName(arg1tmp);

  qstr.cxxObj := ret;
  ba := qstr.toLocal8Bit();
  result := ba.data();

RETURN result;
END QObject_objectName;

PROCEDURE QObject_setObjectName ( self: QObject;
 name: TEXT;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
qstr_name := NEW(QString).initQString(name);
arg2tmp :=  LOOPHOLE(qstr_name.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_setObjectName(arg1tmp, arg2tmp);
END QObject_setObjectName;

PROCEDURE QObject_isWidgetType ( self: QObject;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_isWidgetType(arg1tmp);
END QObject_isWidgetType;

PROCEDURE QObject_signalsBlocked ( self: QObject;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_signalsBlocked(arg1tmp);
END QObject_signalsBlocked;

PROCEDURE QObject_blockSignals ( self: QObject;
b: BOOLEAN;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_blockSignals(arg1tmp, b);
END QObject_blockSignals;

PROCEDURE QObject_startTimer ( self: QObject;
interval: INTEGER;
): INTEGER =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
RETURN QtObjectRaw.QObject_startTimer(arg1tmp, interval);
END QObject_startTimer;

PROCEDURE QObject_killTimer ( self: QObject;
id: INTEGER;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_killTimer(arg1tmp, id);
END QObject_killTimer;

PROCEDURE QObject_setParent ( self, arg2: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(arg2.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_setParent(arg1tmp, arg2tmp);
END QObject_setParent;

PROCEDURE QObject_installEventFilter ( self, arg2: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(arg2.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_installEventFilter(arg1tmp, arg2tmp);
END QObject_installEventFilter;

PROCEDURE QObject_removeEventFilter ( self, arg2: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(arg2.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_removeEventFilter(arg1tmp, arg2tmp);
END QObject_removeEventFilter;

PROCEDURE Connect ( sender: QObject;
 signal: TEXT;
 receiver: QObject;
 member: TEXT;
arg5: ConnectionType;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(sender.cxxObj,ADDRESS);
arg2tmp: C.char_star;
arg3tmp :=  LOOPHOLE(receiver.cxxObj,ADDRESS);
arg4tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg2tmp := M3toC.CopyTtoS(signal);
arg4tmp := M3toC.CopyTtoS(member);
result := QtObjectRaw.Connect(arg1tmp, arg2tmp, arg3tmp, arg4tmp, ORD(arg5));




RETURN result;
END Connect;

PROCEDURE QObject_connect1 ( self, sender: QObject;
 signal, member: TEXT;
type: ConnectionType;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(sender.cxxObj,ADDRESS);
arg3tmp: C.char_star;
arg4tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg3tmp := M3toC.CopyTtoS(signal);
arg4tmp := M3toC.CopyTtoS(member);
result := QtObjectRaw.QObject_connect1(arg1tmp, arg2tmp, arg3tmp, arg4tmp, ORD(type));




RETURN result;
END QObject_connect1;

PROCEDURE Disconnect ( sender: QObject;
 signal: TEXT;
 receiver: QObject;
 member: TEXT;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(sender.cxxObj,ADDRESS);
arg2tmp: C.char_star;
arg3tmp :=  LOOPHOLE(receiver.cxxObj,ADDRESS);
arg4tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg2tmp := M3toC.CopyTtoS(signal);
arg4tmp := M3toC.CopyTtoS(member);
result := QtObjectRaw.Disconnect(arg1tmp, arg2tmp, arg3tmp, arg4tmp);




RETURN result;
END Disconnect;

PROCEDURE QObject_disconnect1 ( self: QObject;
 signal: TEXT;
 receiver: QObject;
 member: TEXT;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp: C.char_star;
arg3tmp :=  LOOPHOLE(receiver.cxxObj,ADDRESS);
arg4tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg2tmp := M3toC.CopyTtoS(signal);
arg4tmp := M3toC.CopyTtoS(member);
result := QtObjectRaw.QObject_disconnect1(arg1tmp, arg2tmp, arg3tmp, arg4tmp);




RETURN result;
END QObject_disconnect1;

PROCEDURE QObject_disconnect2 ( self, receiver: QObject;
 member: TEXT;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp :=  LOOPHOLE(receiver.cxxObj,ADDRESS);
arg3tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg3tmp := M3toC.CopyTtoS(member);
result := QtObjectRaw.QObject_disconnect2(arg1tmp, arg2tmp, arg3tmp);


RETURN result;
END QObject_disconnect2;

PROCEDURE QObject_dumpObjectTree ( self: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_dumpObjectTree(arg1tmp);
END QObject_dumpObjectTree;

PROCEDURE QObject_dumpObjectInfo ( self: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_dumpObjectInfo(arg1tmp);
END QObject_dumpObjectInfo;

PROCEDURE RegisterUserData (): CARDINAL =
BEGIN
RETURN QtObjectRaw.RegisterUserData();
END RegisterUserData;

PROCEDURE QObject_parent ( self: QObject;
): QObject =
VAR
ret:ADDRESS; result : QObject;
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
ret := QtObjectRaw.QObject_parent(arg1tmp);

  result := NEW(QObject);
  result.cxxObj := ret;

RETURN result;
END QObject_parent;

PROCEDURE QObject_inherits ( self: QObject;
 classname: TEXT;
): BOOLEAN =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
arg2tmp: C.char_star;
result: BOOLEAN;
BEGIN
arg2tmp := M3toC.CopyTtoS(classname);
result := QtObjectRaw.QObject_inherits(arg1tmp, arg2tmp);


RETURN result;
END QObject_inherits;

PROCEDURE QObject_deleteLater ( self: QObject;
) =
VAR
arg1tmp :=  LOOPHOLE(self.cxxObj,ADDRESS);
BEGIN
QtObjectRaw.QObject_deleteLater(arg1tmp);
END QObject_deleteLater;

PROCEDURE Cleanup_QObject(<*UNUSED*>READONLY self: WeakRef.T; ref: REFANY) =
VAR obj : QObject := ref;
BEGIN
  Delete_QObject(obj);
 END Cleanup_QObject;

PROCEDURE Destroy_QObject(self : QObject) =
BEGIN
  EVAL WeakRef.FromRef(self,Cleanup_QObject);
END Destroy_QObject;

REVEAL
QObject =
QObjectPublic BRANDED OBJECT
OVERRIDES
init_0 := New_QObject0;
init_1 := New_QObject1;
event := QObject_event;
eventFilter := QObject_eventFilter;
objectName := QObject_objectName;
setObjectName := QObject_setObjectName;
isWidgetType := QObject_isWidgetType;
signalsBlocked := QObject_signalsBlocked;
blockSignals := QObject_blockSignals;
startTimer := QObject_startTimer;
killTimer := QObject_killTimer;
setParent := QObject_setParent;
installEventFilter := QObject_installEventFilter;
removeEventFilter := QObject_removeEventFilter;
connect1 := QObject_connect1;
disconnect1 := QObject_disconnect1;
disconnect2 := QObject_disconnect2;
dumpObjectTree := QObject_dumpObjectTree;
dumpObjectInfo := QObject_dumpObjectInfo;
parent := QObject_parent;
inherits := QObject_inherits;
deleteLater := QObject_deleteLater;
destroyCxx := Destroy_QObject;
END;


BEGIN
END QtObject.
