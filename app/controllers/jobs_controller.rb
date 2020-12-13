class JobsController < ApplicationController
  before_action { @nav_current = 'Worker load' }

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit!)
    @job.save!

    render layout: false
  end
end
