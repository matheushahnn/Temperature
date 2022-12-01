require 'temperature'

describe Temperature do
  describe '#celsius' do
    context 'given Celsius temperature' do
      it 'returns same temperature' do
        expect(Temperature.new('10°C').to_celsius).to eq('10.0°C')
      end
    end

    context 'given Kelvin temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10K').to_celsius).to eq('-263.15°C')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°F').to_celsius).to eq('-12.22°C')
      end
    end
  end

  describe '#kelvin' do
    context 'given Celsius temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°C').to_kelvin).to eq('283.15K')
      end
    end

    context 'given kelvin temperature' do
      it 'returns same temperature' do
        expect(Temperature.new('10K').to_kelvin).to eq('10.0K')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°F').to_kelvin).to eq('260.93K')
      end
    end
  end

  describe '#fahrenheit' do
    context 'given Celsius temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°C').to_fahrenheit).to eq('50.0°F')
      end
    end

    context 'given Kelvin temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10K').to_fahrenheit).to eq('-441.67°F')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns the same temperature' do
        expect(Temperature.new('10°F').to_fahrenheit).to eq('10.0°F')
      end
    end
  end
end
