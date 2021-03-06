# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_load_balancer_ingress).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        ip: instance.ip.respond_to?(:to_hash) ? instance.ip.to_hash : instance.ip,
      
    
      
        hostname: instance.hostname.respond_to?(:to_hash) ? instance.hostname.to_hash : instance.hostname,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_load_balancer_ingress #{name}")
    create_instance_of('load_balancer_ingress', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('load_balancer_ingress', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_load_balancer_ingress #{name}")
    destroy_instance_of('load_balancer_ingress', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('load_balancer_ingress')
  end

  def build_params
    params = {
    
      
        ip: resource[:ip],
      
    
      
        hostname: resource[:hostname],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
