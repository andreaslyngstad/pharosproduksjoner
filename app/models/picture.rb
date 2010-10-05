class Picture < Asset

  # === List of columns ===
  #   id                : integer 
  #   data_file_name    : string 
  #   data_content_type : string 
  #   data_file_size    : integer 
  #   assetable_id      : integer 
  #   assetable_type    : string 
  #   type              : string 
  #   locale            : integer 
  #   user_id           : integer 
  #   created_at        : datetime 
  #   updated_at        : datetime 
  # =======================

  
  has_attached_file :data,
                    :url  => "/system/pictures/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/system/pictures/:id/:style_:basename.:extension",
	                  :styles => { :thumb => '200x200' }
	
	validates_attachment_size :data, :less_than=>2.megabytes
end
