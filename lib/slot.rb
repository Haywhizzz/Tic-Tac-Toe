# [[1,2,3],
#  [4,5,6],
#  [7,8,9]]
#  [[1,2,3], [4,5,6], [7,8,9]].flatten == [1,2,3,4,5,6,7,8,9].map(&:value)
#  [[1,2,3], [4,5,6], [7,8,9]] + [[1,2,3], [4,5,6], [7,8,9]].transpose [[1,4,7], [2,5,8], [3,6,9]]
class Slot
  attr_accessor :value
  @@count = 1
  def initialize
    @value = @@count
    @@count += 1
  end
  end
