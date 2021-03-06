require 'user_engage/base_model'
require 'user_engage/operation/find'
require 'user_engage/operation/create'
require 'user_engage/operation/destroy'

require 'user_engage/attribute'
require 'user_engage/list'
require 'user_engage/tag'
require 'dry-types'

module UserEngage
  class User < BaseModel
    ##############
    ## Includes ##
    ##############
    extend Operation::Create
    extend Operation::Find
    include Operation::Destroy

    ################
    ## Attributes ##
    ################
    attribute :attributes, Types::Array.of(UserEngage::Attribute)
    attribute :browser, Types::String
    attribute :browser_language, Types::String
    attribute :chat_id, Types::Int
    attribute :city, Types::String
    attribute :country, Types::String
    attribute :created_at, Types::DateTime
    attribute :email, Types::String
    attribute :facebook_url, Types::String
    attribute :first_seen, Types::DateTime
    attribute :gender, Types::String
    attribute :google_url, Types::String
    attribute :gravatar_url, Types::String
    attribute :id, Types::Int
    attribute :key, Types::String
    attribute :last_contacted, Types::DateTime
    attribute :last_ip, Types::String
    attribute :last_seen, Types::DateTime
    attribute :linkedin_url, Types::String
    attribute :lists, Types::Array.of(UserEngage::List)
    attribute :name, Types::String
    attribute :notifications, Types::Bool
    attribute :os_type, Types::String
    attribute :page_views, Types::Int
    attribute :phone_number, Types::String
    attribute :region, Types::String
    attribute :resolution, Types::String
    attribute :score, Types::Int
    attribute :status, Types::String
    attribute :tags, Types::Array.of(UserEngage::Tag)
    attribute :timezone, Types::String
    attribute :twitter_url, Types::String
    attribute :unsubscribed, Types::Bool
    attribute :updated_at, Types::DateTime
    attribute :user_id, Types::Any

    #####################
    ## Private methods ##
    #####################
    private_class_method

    def self.supported_find_params
      %i[email key phone_number date first_name last_name]
    end

    def self.resource_name
      'users'.freeze
    end
  end
end
