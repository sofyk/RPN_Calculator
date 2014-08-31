module RPN_Calc
  class Calculator
    def initialize(params)
      # I can set special functionality based on 'params' passed by the parser
      
      @@num_list = Array.new
    end

    def compute()
      puts "Enter 'q' to quit."
      loop do
        print "> "
        expr = STDIN.gets.chomp
        break if expr === "q"
        case expr
        when "clr"
          @@num_list.clear
        when "+"
          add
        when "-"
          sub
        when "*"
          mult
        when "/"
          div
        else
          if is_num?(expr)
            @@num_list.push(Float(expr))
          else
            puts "ERROR: #{expr} is not a valid operation. Could not compute."
          end
        end
        if @@num_list.empty? === false
          puts @@num_list.last
        end        
      end
    end

    private
    
    def is_num?(str)
      !!Float(str) rescue false
    end
    
    def add ()
      if check_size(2)
        num = get_front_num
        @@num_list[-1] += num
      end
    end
    
    def sub ()
      if check_size(2)
        num = get_front_num
        @@num_list[-1] -= num
      end
    end
    
    def mult ()
      if check_size(2)
        num = get_front_num
        @@num_list[-1] *= num
      end
    end
    
    def div()
      if check_size(2)
        num = get_front_num
        @@num_list[-1] /= num
      end
    end
    
    def check_size(min_size)
      if @@num_list.size >= min_size
        true
      else
        puts "ERROR: Not enough numbers in the stack for operation."
      end
    end
    
    def get_front_num()
      num = @@num_list.last
      @@num_list.pop
      num
    end
  end
end
