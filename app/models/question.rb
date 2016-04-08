class Question < ApplicationRecord
  belongs_to :topic

  def present_random
    current_choice ? t : f
  end

  def peek
    "Correct answer: #{current_choice ? 'True' : 'False'}."
  end

  def randomize
    update(current_choice: [true, false].sample)
  end

  def self.randomized
    Question.all.each(&:randomize)
  end

  def self.by_topic(given_topic)
    given_topic ? where(topic: given_topic) : Question.all
  end

end
