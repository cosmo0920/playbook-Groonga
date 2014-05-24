require 'spec_helper'

describe package('software-properties-common') do
  it { should be_installed }
end
