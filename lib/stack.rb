class Stack
    # this runs every time we do Stack.new
    # "constructor"
    def initialize
        # something to store the things we put in...
        @storage = []
    end

    def empty?
        @storage.empty?
    end

    def push a_thing
        # store it in @storage
        @storage << a_thing
    end

    def pop
        # return the 'top thing' on the stack
        @storage.delete_at(-1)
    end
end
