require 'active_support/concern'
module MailBox
  extend ActiveSupport::Concern

  def check_valid_email(email)
    response = HTTParty.get("http://apilayer.net/api/check?access_key=6d038a14520855d258ea2864cf011694&email=#{email}")
    if response.parsed_response['smtp_check'] && response.parsed_response['format_valid']
      render json: { message: 'This is a valid email address.' }, status: :ok
    else
      render json: { message: 'This is an invalid email address.' }, status: :unprocessable_entity
    end
  end
end
