class Req
  include ActiveModel::Model

  attr_accessor :latency

  def initialize(*attributes)
    # Default values
    @latency = '1000'

    super
  end

  def save!
    sleep latency.to_f / 1000
  end
end
