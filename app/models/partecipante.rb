class Partecipante < ActiveRecord::Base
  
  validates_presence_of :nome, :cognome, :mail, :telefono, :adulti , :message => "non puo' essere vuoto"
  validates_presence_of :targa, :modello_anno ,:if => :in_fuoristrada? ,:message => "non puo' essere vuoto"
  validates_numericality_of :adulti, :bambini, :only_integer => true, :message => "solo numeri interi" 
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "non valida"
  validates_length_of :nome, :cognome, :within => 3..20, :too_long => "inserire al massimo 20 caratteri", :too_short => "inserire almeno 3 caratteri"
  
  
  def in_fuoristrada?
    offroad == true
  end
end
