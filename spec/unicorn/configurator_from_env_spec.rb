require 'spec_helper'

describe Unicorn::Configurator do
  describe '#worker_processes' do
    context 'default' do
      subject { Unicorn::Configurator.new }
      it do
        subject.worker_processes 10
        expect(subject.set[:worker_processes]).to eq 10
      end
    end
    context 'Set ENV' do
      before { ENV['UNICORN_WORKER_PROCESS_NUM'] = '20' }
      subject { Unicorn::Configurator.new }
      it do
        subject.worker_processes 10
        expect(subject.set[:worker_processes]).to eq 20
      end
    end

  end
end
