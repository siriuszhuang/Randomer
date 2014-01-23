require "randomer/version"

module Randomer
  class Ranger
    class << self
      ##
      # 一个范围内随机获取一个值
      #
      # [params] * Mixed range Range or Array
      #
      def rand_in(list, *args)
        list = list.to_a if list.is_a? Range
        return nil unless list.is_a? Array

        count = list.count
        index = get_rand_index count
        return list[index]
      end

      ##
      # 获取一个随机字符串
      #
      # [params] * Integer length
      #
      def randmon_string(length = 1, *args)
        return '' unless length.is_a? Integer

        all_chars = {
          :upper  => 'A'..'Z',
          :lower  => 'a'..'z',
          :symbol => '!'..'/',
          :number => '0'..'9',
        }
        letter = []
        args.each do |arg|
          if all_chars.keys.include? arg
            letter += all_chars[arg].to_a
            all_chars.delete arg
          end
        end
        letter = all_chars[:lower].to_a if letter.count <= 0

        string = ''
        count = letter.count
        length.times do
          index = get_rand_index count
          string += letter[index]
        end
        string
      end

      private

      def get_rand_index(count, *args)
        return rand(count)
      end
    end
  end

  class Percent
    class << self
      ##
      # 根据一个hash中value指定的权重随机获取一个Symbol或String
      #
      # [params] Hash hash
      #
      # [return] Symbol key
      #
      # [usage]
      #   Randomer::Percent.pick_one({
      #     :a => 60,
      #     :b => 400,
      #   })
      #
      def pick_one(hash)
        sum_value = 0
        interval  = []
        keys      = []
        hash.each do |key, value|
          return false unless key.is_a? Symbol or key.is_a? String or key.is_a? Integer
          return false unless value.is_a? Integer

          interval << (sum_value...(sum_value += value))
          keys     << key
        end
        return false if sum_value <= 0

        count = interval.count
        rand_result = rand sum_value
        interval.each_with_index do |range, index|
          return keys[index] if range.include? rand_result
        end
      end
    end
  end
end
