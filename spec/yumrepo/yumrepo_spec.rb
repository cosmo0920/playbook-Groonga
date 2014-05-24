require 'spec_helper'

describe yumrepo('epel') do
  it { should exist }
  it { should be_enabled }
end

describe yumrepo('groonga') do
  it { should exist }
  it { should be_enabled }
end
