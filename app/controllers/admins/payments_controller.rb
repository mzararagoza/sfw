class Admins::PaymentsController < AdminController
  expose(:payments){ Payment.order("id DESC").scoped{} }
  expose(:payment)
  expose(:girl){ 
    Girl.find(params[:format])
  }

  def create
    if payment.save
      flash[:notice] = t(:payment_was_successfully_created)
      redirect_to(admins_girl_path(payment.girl_id))
    else
      render :new
    end
  end

  def update
    if payment.save
      flash[:notice] = t(:payment_was_successfully_updated)
      redirect_to(admins_girl_path(payment.girl_id))
    else
      render :edit
    end
  end

end
