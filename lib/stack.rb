class Stack
    def push item
        temp = @root
        @root = Node.new
        @root.value = item
        @root.next = temp
    end

    def pop
        return nil if @root.nil?
        temp = @root.value # save the 'top' value
        @root = @root.next # move what the root is pointing to
        return temp # return the 'top' value
    end

    def empty?
        @root == nil
    end

    def initialize
        @root = nil
    end
end

class Node
    attr_accessor :value
    attr_accessor :next
end
