require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    return nil if n < 1

    last = head
    i = head

    n.times do
      return nil if last == nil
      last = last.next_node
    end

    while last != nil
      i = i.next_node
      last = last.next_node
    end
    i.value
  end

end
