# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kylinbot_core/VirtualRC.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VirtualRC(genpy.Message):
  _md5sum = "a2b2bda6c2cf9e9e80fa2e50b4c2f75c"
  _type = "kylinbot_core/VirtualRC"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 frame_id
uint8[6] data
"""
  __slots__ = ['frame_id','data']
  _slot_types = ['uint32','uint8[6]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_id,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VirtualRC, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.frame_id is None:
        self.frame_id = 0
      if self.data is None:
        self.data = chr(0)*6
    else:
      self.frame_id = 0
      self.data = chr(0)*6

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
      buff.write(_struct_I.pack(self.frame_id))
      _x = self.data
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_struct_6B.pack(*_x))
      else:
        buff.write(_struct_6s.pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (self.frame_id,) = _struct_I.unpack(str[start:end])
      start = end
      end += 6
      self.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_I.pack(self.frame_id))
      _x = self.data
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_struct_6B.pack(*_x))
      else:
        buff.write(_struct_6s.pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (self.frame_id,) = _struct_I.unpack(str[start:end])
      start = end
      end += 6
      self.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6B = struct.Struct("<6B")
_struct_6s = struct.Struct("<6s")
