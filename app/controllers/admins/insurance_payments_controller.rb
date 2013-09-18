class Admins::InsurancePaymentsController < AdminController
  expose(:insurance_payments){ InsurancePayment.order("id DESC").scoped{} }
  expose(:insurance_payment)

  def create
    if insurance_payment.save
      flash[:notice] = t(:insurance_payment_was_successfully_created)
      redirect_to(admins_insurance_payments_path)
    else
      render :new
    end
  end

  def update
    if insurance_payment.save
      flash[:notice] = t(:insurance_payment_was_successfully_updated)
      redirect_to(admins_insurance_payments_path)
    else
      render :edit
    end
  end

end

