require 'spec_helper'

describe Sprockets::Helpers::Nonexistent do
  it 'has a version number' do
    expect(Sprockets::Helpers::Nonexistent::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
