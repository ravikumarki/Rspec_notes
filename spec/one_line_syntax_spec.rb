RSpec.describe 'syntax' do
    subject{5}
    context 'is classic syntax' do
   it 'equal to 5' do
    expect(subject).to eq(5)
   end
end

context 'one line syntax' do
    it {is_expected.to eq(5)}
end
end