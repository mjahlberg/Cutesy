class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :breed
  # belongs_to :breed

  has_attached_file :avatar, 
              :storage => :s3,
              :bucket => 'cutesy',
              :path => "/image/:id/:filename",
              :s3_credentials => {
                :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
              },
              :styles => {
              :original => '1920x1680>',
              :small    => '100x100#',
              :medium   => '250x250',
              :large    => '500x500>'
              },
              :use_timestamp => false
              

  
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  


end



:storage => :s3,
    :bucket => 'mybucket',
    :path => "/image/:id/:filename",
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
