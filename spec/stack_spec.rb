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
end
