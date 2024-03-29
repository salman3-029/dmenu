collection @categories.category_dirty, :object_root => false
attributes :id, :name, :created_at, :updated_at

node(:image) { |category| @base_url + category.image.url unless category.image.url.nil? }

child :dirty_menus, :object_root => false do
  attributes :id, :name, :price, :description, :category_id, :created_at, :updated_at, :approved

  child :menu_images, :root => "images", :object_root => false do
    attributes :id, :created_at, :updated_at
    
    menu_image = "url"

    node menu_image do |m|
      @base_url + m.image.url unless m.image.url.nil?
    end
  end
end