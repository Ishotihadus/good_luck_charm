# frozen_string_literal: true

require 'timecop'

RSpec.describe GoodLuckCharm do
  context 'returns `init` at first' do
    it 'returns false' do
      charm = GoodLuckCharm.new.tondeke!
      expect(charm.changed_per?(60)).to be_falsey
    end

    it 'returns true' do
      (charm = GoodLuckCharm.new).tondeke!
      expect(charm.changed_per?(60, init: true)).to be_truthy
    end
  end

  context 'returns true every 60 seconds' do
    before do
      @charm = GoodLuckCharm.new
    end

    it 'success' do
      Timecop.freeze(Time.new(2001, 8, 18, 0, 0, 30)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_falsey
      end
      Timecop.freeze(Time.new(2001, 8, 18, 0, 0, 50)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_falsey
      end
      Timecop.freeze(Time.new(2001, 8, 18, 0, 0, 0)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_falsey
      end
      Timecop.freeze(Time.new(2001, 8, 18, 0, 1, 0.1)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_truthy
        expect(@charm.changed_per?(60)).to be_truthy
      end
      Timecop.freeze(Time.new(2001, 8, 18, 0, 1, 1)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_falsey
      end
      Timecop.freeze(Time.new(2001, 8, 18, 0, 2, 5)) do
        @charm.tondeke!
        expect(@charm.changed_per?(60)).to be_truthy
      end
    end
  end
end
