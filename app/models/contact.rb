class Contact < ApplicationRecord
    validates :name, presence: true
    validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/}
    validates :enquiry, presence: true
end

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  # def headers
  #   {
  #     :subject => "Contact us",
  #     :to => "your_email@example.org",
  #     :from => %("#{name}" <#{email}>)
  #   }
  # end



