class AppleCompressorDemonstration < ActiveRecord::Base
  include Action

  # Default Values

  DEFAULT_HOST_ADDRESS  = 'localhost'
  DEFAULT_HOST_PORT     = ''
  DEFAULT_USERNAME      = 'admin'
  DEFAULT_PASSWORD      = 'password'


  # Input Parameters

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Create_Job',
    'Create_Batch_Job',
    'Track_Job_Status',
    'Track_Batch_Job',
  ]

  # Output Fields
  # TODO Add Output Fields


  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  def self.display_name
    'Apple Compressor'
  end

  # The Plug-in Description
  def description
    'This action plug-in can be used to interact with Apple Compressor.'
  end

  def category
    [ CATEGORY_INTEGRATION ]
  end

  def self.dependencies
    [ ]
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end


end