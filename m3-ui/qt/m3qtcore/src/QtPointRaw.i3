(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtPointRaw;


IMPORT Ctypes AS C;


<* EXTERNAL New_QPoint0 *>
PROCEDURE New_QPoint0 (): QPoint;

<* EXTERNAL New_QPoint1 *>
PROCEDURE New_QPoint1 (xpos, ypos: C.int; ): QPoint;

<* EXTERNAL QPoint_isNull *>
PROCEDURE QPoint_isNull (self: QPoint; ): BOOLEAN;

<* EXTERNAL QPoint_x *>
PROCEDURE QPoint_x (self: QPoint; ): C.int;

<* EXTERNAL QPoint_y *>
PROCEDURE QPoint_y (self: QPoint; ): C.int;

<* EXTERNAL QPoint_setX *>
PROCEDURE QPoint_setX (self: QPoint; x: C.int; );

<* EXTERNAL QPoint_setY *>
PROCEDURE QPoint_setY (self: QPoint; y: C.int; );

<* EXTERNAL QPoint_manhattanLength *>
PROCEDURE QPoint_manhattanLength (self: QPoint; ): C.int;

<* EXTERNAL QPoint_rx *>
PROCEDURE QPoint_rx (self: QPoint; ): UNTRACED REF C.int;

<* EXTERNAL QPoint_ry *>
PROCEDURE QPoint_ry (self: QPoint; ): UNTRACED REF C.int;

<* EXTERNAL QPoint_PlusEqual *>
PROCEDURE QPoint_PlusEqual (self: QPoint; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QPoint_MinusEqual *>
PROCEDURE QPoint_MinusEqual (self: QPoint; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QPoint_MultiplyEqual *>
PROCEDURE QPoint_MultiplyEqual (self: QPoint; c: C.double; ): ADDRESS;

<* EXTERNAL QPoint_DivideEqual *>
PROCEDURE QPoint_DivideEqual (self: QPoint; c: C.double; ): ADDRESS;

<* EXTERNAL Delete_QPoint *>
PROCEDURE Delete_QPoint (self: QPoint; );

TYPE QPoint <: ADDRESS;

<* EXTERNAL New_QPointF0 *>
PROCEDURE New_QPointF0 (): QPointF;

<* EXTERNAL New_QPointF1 *>
PROCEDURE New_QPointF1 (p: ADDRESS; ): QPointF;

<* EXTERNAL New_QPointF2 *>
PROCEDURE New_QPointF2 (xpos, ypos: C.double; ): QPointF;

<* EXTERNAL QPointF_manhattanLength *>
PROCEDURE QPointF_manhattanLength (self: QPointF; ): C.double;

<* EXTERNAL QPointF_isNull *>
PROCEDURE QPointF_isNull (self: QPointF; ): BOOLEAN;

<* EXTERNAL QPointF_x *>
PROCEDURE QPointF_x (self: QPointF; ): C.double;

<* EXTERNAL QPointF_y *>
PROCEDURE QPointF_y (self: QPointF; ): C.double;

<* EXTERNAL QPointF_setX *>
PROCEDURE QPointF_setX (self: QPointF; x: C.double; );

<* EXTERNAL QPointF_setY *>
PROCEDURE QPointF_setY (self: QPointF; y: C.double; );

<* EXTERNAL QPointF_rx *>
PROCEDURE QPointF_rx (self: QPointF; ): UNTRACED REF C.double;

<* EXTERNAL QPointF_ry *>
PROCEDURE QPointF_ry (self: QPointF; ): UNTRACED REF C.double;

<* EXTERNAL QPointF_PlusEqual *>
PROCEDURE QPointF_PlusEqual (self: QPointF; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QPointF_MinusEqual *>
PROCEDURE QPointF_MinusEqual (self: QPointF; p: ADDRESS; ): ADDRESS;

<* EXTERNAL QPointF_MultiplyEqual *>
PROCEDURE QPointF_MultiplyEqual (self: QPointF; c: C.double; ): ADDRESS;

<* EXTERNAL QPointF_DivideEqual *>
PROCEDURE QPointF_DivideEqual (self: QPointF; c: C.double; ): ADDRESS;

<* EXTERNAL QPointF_toPoint *>
PROCEDURE QPointF_toPoint (self: QPointF; ): ADDRESS;

<* EXTERNAL Delete_QPointF *>
PROCEDURE Delete_QPointF (self: QPointF; );

TYPE QPointF <: ADDRESS;

END QtPointRaw.
