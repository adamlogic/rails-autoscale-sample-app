class Req
  include ActiveModel::Model

  attr_accessor :latency, :strategy

  def initialize(*attributes)
    # Default values
    @latency = '1000'
    @strategy = Pause::SLEEP

    super
  end

  def save!
    Pause.pause_for milliseconds: latency.to_f, strategy: strategy
  end
end
