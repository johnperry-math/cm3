(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtPaintDevice;


IMPORT QtPaintDeviceRaw;


IMPORT WeakRef;

PROCEDURE Delete_QPaintDevice (self: QPaintDevice; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPaintDeviceRaw.Delete_QPaintDevice(selfAdr);
  END Delete_QPaintDevice;

PROCEDURE QPaintDevice_devType (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_devType(arg1tmp);
  END QPaintDevice_devType;

PROCEDURE QPaintDevice_paintingActive (self: QPaintDevice; ): BOOLEAN =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_paintingActive(arg1tmp);
  END QPaintDevice_paintingActive;

PROCEDURE QPaintDevice_width (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_width(arg1tmp);
  END QPaintDevice_width;

PROCEDURE QPaintDevice_height (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_height(arg1tmp);
  END QPaintDevice_height;

PROCEDURE QPaintDevice_widthMM (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_widthMM(arg1tmp);
  END QPaintDevice_widthMM;

PROCEDURE QPaintDevice_heightMM (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_heightMM(arg1tmp);
  END QPaintDevice_heightMM;

PROCEDURE QPaintDevice_logicalDpiX (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_logicalDpiX(arg1tmp);
  END QPaintDevice_logicalDpiX;

PROCEDURE QPaintDevice_logicalDpiY (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_logicalDpiY(arg1tmp);
  END QPaintDevice_logicalDpiY;

PROCEDURE QPaintDevice_physicalDpiX (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_physicalDpiX(arg1tmp);
  END QPaintDevice_physicalDpiX;

PROCEDURE QPaintDevice_physicalDpiY (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_physicalDpiY(arg1tmp);
  END QPaintDevice_physicalDpiY;

PROCEDURE QPaintDevice_colorCount (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_colorCount(arg1tmp);
  END QPaintDevice_colorCount;

PROCEDURE QPaintDevice_depth (self: QPaintDevice; ): INTEGER =
  VAR arg1tmp := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPaintDeviceRaw.QPaintDevice_depth(arg1tmp);
  END QPaintDevice_depth;

PROCEDURE Cleanup_QPaintDevice
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QPaintDevice := ref;
  BEGIN
    Delete_QPaintDevice(obj);
  END Cleanup_QPaintDevice;

PROCEDURE Destroy_QPaintDevice (self: QPaintDevice) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QPaintDevice);
  END Destroy_QPaintDevice;

REVEAL
  QPaintDevice = QPaintDevicePublic BRANDED OBJECT
                 OVERRIDES
                   devType        := QPaintDevice_devType;
                   paintingActive := QPaintDevice_paintingActive;
                   width          := QPaintDevice_width;
                   height         := QPaintDevice_height;
                   widthMM        := QPaintDevice_widthMM;
                   heightMM       := QPaintDevice_heightMM;
                   logicalDpiX    := QPaintDevice_logicalDpiX;
                   logicalDpiY    := QPaintDevice_logicalDpiY;
                   physicalDpiX   := QPaintDevice_physicalDpiX;
                   physicalDpiY   := QPaintDevice_physicalDpiY;
                   colorCount     := QPaintDevice_colorCount;
                   depth          := QPaintDevice_depth;
                   destroyCxx     := Destroy_QPaintDevice;
                 END;


BEGIN
END QtPaintDevice.
