module AuthlogicFacebookConnect
  module Helper
    def authlogic_facebook_login_button(options = {})
      # TODO: Make this with correct helpers istead of this uggly hack.
      
      options[:controller] ||= "user_session"
      
      output = "<form id='connect_fo_facebook_form' method='post' action='/#{options[:controller]}'>\n"
      output += "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}'/>\n"
      output += "</form>\n"
      output += "<script type='text/javascript' charset='utf-8'>\n"
      output += " function connect_to_facebook() {\n"
      output += "   $('connect_fo_facebook_form').submit();\n"
      output += " }\n"
      output += "</script>\n"
      
      output += fb_login_button("connect_to_facebook()")
  
      output
    end
  end
end