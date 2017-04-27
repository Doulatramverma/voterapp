class SettingsController < ApplicationController

	def new
    @setting = Setting.create(:start_time => Time.now, :end_time=> Time.now + 15.minutes)
     @setting.save
     redirect_to @setting
  end

  # if you're updating an existing object
  def edit
     @setting = Setting.find(params[:id])
     @setting.start_time = Time.now if @setting.start_time.nil?
  end
  
end


