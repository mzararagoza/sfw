class Admins::MessagesController < AdminController
  expose(:messages){ Message.order("id DESC").scoped{} }
  expose(:message)

  before_filter :send_text, :only => [:create]

  def create
    message.admin_id = current_admin.id
    if message.save
      flash[:notice] = t(:message_was_successfully_created)
      redirect_to(admins_dashboard_path)
    else
      render :new
    end
  end

  def update
    if message.save
      flash[:notice] = t(:message_was_successfully_updated)
      redirect_to(admins_dashboard_path)
    else
      render :edit
    end
  end

  private
  def send_text
    girls = Girl.where(:active => true)
    girls.each do |g|
      sms = Sms.new
      sms.send('9545922500', g.full_name + '(' + g.id.to_s  + ')' )
      #sms.send(g.phone, message.message )
    end
    Admin.where(:active => true).each do |a|
      sms = Sms.new
      sms.send(a.phone, message.message )

    end
  end
end

