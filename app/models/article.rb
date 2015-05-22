class Article < ActiveRecord::Base

  has_many  :comments
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :text, presence: true

  attr_accessor :cover
    after_save :save_cover_image, if: :cover

    def save_cover_image
        filename = cover.original_filename
        folder = "public/articles/#{id}/cover"

        FileUtils::mkdir_p folder

        f = File.open File.join(folder, filename), "wb"
        f.write cover.read()
        f.close

        self.cover = nil
        update cover_filename: filename
    end
end
