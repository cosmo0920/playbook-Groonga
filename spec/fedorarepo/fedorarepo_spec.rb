require 'spec_helper'

describe yumrepo('groonga') do
  it { should exist }
  xit { should be_enabled } # FIXME: set default locale C.UTF-8
end
