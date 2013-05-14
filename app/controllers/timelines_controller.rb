class TimelinesController < ApplicationController
  respond_to :json
  
  def show
    if (id = params[:older_than].to_i) > 0
      t = Twitter.user_timeline 'ciklum', max_id: id - 1
    else
      t = Twitter.user_timeline 'ciklum'
    end
    respond_with t
  end
end
