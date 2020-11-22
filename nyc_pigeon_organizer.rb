def nyc_pigeon_organizer(data)
  # write your code here!
  
  final_results = data.each_with_object({}) do |(key, value), final_hash|
    
    value.each do |inner_key, names|
      names.each do |name|
        
        if !final_hash[name]
          final_hash[name] = {}
        end
        if !final_hash[name][key]
          final_hash[name][key] = []
        end
        final_hash[name][key] << (inner_key.to_s)
      end 
    end
  end
end 


  # data.each do |first_level, all_other|
  #   all_other.each do |category, array|
  #     array.each do |name|
  #       final[name] = {:color => [], :gender => [], :lives => []}
  #     end 
  #   end 
  # end 
  # x = final.keys
  # data[:color].each do |bird_color, name|
  #   name.each do |bird_name|
  #     x.each do |item|
  #       if bird_name === item
  #         final[item][:color] << bird_color.to_s
  #       end 
  #     end 
  #   end 
  # end 
  # data[:gender].each do |gender, type|
  #   type.each do |bird_name|
  #     x.each do |item|
  #       if bird_name === item
  #         final[item][:gender] << gender.to_s
  #       end 
  #     end 
  #   end 
  # end 
  # data[:lives].each do |location, name|
  #   name.each do |bird_name|
  #     x.each do |item|
  #       if bird_name === item
  #         final[item][:lives] << location
  #       end 
  #     end 
  #   end 
  # end 
  
  # return final 