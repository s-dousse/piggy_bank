require 'piggy_bank'

# user story 1 = User can save money
# PiggyBank can store_coins 

# user story 2 = User can know how many coin he/she has
# PiggyBank can be_shaken
    # "cling" if not_empty?

# user story 3 = User can retrive his/her savings
# PiggyBank can be_brokens
    # return the number of coin
     # if not empty

describe PiggyBank do
    # it "should store coins" do
    #     # piggy_bank = PiggyBank.new
    #     expect(piggy_bank).to respond_to(:store_coins)
    it { is_expected.to respond_to :store_coins }
    
    it { is_expected.to respond_to :shaken }

    it "clings when shaken" do
        piggy_bank = PiggyBank.new
        expect(piggy_bank.shaken).to eq "cling"
    end

    it { is_expected.to respond_to :breaks }
    
end