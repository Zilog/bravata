class Admin::PartecipantiController < ApplicationController
  
 before_filter :login_required   
  
  
  # GET /admin/partecipanti
  # GET /admin/partecipanti.xml
  def index
    @partecipanti = Partecipante.all

    respond_to do |format|
      format.html {render :layout => 'admin' } # index.html.erb 
      format.xml  { render :xml => @partecipanti }
      format.xls

    end
  end

  # GET /admin/partecipanti/1
  # GET /admin/partecipanti/1.xml
  def show
    @partecipante = Partecipante.find(params[:id])

    respond_to do |format|
      format.html {render :layout => 'admin' }# show.html.erb
      format.xml  { render :xml => @partecipante }
    end
  end

  # GET /admin/partecipanti/new
  # GET /admin/partecipanti/new.xml
  def new
    @partecipante = Partecipante.new

    respond_to do |format|
      format.html {render :layout => 'admin' }# new.html.erb
      format.xml  { render :xml => @partecipante }
    end
  end

  # GET /admin/partecipanti/1/edit
  def edit
    @partecipante = Partecipante.find(params[:id])
  end

  # POST /admin/partecipanti
  # POST /admin/partecipanti.xml
  def create
    @partecipante = Partecipante.new(params[:partecipante])

    respond_to do |format|
      if @partecipante.save
        flash[:notice] = 'Partecipante was successfully created.'
        format.html { redirect_to admin_partecipante_path(@partecipante) }
        format.xml  { render :xml => @partecipante, :status => :created, :location => @partecipante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @partecipante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/partecipanti/1
  # PUT /admin/partecipanti/1.xml
  def update
    @partecipante = Partecipante.find(params[:id])

    respond_to do |format|
      if @partecipante.update_attributes(params[:partecipante])
        flash[:notice] = 'Partecipante was successfully updated.'
        format.html { redirect_to admin_partecipante_path(@partecipante) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @partecipante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/partecipanti/1
  # DELETE /admin/partecipanti/1.xml
  def destroy
    @partecipante = Partecipante.find(params[:id])
    @partecipante.destroy

    respond_to do |format|
      format.html { redirect_to(admin_partecipanti_path) }
      format.xml  { head :ok }
    end
  end
end
