module Accounting
  class Session
    def initialize(output)
      @output = output
    end
    def start
      @output.puts "Welcome to Accounting"
      @output.puts "Enter command or type help >>"
    end

    def execute(command)
      #@action, @object = command.split
    end
  end
end
