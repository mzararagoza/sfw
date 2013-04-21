class Admins::NotesController < AdminController
  expose(:notes){ Note.order("id DESC").scoped{} }
  expose(:note)
  expose(:girl){ 
    if params[:format] 
      girl = Girl.find(params[:format])
    else
      girl = payment.girl.id
    end
    girl
  }

  def create
    note.admin_id = current_admin.id
    if note.save
      flash[:notice] = t(:note_was_successfully_created)
      redirect_to(admins_girl_path(note.girl_id))
    else
      render :new
    end
  end

  def update
    if note.save
      flash[:notice] = t(:note_was_successfully_updated)
      redirect_to(admins_girl_path(note.girl_id))
    else
      render :edit
    end
  end

end


