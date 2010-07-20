class PartecipantiController < ApplicationController
  # GET /partecipanti
  # GET /partecipanti.xml
  def index
    @partecipanti = Partecipante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @partecipanti }
    end
  end

  # GET /partecipanti/1
  # GET /partecipanti/1.xml
  def show
    @partecipante = Partecipante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @partecipante }
    end
  end

  # GET /partecipanti/new
  # GET /partecipanti/new.xml
  def new
    @partecipante = Partecipante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @partecipante }
    end
  end



  # POST /partecipanti
  # POST /partecipanti.xml
  def create
    @partecipante = Partecipante.new(params[:partecipante])

    respond_to do |format|
      if @partecipante.save
        flash[:notice] = 'Partecipante was successfully created.'
        format.html { redirect_to partecipanti_path }
        format.xml  { render :xml => @partecipante, :status => :created, :location => @partecipante }
      else
        @offroad = (params[:partecipante][:offroad].to_i == 1)
        @adulti = params[:partecipante][:adulti].to_i 
        @bambini = params[:partecipante][:bambini].to_i 
        format.html { render :action => "new" }
        format.xml  { render :xml => @partecipante.errors, :status => :unprocessable_entity }
      end
    end
  end




end
