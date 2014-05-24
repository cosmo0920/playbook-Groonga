require 'spec_helper'

describe ppa('groonga/ppa') do
  it { should exist }
  it { should be_enabled }
end
