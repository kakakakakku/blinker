require 'blinker'
require 'blinker/timer'
require 'thor'

module Blinker
  class CLI < Thor
    desc 'start 5 1', 'notify presentation status for you.'
    def start(*option)
      timer = Blinker::Timer.new(*option)
      timer.start
    end
  end
end
