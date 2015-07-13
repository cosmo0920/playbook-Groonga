require 'spec_helper'

describe yumrepo('groonga') do
  it { should exist }
  it { should be_enabled }
end
