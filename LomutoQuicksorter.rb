class LomutoQuicksorter
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    pivot = array.length - 1

    while pivot > 0
      partiton_sort(pivot)
      pivot -= 1
    end

    array
  end

  private

  def partiton_sort(high)
    for i in 0..high
      if array[i] >= array[high]
        array[i], array[high] = array[high], array[i]
      end
    end
  end
end