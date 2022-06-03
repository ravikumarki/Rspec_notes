RSpec.describe 'change matchers' do
subject {[1,2,3]}
    it 'chech that a method change object state' do
        expect {subject.push(4)}.to change {subject.length}.from(3).to(4)
        expect {subject.push(4)}.to change {subject.length}.by(1)

    end
it 'accept the nagative arguments' do
    expect {subject.pop}.to change {subject.length}.from(3).to(2)
    expect {subject.pop}.to change {subject.length}.by(-1)

end
end