class TimelinesController < ApplicationController
  respond_to :json
  
  def show
    respond_with Twitter.user_timeline('ciklum')
  end
end
