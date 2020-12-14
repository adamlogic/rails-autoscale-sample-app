class JobsController < ApplicationController
  before_action { @nav_current = :jobs }

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit!)
    @job.save!

    render layout: false
  end
end
