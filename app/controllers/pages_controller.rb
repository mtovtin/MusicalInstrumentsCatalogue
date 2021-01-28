class PagesController < ApplicationController
  def index
    @musical_instruments = MusicalInstrument.limit(6).with_attached_image.includes(:categories)
  end
end
