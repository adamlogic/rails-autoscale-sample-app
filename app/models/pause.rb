class Pause
  STRATEGIES = [SLEEP = "sleep", SPLIT = "split", CPU = "cpu"]

  def self.pause_for(milliseconds:, strategy:, randomize: false)
    milliseconds *= rand if randomize

    case strategy
    when SPLIT
      pause_with_all milliseconds
    when SLEEP
      pause_with_sleep milliseconds
    when CPU
      pause_with_cpu milliseconds
    else
      raise "Unexpected strategy: #{strategy}"
    end
  end

  private

  def self.pause_with_sleep(milliseconds)
    sleep milliseconds / 1000.0
  end

  def self.pause_with_cpu(milliseconds)
    # Break the work into chunks to simulate real work, allowing the scheduler to
    # switch to other threads.
    (milliseconds.to_i / 100).times do
      start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

      # Work for 100ms
      end_time = start_time + 0.1
      1000**100_000 while Process.clock_gettime(Process::CLOCK_MONOTONIC) < end_time
    end
  end

  def self.pause_with_all(milliseconds)
    # Split the duration into 10 equal parts, then alternate between strategies
    milliseconds /= 10
    5.times do
      pause_with_sleep milliseconds
      pause_with_cpu milliseconds
    end
  end
end
