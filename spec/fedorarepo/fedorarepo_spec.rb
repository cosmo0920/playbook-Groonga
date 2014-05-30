require 'spec_helper'

describe yumrepo('groonga') do
  before :all do
    RSpec.configure do |c|
      c.disable_sudo = true
    end
  end

  let(:pre_command) { 'export LANG=C' }
  it { should exist }
  it { should be_enabled }

  after :all do
    RSpec.configure do |c|
      c.disable_sudo = false
    end
  end
end
