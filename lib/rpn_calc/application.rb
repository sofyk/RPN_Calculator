module RPN_Calc
  class Application
    def initialize(argv)
      @params   = parse_options(argv)
      @calculator  = RPN_Calc::Calculator.new(@params)
    end

    def run
      @calculator.compute
    end

    def parse_options(argv)
      params = {}
      parser = OptionParser.new
      
      # I can add option for the program here
      
      params
    end
  end
end
