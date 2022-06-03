class Royal
    attr_reader :name
    def initialize(name)
        @name = name
    end
end
RSpec.describe Royal do
    subject {described_class.new("raju")}
    let(:luise) {described_class.new("ram")}
     it 'represent a person' do
     expect(subject.name).to eq("raju")
     expect(luise.name).to eq("ram")
end
end