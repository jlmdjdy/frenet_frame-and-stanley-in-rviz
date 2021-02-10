# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_msgs/PolygonArray.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import object_msgs.msg

class PolygonArray(genpy.Message):
  _md5sum = "8cca23aedf7880d762e94679f98a6bf6"
  _type = "object_msgs/PolygonArray"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """object_msgs/Polygon[] polygon_list
================================================================================
MSG: object_msgs/Polygon
int32 n
float32[] x
float32[] y"""
  __slots__ = ['polygon_list']
  _slot_types = ['object_msgs/Polygon[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       polygon_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PolygonArray, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.polygon_list is None:
        self.polygon_list = []
    else:
      self.polygon_list = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.polygon_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.polygon_list:
        _x = val1.n
        buff.write(_get_struct_i().pack(_x))
        length = len(val1.x)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.x))
        length = len(val1.y)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.polygon_list is None:
        self.polygon_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.polygon_list = []
      for i in range(0, length):
        val1 = object_msgs.msg.Polygon()
        start = end
        end += 4
        (val1.n,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y = s.unpack(str[start:end])
        self.polygon_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.polygon_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.polygon_list:
        _x = val1.n
        buff.write(_get_struct_i().pack(_x))
        length = len(val1.x)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.x.tostring())
        length = len(val1.y)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.y.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.polygon_list is None:
        self.polygon_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.polygon_list = []
      for i in range(0, length):
        val1 = object_msgs.msg.Polygon()
        start = end
        end += 4
        (val1.n,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.polygon_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
