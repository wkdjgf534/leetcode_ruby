# frozen_string_literal: true

require_relative '../../lib/0013_roman_to_integer'

RSpec.describe '#roman_to_int' do
  subject { roman_to_int(roman) }

  context 'when roman = III' do
    let(:roman) { 'III' }

    it { is_expected.to eq(3) }
  end

  context 'when roman = LVIII' do
    let(:roman) { 'LVIII' }

    it { is_expected.to eq(58) }
  end

  context 'when roman = MCMXCIV' do
    let(:roman) { 'MCMXCIV' }

    it { is_expected.to eq(1994) }
  end
end
