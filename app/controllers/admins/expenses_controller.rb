class Admins::ExpensesController < AdminController
  expose(:expenses){ Expense.order("id DESC").scoped{} }
  expose(:expense)
  expose(:vendor){ 
    Vendor.find(params[:format])
  }

  def create
    expense.admin_id = current_admin.id
    if expense.save
      flash[:notice] = t(:expense_was_successfully_created)
      redirect_to(admins_vendor_path(expense.vendor_id))
    else
      render :new
    end
  end

  def update
    if expense.save
      flash[:notice] = t(:expense_was_successfully_updated)
      redirect_to(admins_vendor_path(expense.vendor_id))
    else
      render :edit
    end
  end

end



