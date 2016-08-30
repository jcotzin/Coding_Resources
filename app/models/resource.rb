class Resource < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :reviews

  def show_image
    LinkThumbnailer.generate(self.thumb).images.first.src.to_s
  end

  def show_title
    LinkThumbnailer.generate(self.thumb).title
  end

  def show_description
    LinkThumbnailer.generate(self.thumb).description
  end

  def avg_review
      if reviews.blank?
         0
      else
        reviews.average(:rating).round(2)
      end
   end
end
