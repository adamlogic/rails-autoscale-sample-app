class LoadedJob < ApplicationJob
  def perform(latency:)
    sleep latency.to_f / 1000
  end
end
