class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  rescue_from ActionController::Redirecting::UnsafeRedirectError, with: :redirect_judgment

  private

  # メールリンクのリダイレクトURLのドメインが、許可されていないドメインだったら例外をコールする
  # 許可されているドメインの指定は環境変数: MY_APP_FRONT_DOMAINで指定する
  def redirect_judgment
    redirect_url = @_request.query_parameters[:redirect_url]
    return redirect_to(redirect_url, allow_other_host: true)
  end
end
