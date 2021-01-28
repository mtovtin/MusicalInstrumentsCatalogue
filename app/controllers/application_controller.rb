class ApplicationController < ActionController::Base
    $PER_PAGE = 12

   private
   def musical_instruments
    @musical_instruments ||= MusicalInstrument.all
  end

  def search
    @search = params[:search]
    @musical_instruments = musical_instruments.where("name LIKE '%#{params[:search]}%'").or(musical_instruments.where("description LIKE '%#{params[:search]}%'"))
  end

  def pagination
    @count = musical_instruments.count
    @musical_instruments= musical_instruments.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
  end

   def page
    @page ||= (params[:page] || 1).to_i
   end
end
