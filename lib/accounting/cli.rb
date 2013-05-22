module Accounting
  class CLI
    def initialize(input = STDIN, output = STDOUT)
      @input = input
      @output = output
    end
    def start
      @output.puts "Welcome to Accounting"
      @output.puts "Enter command or type help >>"
    end

    def execute(command)
      action, object = command.split
      klass = get_class(object)
    end
  end
end
