class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :allow_user, only: [:new, :create, :edit, :update, :destroy]

  # GET /attachments
  # GET /attachments.json
  def index
    @attachments = Attachment.all
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
  end

  def serve
    @attachment = Attachment.find(params[:id])
    send_data @attachment.filedata, filename: @attachment.filename, type: @attachment.mime_type, disposition: 'inline'
  end
  
  def download
    @attachment = Attachment.find(params[:id])
    send_data @attachment.filedata, filename: @attachment.filename, type: @attachment.mime_type, disposition: 'attachment'
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
    @attachment.example_id = params[:example_id]
  end

# # GET /attachments/1/edit
# def edit
# end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(attachment_params[:attachment]) do |t|
      if attachment_params[:filedata]
        t.filedata  = attachment_params[:filedata].read
        t.filename  = attachment_params[:filedata].original_filename
        t.mime_type = attachment_params[:filedata].content_type
        t.example_id = attachment_params[:example_id]
      end
    end

    if @attachment.save
      format.html { redirect_to @attachment, notice: 'Attachment was successfully created.' }
    else
      format.html { render :new }
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment.destroy
    format.html { redirect_to '/examples', notice: 'Attachment was successfully destroyed.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
#      params.require(:attachment).permit(:filename, :filedata, :mime_type, :example_id, :tempfile)
      params.require(:attachment).permit(:filename, :filedata, :mime_type, :example_id)
    end
end





