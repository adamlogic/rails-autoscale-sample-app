class Job
  include ActiveModel::Model

  attr_accessor :queue, :latency, :strategy

  def initialize(*attributes)
    # Default values
    @queue = 'default'
    @latency = '1000'
    @strategy = Pause::SLEEP

    super
  end

  def save!
    LoadedJob.set(queue: queue).perform_later latency: latency, strategy: strategy
  end
end
