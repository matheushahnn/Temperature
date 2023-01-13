require 'temperature'

describe Temperature do
  describe '#initialize' do
    context 'given a wrong temperature' do
      it 'throws an error' do
        expect { Temperature.new('10') }.to raise_error
      end
    end
  end

  describe '#to_celsius' do
    it 'returns a Temperature' do
      expect(Temperature.new('10°C').to_celsius).to be_a Temperature
    end

    context 'given Celsius temperature' do
      it 'returns same temperature' do
        expect(Temperature.new('10°C').to_celsius.display).to eq('10.0°C')
      end
    end

    context 'given Kelvin temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10K').to_celsius.display).to eq('-263.15°C')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°F').to_celsius.display).to eq('-12.22°C')
      end
    end
  end

  describe '#to_kelvin' do
    it 'returns a Temperature' do
      expect(Temperature.new('10°C').to_kelvin).to be_a Temperature
    end

    context 'given Celsius temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°C').to_kelvin.display).to eq('283.15K')
      end
    end

    context 'given kelvin temperature' do
      it 'returns same temperature' do
        expect(Temperature.new('10K').to_kelvin.display).to eq('10.0K')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°F').to_kelvin.display).to eq('260.93K')
      end
    end
  end

  describe '#to_fahrenheit' do
    it 'returns a Temperature' do
      expect(Temperature.new('10°C').to_fahrenheit).to be_a Temperature
    end

    context 'given Celsius temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10°C').to_fahrenheit.display).to eq('50.0°F')
      end
    end

    context 'given Kelvin temperature' do
      it 'returns converted temperature' do
        expect(Temperature.new('10K').to_fahrenheit.display).to eq('-441.67°F')
      end
    end

    context 'given Fahrenheit temperature' do
      it 'returns the same temperature' do
        expect(Temperature.new('10°F').to_fahrenheit.display).to eq('10.0°F')
      end
    end
  end

  describe '#+' do
    context 'given a temperature in Celsius' do
      context 'sum a temperature in Celsius' do
        it 'returns the sum of temperature in Celsius' do
          expect((Temperature.new('10°C') + Temperature.new('20°C')).display).to eq('30.0°C')
        end
      end

      context 'sum a temperature in Fahrenheit' do
        it 'returns the sum of temperature in Celsius' do
          expect((Temperature.new('10°C') + Temperature.new('100°F')).display).to eq('47.78°C')
        end
      end

      context 'sum a temperature in Kelvin' do
        it 'returns the sum of temperature in Celsius' do
          expect((Temperature.new('10°C') + Temperature.new('100K')).display).to eq('-163.15°C')
        end
      end
    end
  end
end
