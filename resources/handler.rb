actions :create, :delete

attribute :type, :kind_of => String, :equal_to => %w[set pipe tcp udp transport]
attribute :filters, :kind_of => Array
attribute :mutator, :kind_of => String
attribute :severities, :kind_of => Array
attribute :handlers, :kind_of => Array
attribute :command, :kind_of => String
attribute :timeout, :kind_of => Integer
attribute :socket, :kind_of => Hash
attribute :exchange, :kind_of => Hash
attribute :additional, :kind_of => Hash, :default => Hash.new

def initialize(*args)
  super
  @action = :create
end
