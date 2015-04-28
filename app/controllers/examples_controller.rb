class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]

  # GET /examples
  def index
    @examples = Example.all
    @attachments = Attachment.all
  end

  # GET /examples/1
  def show
    @attachments = Attachment.all
  end

  # GET /examples/new
  def new
    @example = Example.new
  end

  # GET /examples/1/edit
  def edit
  end

  # POST /examples
  def create
    @example = Example.new(example_params)

#    if params[:example][:data]
#      t.filedata  = params[:example][:data].read
#      t.filename  = params[:example][:data].original_filename
#      t.mime_type = params[:example][:data].content_type
#    end

    if @example.save
      redirect_to @example, notice: 'Example was successfully created.'
    else
      render :new
    end
  end

#  def create
#    @item = Item.new
#    @item.file = params[:item][:file]
#    if @item.save
#      redirect_to @item
#    else
#      render 'new'
#    end
#  end

#  def download
#    @example = Examples.find(params[:id])
#    send_data @example.filedata, filename: @example.filename, type: @example.mime_type, disposition: 'attachment'
#  end

  # PATCH/PUT /examples/1
  def update
#    if params[:example][:data]
#      t.filedata  = params[:example][:data].read
#      t.filename  = params[:example][:data].original_filename
#      t.mime_type = params[:example][:data].content_type
#    end

    if @example.update(example_params)
      redirect_to @example, notice: 'Example was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /examples/1
  def destroy
    @example.destroy
    redirect_to examples_url, notice: 'Example was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_example
    @example = Example.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def example_params
    params.require(:example).permit(:description, :recommendation_id)
  end
end
