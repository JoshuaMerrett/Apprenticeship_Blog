class ChangeBannerImageUrlName < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :banner_image_url, :image
  end
end
