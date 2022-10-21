class Stack
    attr_reader :stacks

    def initialize
      @stacks = []
    end

    def push(el)
      @stacks.push(el)
    end

    def pop
      @stacks.pop
    end

    def peek
      @stacks.last 
    end
end


def Queue

    attr_reader :stacks

    def initialize
      @stacks = []
    end

    def enqueue(el)
        @stacks.push(el)
    end


    def dequeue
        @stacks.shift(el)
    end


    def peek
        @stacks.first
    end

end


class Map

    attr_reader :stacks

    def initialize
        @stacks = []
    end

    def set(key, value)
        idx = @stacks.index { |pair| pair[0] == key}
        if idx
            @stacks[idx][1] = value
        else
            @stacks.push([key, value])
        end

    end

    def get(key)
        @stacks.each do { |pair| return pair[1] if pair[0] == key}
    end

    def delete(key)
        @stacks.reject! { |pair| pair[0] == key }   
    end

    def show
    end


end