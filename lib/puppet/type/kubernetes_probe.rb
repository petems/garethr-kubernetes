# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_probe) do
  
  @doc = "Probe describes a liveness probe to be examined to the container."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the probe.'
  end
  
    
      newproperty(:exec) do
        desc "One and only one of the following should be specified. Exec specifies the action to take."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:httpGet) do
        desc "HTTPGet specifies the http request to perform."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:tcpSocket) do
        desc "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:initialDelaySeconds) do
        desc "Number of seconds after the container has started before liveness probes are initiated. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:timeoutSeconds) do
        desc "Number of seconds after which liveness probes timeout. Defaults to 1 second. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
