require 'spec_helper'

describe package('mecab-ipadic'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('mecab-ipadic'), :if => os[:family] == 'fedora' do
  it { should be_installed }
end

describe package('mecab-naist-jdic'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end
