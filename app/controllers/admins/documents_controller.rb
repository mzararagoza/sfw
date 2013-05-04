class Admins::DocumentsController < AdminController
  expose(:documents){ Document.order("id DESC").scoped{} }
  expose(:document)

  def create
    if document.save
      flash[:notice] = t(:document_was_successfully_created)
      redirect_to(admins_documents_path)
    else
      render :new
    end
  end

  def update
    if document.save
      flash[:notice] = t(:document_was_successfully_updated)
      redirect_to(admins_documents_path)
    else
      render :edit
    end
  end

end

