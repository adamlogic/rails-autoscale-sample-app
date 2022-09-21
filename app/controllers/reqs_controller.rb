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

  def headers
    render plain: request.headers.map { |(k,v)| [k, v.to_s[0..20]] }.sort.map { |(k,v)| "#{k}=#{v}" }.join("\n")
  end
end
