class Api::V1::EmailsController < ApplicationController
  def check
    check_valid_email(email_params)
  end

  private

  def email_params
    params.require(:email)
  end
end
