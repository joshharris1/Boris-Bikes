require 'docking_station'
describe DockingStation do
    
   it "has a deafuly capacity" do
       expect(subject.capacity).to eq DockingStation::DEAFULT_CAPACITY
   end
   
   it 'responds to release_bike' do
       expect(subject).to respond_to :release_bike
   end
   
 describe '#release_bike' do
   it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end
 end
 
 it { is_expected.to respond_to(:dock).with(1).argument }

 describe '#release_bike' do
   it 'raises an error when there are no bikes available' do
     expect { subject.release_bike }.to raise_error 'No bikes available'
   end
 end
 
describe '#dock' do
    it 'raises an error when full' do
     subject.capacity.times { subject.dock Bike.new }
     expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
  end
  
  describe 'initialization' do 
      
     subject { DockingStation.new }
     let(:bike) { Bike.new }
     it 'defaults capcity' do
         described_class::DEAFULT_CAPACITY.times do
             subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
   end
  end
 end
 

