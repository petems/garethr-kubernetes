# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_persistent_volume) do
  
  @doc = "PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md"
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the persistent_volume.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        desc "Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:spec) do
        desc "Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistent-volumes"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:status) do
        desc "Status represents the current information/status for the persistent volume. Populated by the system. Read-only. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#persistent-volumes"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
