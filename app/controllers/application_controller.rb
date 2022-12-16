class ApplicationController < ActionController::API
  respond_to :json
  before_action :configure_permitted_parameters, if: :devise_controller?
  include DeviseTokenAuth::Concerns::SetUserByToken

  rescue_from ActionController::Redirecting::UnsafeRedirectError, with: :redirect_judgment

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname, :phone, :address, :role, :cccd, :cv, :image])
  end

  private

  # メールリンクのリダイレクトURLのドメインが、許可されていないドメインだったら例外をコールする
  # 許可されているドメインの指定は環境変数: MY_APP_FRONT_DOMAINで指定する
  def redirect_judgment
    redirect_url = @_request.query_parameters[:redirect_url]
    return redirect_to(redirect_url, allow_other_host: true)
  end
end
