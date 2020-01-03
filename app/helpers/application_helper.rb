module ApplicationHelper
    def back_to_photos_list
        link_to("<< Back to Photos", photos_path)
    end

    def back_to(item_path)
        link_to("Cancel", item_path)
    end

    def copyright
        "#{Time.now.year} Dut A. | All rights reserved."
    end

end
