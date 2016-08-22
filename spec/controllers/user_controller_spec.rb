require 'rails_helper'

RSpec.describe UserController, type: :controller do
  it "should get the users" do
    user = User.create! first_name: "meh"
    get :index
    expect(response.body).to eq [user].to_json
  end
  

  describe "invalid vs valid creation of users" do
    let(:params) {
      {first_name: "Tommy"}
    }
    subject {
      post :create, params
    }
    it "should make a user with all the attributes" do
      subject
      expect(response.code).to eq 200
    end
    describe "invalid params" do
      let(:params) {
        {
          # invalid because first name needs to exist
        }
      }
      it "shouldnt make a user if all the attributes arent there" do
        subject
        expect(response.code).to eq 404
      end
    end

  end
end