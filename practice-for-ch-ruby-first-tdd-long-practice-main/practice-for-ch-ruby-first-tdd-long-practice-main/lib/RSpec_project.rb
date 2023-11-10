def my_uniq(arr)
    arr.to_set.to_a
end

class Array
    def two_sum
        pairs_with_index = self.each_with_index.to_a.combination(2)
        values_with_index = pairs_with_index.select { |first, second| first[0] + second[0] == 0 }
        values_with_index.map { |first, second| [first[1], second[1]] }
    end

end

def my_transpose(arr)
    arr[0].zip(*arr[1..])
end

def stock_picker(arr)
    pairs_with_index = arr.each_with_index.to_a.combination(2)
    prices_with_index = pairs_with_index.max_by { |first, second|  second[0] - first[0] }
    prices_with_index.map { |price, i| i + 1 }
end

class Hanoi
    
    def initialize
        @stacks = Array.new(3) { [] }
    end

    def run
        while !won?
            puts @stacks # prints state of board
            puts "pick a pile to move from" # 1 of 3
            start_ind = gets.chomp
            puts "pick a pile to move to" # 1 of 2
            end_ind = gets.chomp
            move(start_ind, end_ind)
        end

        puts "u legened!"
    end

    def move(start_ind, end_ind)
        return unless start_ind.between?(0, 2) && end_ind.between?(0, 2)
        return if @stacks[start_ind].empty?

        grabbed_disk = @stacks[start_ind].last
        landing_disk = @stacks[end_ind].last || 420
        return if grabbed_disk > landing_disk

        @stacks[end_ind] << @stacks[start_ind].pop
    end

    def won?

    end


end

# sizes rep by nums ==> larger num is larger disk
# class Game
# deal with stacks ==> stacks are the subarrs
    # when to pop and shift 

# class
    # 3 subarrs
        #elems 123