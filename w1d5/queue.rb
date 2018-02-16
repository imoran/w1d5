class MyQueue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.unshift(el)
  end

  def dequeue
    queue.pop
    show
  end

  def show
    queue.dup
  end
end
