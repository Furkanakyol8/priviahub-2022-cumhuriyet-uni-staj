class ActiveStorage::Service
    def upload(key, io, checksum: nil)
        raise NotImplementError
    end
    def download(key)
        raise NotImplementError 
    end
end


local:
  service: Disk
  root: <%= Rails.root.join('storage') 


amazon:
  service: S3
  access_key_id: ""
  secret_access_key: ""
  region: ""
  bucket: ""

 
s3_west_coast:
  service: S3
  access_key_id: ""
  secret_access_key: ""
  ...

s3_east_coast:
  service: S3
  access_key_id: ""
  secret_access_key: ""
  ...

production:
  service: Mirror
  primary: s3_east_coast
  mirrors:
    - s3_west_coast


create_table :active_storage_blobs do |t|
        t.string   :key,        null: false
        t.string   :filename,   null: false
        t.string   :content_type
        t.text     :metadata
        t.bigint   :byte_size,  null: false
        t.string   :checksum,   null: false
        t.datetime :created_at, null: false
      
        t.index [ :key ], unique: true
end  


create_table :active_storage_attachments do |t|
    t.string     :name,     null: false
    t.references :record,   null: false, polymorphic: true, index: false
    t.references :blob,     null: false
    t.datetime :created_at, null: false
  
    t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
  end


  class Phone < ApplicationRecord
    has_one_attached :image
  end
  
  # strong_parameters
  params.require(:phone).permit(:name, :image)


  class Phone < ApplicationRecord
    has_many_attached :images
  end
  
  # strong_parameters
  params.require(:phone).permit(:name, images: [])


  


