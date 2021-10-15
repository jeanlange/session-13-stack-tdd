require 'stack'

describe Stack do
    # don't do this to share setup across tests!
    # my_stack = Stack.new

    let(:my_stack) { Stack.new }

    it "new stacks are empty" do
        # given - what is the initial state
        # when - do the thing
        stack_emptiness = my_stack.empty?
        # then - check the thing
        expect(stack_emptiness).to be_truthy
    end

    it "can put something into the stack" do
        my_stack.push("walk the dog")
        # then - it doesn't fail
    end

    it "stacks with stuff in them aren't empty" do
        my_stack.push("walk the dog")

        stack_emptiness = my_stack.empty?

        expect(stack_emptiness).to be false
    end

    it "can pop the top thing" do
        my_stack.push("brush my teeth")
        my_stack.push("walk the cat")

        popped_thing = my_stack.pop 

        # the thing I popped should be... a cat
        expect(popped_thing).to eql "walk the cat"
    end

    it "can pop all the things" do
        my_stack.push("a thing")
        my_stack.pop
        expect(my_stack).to be_empty
    end

    it "pops nil off of an empty stack" do
        totally_new_stack = Stack.new
        popped_thing = totally_new_stack.pop
        expect(popped_thing).to be nil
    end
end
