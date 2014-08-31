module RPNCalc
  # Application implementation takes care of starting
  #   the calculator and any special options.
  class Application
    def initialize(argv)
      @params   = parse_options(argv)
      @calculator  = RPNCalc::Calculator.new(@params)
    end

    def run
      @calculator.compute
    end

    def parse_options(_argv)
      params = {}
      parser = OptionParser.new

      # Options for the program can be added here

      params
    end
  end
end
