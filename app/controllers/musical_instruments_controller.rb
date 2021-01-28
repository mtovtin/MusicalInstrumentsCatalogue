class MusicalInstrumentsController < ApplicationController
  before_action :categories, only: %i[index search]
    def index
      
      @manufacturer = params[:manufacturer]
        @musical_instruments = MusicalInstrument.all
        @count = @musical_instruments.count
     @musical_instruments = @musical_instruments.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
   end

 
    
   
      def show
        @musical_instrument = MusicalInstrument.find(params[:id])
        pagination
        respond_to do |format|
          format.js
          format.html
        end
      end
      def search
        @search = params[:search]
        @musical_instruments = MusicalInstrument.where("name LIKE '%#{params[:search]}%'").or(MusicalInstrument.where("description LIKE '%#{params[:search]}%'"))
        @count = @musical_instruments.count
        @musical_instruments = @musical_instruments.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
      end
      private

   def categories
     @categories ||= Category.all
      end
    end