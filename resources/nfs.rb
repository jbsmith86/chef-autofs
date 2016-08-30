resource_name :nfs

action :map_entry do
  include Chef::DSL::IncludeRecipe

  property :server, String
  property :export, String
  property :location do
    default { "#{server}:#{export}" }
  end
  property :map do
    default '/etc/auto.nfs'
  end
  property :mount_point do
    default { '/-' }
  end
  property :fstype do
    default { 'nfs4' }
  end
end
