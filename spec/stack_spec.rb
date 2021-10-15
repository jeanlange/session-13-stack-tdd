require 'stack'

describe Stack do
    it "can do rspec" do
        expect([]).to be_truthy
    end

    it "new stacks are empty" do
        # given - what is the initial state
        my_stack = Stack.new
        # when - do the thing
        stack_emptiness = my_stack.empty?
        # then - check the thing
        expect(stack_emptiness).to be_truthy
    end

    it "can put something into the stack" do
        my_stack = Stack.new
        my_stack.push("walk the dog")
        # then - it doesn't fail
    end

    it "stacks with stuff in them aren't empty" do
        my_stack = Stack.new
        my_stack.push("walk the dog")

        stack_emptiness = my_stack.empty?

        expect(stack_emptiness).to be false
    end
end
