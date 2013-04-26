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
      if command == "new Account"
        @output.puts "Enter the new Account name: "
      end
    end
  end
end
