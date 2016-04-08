FactoryGirl.define do
  factory :question do
    t "MyString"
    f "MyString"
    topic_id 1
    domain "MyString"
    public_comments "MyText"
    private_comments "MyText"
    active false
  end
end
