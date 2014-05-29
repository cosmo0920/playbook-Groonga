require 'spec_helper'

describe package('mecab-naist-jdic') do
  it { should be_installed }
end
