# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0
            return nil
        end
        largest = self[0]
        smallest = self[0]
        self.each do |ele|
            if ele > largest
                largest = ele
            elsif smallest > ele
                smallest = ele
            end
        end

        ans = largest - smallest
    end

    def average
        if self.length == 0
            return nil
        end

        sum = self.sum / (self.length*1.0)
    end

    def median
        if self.length == 0
            return nil
        end

        arr = self.sort
        mid = self.length / 2

        if self.length % 2 != 0
            return arr[mid]
        else
            return ans = (arr[(self.length/2)] + arr[(self.length/2) - 1]) / 2.0
        end
    end

    def counts
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(value)
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end

        hash[value]
    end

    def my_index(value)
        self.each.with_index do |ele, i|
            if ele == value
                return i
            end
        end
        return nil
    end

    def my_uniq
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end

        ans = []
        hash.each do |k, v|
            ans << k
        end
        ans
    end

    def my_transpose
        new_array = self.flatten
        hash = Hash.new {|h, k| h[k] = []}
        arr_num = self.length

        (1..new_array.length).each do |i|
            hash[i % arr_num] << new_array[i-1]
        end

        ans = []
        hash.each do |k, v|
            ans << v
        end

        ans
    end
end
