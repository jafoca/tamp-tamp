class TampsController < ApplicationController
  # GET /tamps
  # GET /tamps.json
  def index
    @tamps = Tamp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tamps }
    end
  end

  # GET /tamps/1
  # GET /tamps/1.json
  def show
    @tamp = Tamp.find(params[:id])
    @measurements = @tamp.measurements

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tamp }
    end
  end

  # GET /tamps/new
  # GET /tamps/new.json
  def new
    @tamp = Tamp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tamp }
    end
  end

  # GET /tamps/1/edit
  def edit
    @tamp = Tamp.find(params[:id])
  end

  # POST /tamps
  # POST /tamps.json
  def create
    @tamp = Tamp.new(params[:tamp])

    respond_to do |format|
      if @tamp.save
        format.html { redirect_to @tamp, notice: 'Tamp was successfully created.' }
        format.json { render json: @tamp, status: :created, location: @tamp }
      else
        format.html { render action: "new" }
        format.json { render json: @tamp.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
    Tamp.import(params[:file])
    redirect_to tamps_path, notice: "Tamp imported."
  end

  # PUT /tamps/1
  # PUT /tamps/1.json
  def update
    @tamp = Tamp.find(params[:id])

    respond_to do |format|
      if @tamp.update_attributes(params[:tamp])
        format.html { redirect_to @tamp, notice: 'Tamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamps/1
  # DELETE /tamps/1.json
  def destroy
    @tamp = Tamp.find(params[:id])
    @tamp.destroy

    respond_to do |format|
      format.html { redirect_to tamps_url }
      format.json { head :no_content }
    end
  end
end
