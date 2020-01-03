module ApplicationHelper

    def app_name
        "Photolicious"
    end

    def back_to_photos_list
        link_to("<< Back to Photos", photos_path)
    end

    def back_to(item_path)
        link_to("Cancel", item_path)
    end

    def copyright
      dev = {
        :name => "Dut A.",
        :url => "https://www.dutad.com"
      }
      # "#{Time.now.year} . Made with '&#10084;' by " + link_to("#{dev[:name]}", "#{dev[:url]}") + " | All rights reserved."
      "#{Time.now.year} #{dev[:name]} | All rights reserved."
    end

end
