require File.dirname(__FILE__) + '/support_lite'
require 'warden' unless defined?(Warden)
load File.dirname(__FILE__) + '/markup_plugin/output_helpers.rb'
Dir[File.dirname(__FILE__) + '/warden_plugin/**/*.rb'].each {|file| load file }

module SinatraMore
  module WardenPlugin
    # This is the basic password strategy for authentication
    class PasswordStrategy < Warden::Strategies::Base
      cattr_accessor :user_class

      def valid?
        username || password
      end

      def authenticate!
        raise "Please either define a user class or set SinatraMore::WardenPlugin::PasswordStrategy.user_class" unless user_class
        u = user_class.authenticate(username, password)
        u.nil? ? fail!("Could not log in") : success!(u)
      end

      def username
        params['username'] || params['nickname'] || params['login'] || params['email']
      end

      def password
        params['password'] || params['pass']
      end
    end

    class ApiStrategy < Warden::Strategies::Base
      cattr_accessor :user_class

      def valid?
        api_key || organization_id
      end

      def authenticate!
        raise "Please either define a user class or set SinatraMore::WardenPlugin::ApiStrategy.user_class" unless user_class
        u = user_class.api_authenticate(api_key, organization_id)
        u.nil? ? fail!("Could not authenticate") : success!(u)
      end

      def api_key
        params['api_key']
      end

      def organization_id
        params['organization_id']
      end

    end


    def self.registered(app)
      raise "WardenPlugin::Error - Install warden with 'sudo gem install warden' to use plugin!" unless Warden && Warden::Manager
      app.use Warden::Manager do |manager|
        manager.default_strategies :password, :api
        manager.failure_app = app
        manager.serialize_into_session { |user| user.nil? ? nil : user.id }
        manager.serialize_from_session { |id| id.nil? ? nil : PasswordStrategy.user_class.find(id) }
      end
      app.helpers SinatraMore::OutputHelpers
      app.helpers SinatraMore::WardenHelpers
      Warden::Manager.before_failure { |env,opts| env['REQUEST_METHOD'] = "POST" }
      Warden::Strategies.add(:password, PasswordStrategy)
      Warden::Strategies.add(:api, ApiStrategy)
      PasswordStrategy.user_class = User if defined?(User)
      ApiStrategy.user_class = User if defined?(Users)
    end
  end
end
