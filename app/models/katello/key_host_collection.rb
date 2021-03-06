module Katello
  class KeyHostCollection < Katello::Model
    self.include_root_in_json = false

    belongs_to :activation_key, :inverse_of => :key_host_collections
    belongs_to :host_collection, :inverse_of => :key_host_collections
    validates_lengths_from_database
  end
end
