class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :user_id, :course_id, :grading, :learning, :apply, :prerequisites, :usefulforcareer, :vote_count, :upvote
end
