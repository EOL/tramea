require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AttributionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Attribution. As you add validations to Attribution, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AttributionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all attributions as @attributions" do
      attribution = Attribution.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:attributions)).to eq([attribution])
    end
  end

  describe "GET show" do
    it "assigns the requested attribution as @attribution" do
      attribution = Attribution.create! valid_attributes
      get :show, {:id => attribution.to_param}, valid_session
      expect(assigns(:attribution)).to eq(attribution)
    end
  end

  describe "GET new" do
    it "assigns a new attribution as @attribution" do
      get :new, {}, valid_session
      expect(assigns(:attribution)).to be_a_new(Attribution)
    end
  end

  describe "GET edit" do
    it "assigns the requested attribution as @attribution" do
      attribution = Attribution.create! valid_attributes
      get :edit, {:id => attribution.to_param}, valid_session
      expect(assigns(:attribution)).to eq(attribution)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Attribution" do
        expect {
          post :create, {:attribution => valid_attributes}, valid_session
        }.to change(Attribution, :count).by(1)
      end

      it "assigns a newly created attribution as @attribution" do
        post :create, {:attribution => valid_attributes}, valid_session
        expect(assigns(:attribution)).to be_a(Attribution)
        expect(assigns(:attribution)).to be_persisted
      end

      it "redirects to the created attribution" do
        post :create, {:attribution => valid_attributes}, valid_session
        expect(response).to redirect_to(Attribution.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attribution as @attribution" do
        post :create, {:attribution => invalid_attributes}, valid_session
        expect(assigns(:attribution)).to be_a_new(Attribution)
      end

      it "re-renders the 'new' template" do
        post :create, {:attribution => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested attribution" do
        attribution = Attribution.create! valid_attributes
        put :update, {:id => attribution.to_param, :attribution => new_attributes}, valid_session
        attribution.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested attribution as @attribution" do
        attribution = Attribution.create! valid_attributes
        put :update, {:id => attribution.to_param, :attribution => valid_attributes}, valid_session
        expect(assigns(:attribution)).to eq(attribution)
      end

      it "redirects to the attribution" do
        attribution = Attribution.create! valid_attributes
        put :update, {:id => attribution.to_param, :attribution => valid_attributes}, valid_session
        expect(response).to redirect_to(attribution)
      end
    end

    describe "with invalid params" do
      it "assigns the attribution as @attribution" do
        attribution = Attribution.create! valid_attributes
        put :update, {:id => attribution.to_param, :attribution => invalid_attributes}, valid_session
        expect(assigns(:attribution)).to eq(attribution)
      end

      it "re-renders the 'edit' template" do
        attribution = Attribution.create! valid_attributes
        put :update, {:id => attribution.to_param, :attribution => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attribution" do
      attribution = Attribution.create! valid_attributes
      expect {
        delete :destroy, {:id => attribution.to_param}, valid_session
      }.to change(Attribution, :count).by(-1)
    end

    it "redirects to the attributions list" do
      attribution = Attribution.create! valid_attributes
      delete :destroy, {:id => attribution.to_param}, valid_session
      expect(response).to redirect_to(attributions_url)
    end
  end

end
