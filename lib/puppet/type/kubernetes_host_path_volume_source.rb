# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_host_path_volume_source) do
  
  @doc = "HostPathVolumeSource represents bare host directory volume."
  

  ensurable

  
  validate do
    required_properties = [
    
      path,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the host_path_volume_source.'
  end
  
    
      newproperty(:path) do
        desc "Path of the directory on the host. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#hostpath"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
