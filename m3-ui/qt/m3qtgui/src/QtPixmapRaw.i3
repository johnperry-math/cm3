(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtPixmapRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QPixmap0 *>
PROCEDURE New_QPixmap0 (): QPixmap;

<* EXTERNAL New_QPixmap1 *>
PROCEDURE New_QPixmap1 (w, h: C.int; ): QPixmap;

<* EXTERNAL New_QPixmap2 *>
PROCEDURE New_QPixmap2 (arg1: ADDRESS; ): QPixmap;

<* EXTERNAL New_QPixmap3 *>
PROCEDURE New_QPixmap3
  (fileName: ADDRESS; format: C.char_star; flags: C.int; ): QPixmap;

<* EXTERNAL New_QPixmap4 *>
PROCEDURE New_QPixmap4 (fileName: ADDRESS; format: C.char_star; ): QPixmap;

<* EXTERNAL New_QPixmap5 *>
PROCEDURE New_QPixmap5 (fileName: ADDRESS; ): QPixmap;

<* EXTERNAL New_QPixmap6 *>
PROCEDURE New_QPixmap6 (arg1: ADDRESS; ): QPixmap;

<* EXTERNAL Delete_QPixmap *>
PROCEDURE Delete_QPixmap (self: QPixmap; );

<* EXTERNAL QPixmap_swap *>
PROCEDURE QPixmap_swap (self: QPixmap; other: ADDRESS; );

<* EXTERNAL QPixmap_isNull *>
PROCEDURE QPixmap_isNull (self: QPixmap; ): BOOLEAN;

<* EXTERNAL QPixmap_devType *>
PROCEDURE QPixmap_devType (self: QPixmap; ): C.int;

<* EXTERNAL QPixmap_width *>
PROCEDURE QPixmap_width (self: QPixmap; ): C.int;

<* EXTERNAL QPixmap_height *>
PROCEDURE QPixmap_height (self: QPixmap; ): C.int;

<* EXTERNAL QPixmap_size *>
PROCEDURE QPixmap_size (self: QPixmap; ): ADDRESS;

<* EXTERNAL QPixmap_rect *>
PROCEDURE QPixmap_rect (self: QPixmap; ): ADDRESS;

<* EXTERNAL QPixmap_depth *>
PROCEDURE QPixmap_depth (self: QPixmap; ): C.int;

<* EXTERNAL DefaultDepth *>
PROCEDURE DefaultDepth (): C.int;

<* EXTERNAL QPixmap_fill *>
PROCEDURE QPixmap_fill (self: QPixmap; fillColor: ADDRESS; );

<* EXTERNAL QPixmap_fill1 *>
PROCEDURE QPixmap_fill1 (self: QPixmap; );

<* EXTERNAL QPixmap_fill2 *>
PROCEDURE QPixmap_fill2 (self: QPixmap; widget: REFANY; ofs: ADDRESS; );

<* EXTERNAL QPixmap_fill3 *>
PROCEDURE QPixmap_fill3
  (self: QPixmap; widget: REFANY; xofs, yofs: C.int; );

<* EXTERNAL QPixmap_setMask *>
PROCEDURE QPixmap_setMask (self: QPixmap; READONLY arg2: REFANY; );

<* EXTERNAL QPixmap_hasAlpha *>
PROCEDURE QPixmap_hasAlpha (self: QPixmap; ): BOOLEAN;

<* EXTERNAL QPixmap_hasAlphaChannel *>
PROCEDURE QPixmap_hasAlphaChannel (self: QPixmap; ): BOOLEAN;

<* EXTERNAL GrabWindow *>
PROCEDURE GrabWindow (arg1, x, y, w, h: C.int; ): ADDRESS;

<* EXTERNAL GrabWindow1 *>
PROCEDURE GrabWindow1 (arg1, x, y, w: C.int; ): ADDRESS;

<* EXTERNAL GrabWindow2 *>
PROCEDURE GrabWindow2 (arg1, x, y: C.int; ): ADDRESS;

<* EXTERNAL GrabWindow3 *>
PROCEDURE GrabWindow3 (arg1, x: C.int; ): ADDRESS;

<* EXTERNAL GrabWindow4 *>
PROCEDURE GrabWindow4 (arg1: C.int; ): ADDRESS;

<* EXTERNAL GrabWidget *>
PROCEDURE GrabWidget (widget: REFANY; rect: ADDRESS; ): ADDRESS;

<* EXTERNAL GrabWidget1 *>
PROCEDURE GrabWidget1 (widget: REFANY; x, y, w, h: C.int; ): ADDRESS;

<* EXTERNAL GrabWidget2 *>
PROCEDURE GrabWidget2 (widget: REFANY; x, y, w: C.int; ): ADDRESS;

<* EXTERNAL GrabWidget3 *>
PROCEDURE GrabWidget3 (widget: REFANY; x, y: C.int; ): ADDRESS;

<* EXTERNAL GrabWidget4 *>
PROCEDURE GrabWidget4 (widget: REFANY; x: C.int; ): ADDRESS;

<* EXTERNAL GrabWidget5 *>
PROCEDURE GrabWidget5 (widget: REFANY; ): ADDRESS;

<* EXTERNAL QPixmap_scaled *>
PROCEDURE QPixmap_scaled (self: QPixmap; w, h, aspectMode, mode: C.int; ):
  ADDRESS;

<* EXTERNAL QPixmap_scaled1 *>
PROCEDURE QPixmap_scaled1 (self: QPixmap; w, h, aspectMode: C.int; ):
  ADDRESS;

<* EXTERNAL QPixmap_scaled2 *>
PROCEDURE QPixmap_scaled2 (self: QPixmap; w, h: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_scaled3 *>
PROCEDURE QPixmap_scaled3
  (self: QPixmap; s: ADDRESS; aspectMode, mode: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_scaled4 *>
PROCEDURE QPixmap_scaled4 (self: QPixmap; s: ADDRESS; aspectMode: C.int; ):
  ADDRESS;

<* EXTERNAL QPixmap_scaled5 *>
PROCEDURE QPixmap_scaled5 (self: QPixmap; s: ADDRESS; ): ADDRESS;

<* EXTERNAL QPixmap_scaledToWidth *>
PROCEDURE QPixmap_scaledToWidth (self: QPixmap; w, mode: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_scaledToWidth1 *>
PROCEDURE QPixmap_scaledToWidth1 (self: QPixmap; w: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_scaledToHeight *>
PROCEDURE QPixmap_scaledToHeight (self: QPixmap; h, mode: C.int; ):
  ADDRESS;

<* EXTERNAL QPixmap_scaledToHeight1 *>
PROCEDURE QPixmap_scaledToHeight1 (self: QPixmap; h: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_transformed *>
PROCEDURE QPixmap_transformed
  (self: QPixmap; arg2: ADDRESS; mode: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_transformed1 *>
PROCEDURE QPixmap_transformed1 (self: QPixmap; arg2: ADDRESS; ): ADDRESS;

<* EXTERNAL TrueMatrix *>
PROCEDURE TrueMatrix (m: ADDRESS; w, h: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_transformed2 *>
PROCEDURE QPixmap_transformed2
  (self: QPixmap; arg2: ADDRESS; mode: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_transformed3 *>
PROCEDURE QPixmap_transformed3 (self: QPixmap; arg2: ADDRESS; ): ADDRESS;

<* EXTERNAL TrueMatrix1 *>
PROCEDURE TrueMatrix1 (m: ADDRESS; w, h: C.int; ): ADDRESS;

<* EXTERNAL QPixmap_toImage *>
PROCEDURE QPixmap_toImage (self: QPixmap; ): ADDRESS;

<* EXTERNAL FromImage *>
PROCEDURE FromImage (image: ADDRESS; flags: C.int; ): ADDRESS;

<* EXTERNAL FromImage1 *>
PROCEDURE FromImage1 (image: ADDRESS; ): ADDRESS;

<* EXTERNAL QPixmap_load *>
PROCEDURE QPixmap_load
  (self: QPixmap; fileName: ADDRESS; format: C.char_star; flags: C.int; ):
  BOOLEAN;

<* EXTERNAL QPixmap_load1 *>
PROCEDURE QPixmap_load1
  (self: QPixmap; fileName: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QPixmap_load2 *>
PROCEDURE QPixmap_load2 (self: QPixmap; fileName: ADDRESS; ): BOOLEAN;

<* EXTERNAL QPixmap_loadFromData *>
PROCEDURE QPixmap_loadFromData (self  : QPixmap;
                                buf   : ADDRESS;
                                len   : C.unsigned_int;
                                format: C.char_star;
                                flags : C.int;          ): BOOLEAN;

<* EXTERNAL QPixmap_loadFromData1 *>
PROCEDURE QPixmap_loadFromData1 (self  : QPixmap;
                                 buf   : ADDRESS;
                                 len   : C.unsigned_int;
                                 format: C.char_star;    ): BOOLEAN;

<* EXTERNAL QPixmap_loadFromData2 *>
PROCEDURE QPixmap_loadFromData2
  (self: QPixmap; buf: ADDRESS; len: C.unsigned_int; ): BOOLEAN;

<* EXTERNAL QPixmap_loadFromData3 *>
PROCEDURE QPixmap_loadFromData3
  (self: QPixmap; data: ADDRESS; format: C.char_star; flags: C.int; ):
  BOOLEAN;

<* EXTERNAL QPixmap_loadFromData4 *>
PROCEDURE QPixmap_loadFromData4
  (self: QPixmap; data: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QPixmap_loadFromData5 *>
PROCEDURE QPixmap_loadFromData5 (self: QPixmap; data: ADDRESS; ): BOOLEAN;

<* EXTERNAL QPixmap_save *>
PROCEDURE QPixmap_save (self    : QPixmap;
                        fileName: ADDRESS;
                        format  : C.char_star;
                        quality : C.int;       ): BOOLEAN;

<* EXTERNAL QPixmap_save1 *>
PROCEDURE QPixmap_save1
  (self: QPixmap; fileName: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QPixmap_save2 *>
PROCEDURE QPixmap_save2 (self: QPixmap; fileName: ADDRESS; ): BOOLEAN;

<* EXTERNAL QPixmap_save3 *>
PROCEDURE QPixmap_save3
  (self: QPixmap; device: ADDRESS; format: C.char_star; quality: C.int; ):
  BOOLEAN;

<* EXTERNAL QPixmap_save4 *>
PROCEDURE QPixmap_save4
  (self: QPixmap; device: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QPixmap_save5 *>
PROCEDURE QPixmap_save5 (self: QPixmap; device: ADDRESS; ): BOOLEAN;

<* EXTERNAL QPixmap_convertFromImage *>
PROCEDURE QPixmap_convertFromImage
  (self: QPixmap; img: ADDRESS; flags: C.int; ): BOOLEAN;

<* EXTERNAL QPixmap_convertFromImage1 *>
PROCEDURE QPixmap_convertFromImage1 (self: QPixmap; img: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QPixmap_copy *>
PROCEDURE QPixmap_copy (self: QPixmap; x, y, width, height: C.int; ):
  ADDRESS;

<* EXTERNAL QPixmap_copy1 *>
PROCEDURE QPixmap_copy1 (self: QPixmap; rect: ADDRESS; ): ADDRESS;

<* EXTERNAL QPixmap_copy2 *>
PROCEDURE QPixmap_copy2 (self: QPixmap; ): ADDRESS;

<* EXTERNAL QPixmap_scroll *>
PROCEDURE QPixmap_scroll
  (self: QPixmap; dx, dy, x, y, width, height: C.int; exposed: ADDRESS; );

<* EXTERNAL QPixmap_scroll1 *>
PROCEDURE QPixmap_scroll1
  (self: QPixmap; dx, dy, x, y, width, height: C.int; );

<* EXTERNAL QPixmap_scroll2 *>
PROCEDURE QPixmap_scroll2
  (self: QPixmap; dx, dy: C.int; rect, exposed: ADDRESS; );

<* EXTERNAL QPixmap_scroll3 *>
PROCEDURE QPixmap_scroll3 (self: QPixmap; dx, dy: C.int; rect: ADDRESS; );

<* EXTERNAL QPixmap_cacheKey *>
PROCEDURE QPixmap_cacheKey (self: QPixmap; ): C.unsigned_long;

<* EXTERNAL QPixmap_isDetached *>
PROCEDURE QPixmap_isDetached (self: QPixmap; ): BOOLEAN;

<* EXTERNAL QPixmap_detach *>
PROCEDURE QPixmap_detach (self: QPixmap; );

<* EXTERNAL QPixmap_isQBitmap *>
PROCEDURE QPixmap_isQBitmap (self: QPixmap; ): BOOLEAN;

<* EXTERNAL QPixmap_paintEngine *>
PROCEDURE QPixmap_paintEngine (self: QPixmap; ): ADDRESS;

<* EXTERNAL QPixmap_data_ptr *>
PROCEDURE QPixmap_data_ptr (self: QPixmap; ): ADDRESS;

TYPE QPixmap = ADDRESS;

END QtPixmapRaw.
