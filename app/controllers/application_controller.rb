# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
include AuthenticatedSystem
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :set_locale,:set_global_var
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password:jquery_noconflict,
  ActiveScaffold.set_defaults do |config|
    config.ignore_columns.add [:created_at, :updated_at]
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end
  
  private
  def set_locale
    logger.debug "param locale value: #{params[:locale]}\n"
    # if params[:locale] is nil then I18n.default_locale will be used
    I18n.locale = params[:locale]
    if params[:locale]=="en"
      ActiveRecord::Base.establish_connection(

        :adapter  => "mysql",
        :encoding => "utf8",
        :host     => "localhost",
        :reconnect => false,
        :username => "root",
        :password => "",
        :pool => 5,
        :database => "en_enzorodi_development"
      )
    else
      ActiveRecord::Base.establish_connection(

        :adapter  => "mysql",
        :encoding => "utf8",
        :host     => "localhost",
        :reconnect => false,
        :username => "root",
        :password => "",
        :pool => 5,
        :database => "enzorodi_development"
      )
    end
    TopProduct.curr_locale = params[:locale]
    MiddleProduct.curr_locale = params[:locale]
    EndProduct.curr_locale = params[:locale]
    Download.curr_locale = params[:locale]
  end

  def admin_required
    redirect_to "/login" unless logged_in? && current_user.name=="admin"
  end

  def jquery_noconflict
    ActionView::Helpers::PrototypeHelper.const_set(:JQUERY_VAR, 'jQuery')
  end

  def set_global_var
    @top_products = TopProduct.find(:all)
  end
end
class Object
  def as_(string, *args)
    # p "called"
    if string
      r = I18n.t(string,*args)
      if (r =~ /^translation missing/)
        return string
      end
      return r
    else
      return string
    end
  rescue
    return string
  end
end