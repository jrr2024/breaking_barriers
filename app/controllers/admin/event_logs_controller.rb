# frozen_string_literal: true

class Admin::EventLogsController < ApplicationController
  def index
    @event_logs = EventLog.all
  end

  def confirm_participation
    # safe navigation: continue if event_log_attributes present

    event_log = EventLog.find(params[:id])
    event_log.update!(confirmed: true)
    puts params[:participating]
    puts "\n"

    if (params[:participating] == "true")
      puts "FUCK"
      event_log.update!(participating: true)
      EventConfirmationMailer.with(user: event_log.user,
                                   event: event_log.event
                                  ).confirmation_email.deliver_later
    else
      EventConfirmationDenyMailer.with(user: event_log.user,
                                       event: event_log.event
                                      ).confirmation_email.deliver_later
    end
    redirect_to(admin_event_path(event_log.event))
  end

  private

  # Only allow a list of trusted parameters through.
  def event_log_params
    params.require(:event_log).permit(:id, :hourlog_id, :user_id, :event_id, :hours, :participating)
  end
end
