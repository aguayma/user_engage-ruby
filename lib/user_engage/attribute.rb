require 'user_engage/base_model'
require 'dry-types'

module UserEngage
  class Attribute < BaseModel
    ################
    ## Attributes ##
    ################
    attribute :description, Types::String
    attribute :id, Types::Int
    attribute :name_std, Types::String
    attribute :name, Types::String
    attribute :value, Types::Any
  end
end
