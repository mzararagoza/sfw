class Admins::PaymentsController < AdminController
  expose(:payments){ Payment.order("id DESC").scoped{} }
  expose(:payment)

  def create
    if payment.save
      flash[:notice] = t(:payment_was_successfully_created)
      redirect_to(admins_payments_path)
    else
      render :new
    end
  end

  def update
    if payment.save
      flash[:notice] = t(:payment_was_successfully_updated)
      redirect_to(admins_payments_path)
    else
      render :edit
    end
  end

end
