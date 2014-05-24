require 'spec_helper'

describe package('groonga') do
  it { should be_installed }
end

describe package('groonga-tokenizer-mecab') do
  it { should be_installed }
end

describe package('groonga-munin-plugins') do
  it { should be_installed }
end

describe package('groonga-normalizer-mysql') do
  it { should be_installed }
end
