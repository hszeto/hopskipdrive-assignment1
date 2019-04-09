require 'rspec'
require './assignment1'

RSpec.describe 'TimeToDegree' do
  describe 'convert success' do
    it 'return 156 degree' do
      degree = TimeToDegree.new('12:34 PM').convert

      expect(degree).to eq 156
    end

    it 'return 90 degree' do
      degree = TimeToDegree.new('9:00 PM').convert

      expect(degree).to eq 90
    end

    it 'return 180 degree' do
      degree = TimeToDegree.new('6:00 AM').convert

      expect(degree).to eq 180
    end

    it 'return 180 degree' do
      degree = TimeToDegree.new('3:45 PM').convert

      expect(degree).to eq 180
    end

    it 'return 78 degree' do
      degree = TimeToDegree.new('7:48 AM').convert

      expect(degree).to eq 78
    end

    it 'return 6 degree' do
      degree = TimeToDegree.new('12:01 AM').convert

      expect(degree).to eq 6
    end

    it 'return 6 degree' do
      degree = TimeToDegree.new('12:59 AM').convert

      expect(degree).to eq 6
    end

    it 'return 0 degree' do
      degree = TimeToDegree.new('9:45 AM').convert

      expect(degree).to eq 0
    end

    it 'return 0 degree' do
      degree = TimeToDegree.new('12:00 AM').convert

      expect(degree).to eq 0
    end

    it 'return 0 degree' do
      degree = TimeToDegree.new('6:30 PM').convert

      expect(degree).to eq 0
    end

    it 'return 0 degree' do
      degree = TimeToDegree.new('00:00 PM').convert

      expect(degree).to eq 0
    end
  end

  describe 'convert fail' do
    it 'return invalid date' do
      degree = TimeToDegree.new('25:61 PM').convert

      expect(degree).to eq 'invalid date'
    end
  end
end
