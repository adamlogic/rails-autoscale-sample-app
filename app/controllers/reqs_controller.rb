class ReqsController < ApplicationController
  before_action { @nav_current = :reqs }

  def new
    @req = Req.new
  end

  def create
    @req = Req.new(params.require(:req).permit!)
    @req.save!

    # render layout: false
    head :ok
  end
end
