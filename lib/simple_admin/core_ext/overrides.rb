module SimpleAdmin
  class Overrides
    def self.init!
      ApplicationRecord.class_eval do
        def get_field(field_name)
          public_send(field_name)
        end

        def get_image_field(field_name)
          public_send("#{field_name}_url", :admin_thumb)
        end
      end

      TrueClass.class_eval do
        def humanize
          :Yes
        end
      end

      FalseClass.class_eval do
        def humanize
          :No
        end
      end

    end
  end
end
