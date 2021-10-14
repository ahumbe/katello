module Katello
  class GenericContentUnit < Katello::Model
    self.table_name = 'katello_generic_content_units'
    include Concerns::PulpDatabaseUnit

    CONTENT_TYPE = 'generic'.freeze

    scoped_search :on => :id, :complete_value => true
    scoped_search :on => :name, :complete_value => true
    scoped_search :on => :version, :complete_value => true
    scoped_search :on => :filename, :complete_value => true

    def self.default_sort
      order(:name)
    end

    def self.total_for_repositories(repos)
      self.in_repositories(repos).count
    end
  end
end
