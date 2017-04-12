class MyValidator < ActiveModel::Validator

  def validate(post)
    unless post.title =~ /Won't Believe|Secret|Guess|Top \d/
      post.errors[:title] << "Title is too clickbait-y!"
    end
  end
end
