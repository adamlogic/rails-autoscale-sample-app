class Req
  include ActiveModel::Model

  attr_accessor :latency, :strategy, :randomize

  def initialize(*attributes)
    # Default values
    @latency = '1000'
    @strategy = Pause::SLEEP
    @randomize = false

    super
  end

  def save!
    Pause.pause_for(
      milliseconds: latency.to_f,
      strategy: strategy,
      randomize: randomize.to_s == 'true',
    )
  end
end
