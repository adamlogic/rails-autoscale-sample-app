module ApplicationHelper
  def latency_opts
    {
      100 => '100 ms',
      1000 => '1 sec',
      10_000 => '10 sec',
      20_000 => '20 sec',
      30_000 => '30 sec',
      60_000 => '1 min',
    }
  end

  def strategy_opts
    {
      Pause::SLEEP => 'Sleep only',
      Pause::SPLIT => '50% Sleep / 50% CPU',
      Pause::CPU => 'CPU only',
    }
  end

  def queue_opts
    { default: 'Default', urgent: 'Urgent' }
  end
end
