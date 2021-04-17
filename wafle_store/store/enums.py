from enum import Enum

#Enums
class OrderStatus(Enum):

  DRAFT = "DRAFT"
  PROCESSING = "PROCESSING"
  COMPLETE = "COMPLETE"
  CANCELED = "CANCELED"

  @classmethod
  def choices(cls):
      return tuple((i.name, i.value) for i in cls)