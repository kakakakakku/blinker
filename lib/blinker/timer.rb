require 'blink1'

module Blinker
  class Timer

    GREEN = [0, 255, 0].freeze
    RED = [255, 0, 0].freeze
    YELLOW = [255, 255, 0].freeze
    COUNTDOWN_SECONDS = 10.freeze

    def initialize(total_min = 5, spurt_min = 1)
      @total_sec = total_min.to_i * 60
      @spurt_sec = spurt_min.to_i * 60
      @blink1 = Blink1.new
      @blink1.open
    end

    def start
      in_progress
      last_spurt
      countdown
      finish
    end

    private

    def in_progress
      @blink1.fade_to_rgb(300, *GREEN)
      sleep @total_sec - @spurt_sec
    end

    def last_spurt
      @blink1.fade_to_rgb(300, *YELLOW)
      sleep (@spurt_sec - COUNTDOWN_SECONDS)
    end

    def countdown
      @blink1.blink(*RED, COUNTDOWN_SECONDS)
    end

    def finish
      @blink1.off
      @blink1.close
    end

  end

end
