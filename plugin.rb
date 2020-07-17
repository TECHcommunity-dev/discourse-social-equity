# name: discourse-social-equity
# version: 0.1
# authors: Saurabh Khandelwal [Webdirekt]

PLUGIN_NAME = 'discourse-social-equity'.freeze

# Overriding /app/serializers/web_hook_post_serializer.rb

after_initialize do
	WebHookPostSerializer.class_eval do
	  attributes :user_email
	  def user_email
	    object.user && object.user.email
	  end
	end
end
