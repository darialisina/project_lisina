class Image < ApplicationRecord
    belongs_to :theme
    scope :theme_images, -> (theme_id) { 
        select('id','name','file','ave_value').where(theme_id: theme_id)
         }   

         scope :theme_images, -> (theme_id) { select('id','name','file','ave_value').where(theme_id: theme_id) }

         # find image by id
         scope :find_image, -> (image_id) { find(image_id) }
       
         # calc ave_value and update to Image (image_id, ave_value)
         def self.update_ave_value(image_id, ave_value)
           image = find(image_id)
           image.update(ave_value: ave_value)
         end
       
         # Refactored method - transferred from work_image.rb module
         def self.show_valued_image(new_value_data)
           image_id = new_value_data[:image_id]
           theme_id = new_value_data[:theme_id]
           current_user_id = new_value_data[:user_id]
           user_valued, value = Value.user_valued_exists(current_user_id, image_id) # 1/0 ?
           values_qty = Value.all.count.round
       
           common_ave_value = user_valued == 1 ? find(image_id).ave_value.round : 0
       
           data = {
             values_qty: values_qty,
             current_user_id: current_user_id,
             theme_id: theme_id,
             image_id: image_id,
             user_valued: user_valued,
             value: value,
             common_ave_value: common_ave_value
           }
           # logger.info "In show_image:  data = #{data.inspect} "
           data
         end
       
       
         def self.value_and_update(new_value_data)
           image_id = new_value_data[:image_id]
           Value.create(new_value_data)
           ave_value = Value.calc_average_value(image_id).round
           # puts "in value_and_update: image_id = #{image_id}, ave_value = #{ave_value} \n"
           update_ave_value(image_id, ave_value)
           
           show_valued_image(new_value_data)
         end
end
