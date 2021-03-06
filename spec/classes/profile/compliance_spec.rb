require 'spec_helper'

describe 'profile::compliance' do
  it { should contain_class 'profile::compliance' }

  context 'libssl1.0.0.' do
    it 'should comply with USN-2959-1' do
      expect(subject).to contain_package('libssl1.0.0').with({
        :ensure => '1.0.1f-1ubuntu2.23',
      })
    end
  end
end
