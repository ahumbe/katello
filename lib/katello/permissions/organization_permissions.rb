require 'katello/plugin.rb'

Foreman::AccessControl.permission(:view_organizations).actions << [
  'katello/api/v2/organizations/index',
  'katello/api/v2/organizations/show',
  'katello/api/v2/organizations/redhat_provider',
  'katello/api/v2/organizations/download_debug_certificate',
]

Foreman::AccessControl.permission(:create_organizations).actions << [
  'katello/api/v2/organizations/create'
]

Foreman::AccessControl.permission(:edit_organizations).actions << [
  'katello/api/v2/organizations/update',
  'katello/api/v2/organizations/autoattach_subscriptions'
]

Foreman::AccessControl.permission(:destroy_organizations).actions << [
  'katello/api/v2/organizations/destroy'
]
