class Job
  include ActiveModel::Model

  attr_accessor :queue, :latency

  def initialize(*attributes)
    # Default values
    @queue = 'default'
    @latency = '100'

    super
  end

  def save!
    LoadedJob.set(queue: queue).perform_later latency: latency
  end
end
