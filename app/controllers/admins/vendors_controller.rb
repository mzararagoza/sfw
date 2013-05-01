class Admins::VendorsController < AdminController
  expose(:vendors){ Vendor.order("id DESC").scoped{} }
  expose(:vendor)
  expose(:expenses) { Expense}

  def create
    if vendor.save
      flash[:notice] = t(:vendor_was_successfully_created)
      redirect_to(admins_vendors_path)
    else
      render :new
    end
  end

  def update
    if vendor.save
      flash[:notice] = t(:vendor_was_successfully_updated)
      redirect_to(admins_vendors_path)
    else
      render :edit
    end
  end

end


