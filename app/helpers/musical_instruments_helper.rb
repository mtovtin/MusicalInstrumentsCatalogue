module MusicalInstrumentsHelper
    def musical_instrument_image(image, width: 200, height: 200)
        image_tag (image.attached? ? image : '/nfd.jpg'), width: width, height: height, class: 'image'
      end

      def musical_instrument_imaage(image, width: 450, height: 500)
        image_tag (image.attached? ? image : '/nfd.jpg'), width: width, height: height, class: 'image'
      end
end
