require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do

  	question = Question.create email: 'rlikhite@gmail.com', body: 'Test', :location => ['Toronto'], :starterName => ['The Big One'], :starterAge => ['2']
  	answer = Answer.create email: 'author@gmail.com', body: 'test answer'

  	question.answers << answer 

    mail = MainMailer.notify_question_author(answer)
    assert_equal "New offer", mail.subject

    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match answer.body, mail.body.encoded
  end

end
