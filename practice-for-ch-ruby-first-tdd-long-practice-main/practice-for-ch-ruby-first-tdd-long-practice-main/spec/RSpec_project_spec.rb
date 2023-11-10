gem 'rspec'
require 'RSpec_project'

describe "#my_uniq" do
    it "removes duplicates from an array" do
        expect(my_uniq([1, 2, 1, 3, 3])).to match_array([1, 2, 3])
    end
end

describe "#two_sum" do
    it "finds all pairs of positions where the
    elements at those positions sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to match_array([[0, 4], [2, 3]])
    end
end

describe "#my_transpose" do
    it "swaps rows and columns views" do
        expect(my_transpose([
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ])).to match_array([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]])
    end
end

describe "#stock_picker" do
    it "finds the most profitable pair of days on which to buy and sell the stock" do 
        expect(stock_picker([10, 5, 10, 20, 5])).to match_array([2, 4])
    end
end

# describe "#"

# sizes rep by nums ==> larger num is larger disk
# class Game
# deal with stacks ==> stacks are the subarrs
    # when to pop and shift 