class TeamRole < ApplicationRecord
has_and_belongs_to_many :teams, :join_table => :teams_team_roles


belongs_to :resource,
           :polymorphic => true,
           :optional => true


validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

scopify
end
