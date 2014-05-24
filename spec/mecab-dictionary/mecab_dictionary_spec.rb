require 'spec_helper'

describe package('mecab-ipadic') do
  it { should be_installed }
end
