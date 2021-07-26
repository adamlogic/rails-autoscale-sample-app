class LoadedJob < ApplicationJob
  def perform(latency:, strategy:)
    Pause.pause_for milliseconds: latency.to_f, strategy: strategy
  end
end
