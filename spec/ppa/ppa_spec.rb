require 'spec_helper'

describe ppa('ppa:groonga/ppa') do
  it { should exist }
  it { should be_enabled }
end
