class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :post_hash_tags
  has_many :hashtags, through: :post_hash_tags

  after_commit :create_hash_tags, on: :create

  def create_hash_tags 
    post = Post.find(self.id)
    collect_hash_tags.each do |x| 
      ht = Hashtag.create(name:x)
      post.hashtags << ht
    end
  end

  def collect_hash_tags 
    content.to_s.scan(/#\w+/).map {|x| x.downcase.gsub("#", "")} 
  end
end
