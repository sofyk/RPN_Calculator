module RPNCalc
  # Implemintation of calculator functionality
  class Calculator
    def initialize(_params)
      # I can set special functionality based on 'params' passed by the parser
    end

    def compute
      puts "Enter 'q' to quit."
      loop do
        print '> '
        expr = STDIN.gets.chomp
        break if expr == 'q'
        case expr
        when 'clr'
          num_list.clear
        when '+'
          addition
        when '-'
          subtraction
        when '*'
          multiplication
        when '/'
          division
        else
          num_list.push(Float(expr)) if num?(expr)
        end
        puts num_list.last unless num_list.empty?
      end
    end

    private

    def num_list
      @num_list ||= []
    end

    def num?(str)
      if (Float(str) rescue false)
        true
      else
        puts "ERROR: #{str} is not a valid expression. Could not compute."
        false
      end
    end

    def addition
      return unless check_size(2)
      num = old_front_num
      num_list[-1] += num
    end

    def subtraction
      return unless check_size(2)
      num = old_front_num
      num_list[-1] -= num
    end

    def multiplication
      return unless check_size(2)
      num = old_front_num
      num_list[-1] *= num
    end

    def division
      return unless check_size(2)
      num = old_front_num
      num_list[-1] /= num
    end

    def check_size(min_size)
      if num_list.size >= min_size
        true
      else
        puts 'ERROR: Not enough numbers in the stack for operation.'
      end
    end

    def old_front_num
      num = num_list.last
      num_list.pop
      num
    end
  end
end
