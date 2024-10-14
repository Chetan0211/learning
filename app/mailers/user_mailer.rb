class UserMailer < ApplicationMailer
  default from: 'saichetanreddy0211@gmail.com'

  def dummy_email(user_email)
    attachments['test_file.pdf'] = File.read(Rails.root.join('app', 'assets', 'pdfs', 'test_file.pdf'))
    attachments.inline['test_image.png'] = File.read(Rails.root.join('app/assets/images/test_image.png'))
    mail(to: user_email,subject: 'Testing the Active Mailer')
  end
end
