require 'spec_helper'

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

describe InvestmentAssetCategoriesController do

  # This should return the minimal set of attributes required to create a valid
  # InvestmentAssetCategory. As you add validations to InvestmentAssetCategory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all investment_asset_categories as @investment_asset_categories" do
      investment_asset_category = InvestmentAssetCategory.create! valid_attributes
      get :index
      assigns(:investment_asset_categories).should eq([investment_asset_category])
    end
  end

  describe "GET show" do
    it "assigns the requested investment_asset_category as @investment_asset_category" do
      investment_asset_category = InvestmentAssetCategory.create! valid_attributes
      get :show, :id => investment_asset_category.id
      assigns(:investment_asset_category).should eq(investment_asset_category)
    end
  end

  describe "GET new" do
    it "assigns a new investment_asset_category as @investment_asset_category" do
      get :new
      assigns(:investment_asset_category).should be_a_new(InvestmentAssetCategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested investment_asset_category as @investment_asset_category" do
      investment_asset_category = InvestmentAssetCategory.create! valid_attributes
      get :edit, :id => investment_asset_category.id
      assigns(:investment_asset_category).should eq(investment_asset_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new InvestmentAssetCategory" do
        expect {
          post :create, :investment_asset_category => valid_attributes
        }.to change(InvestmentAssetCategory, :count).by(1)
      end

      it "assigns a newly created investment_asset_category as @investment_asset_category" do
        post :create, :investment_asset_category => valid_attributes
        assigns(:investment_asset_category).should be_a(InvestmentAssetCategory)
        assigns(:investment_asset_category).should be_persisted
      end

      it "redirects to the created investment_asset_category" do
        post :create, :investment_asset_category => valid_attributes
        response.should redirect_to(InvestmentAssetCategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved investment_asset_category as @investment_asset_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        InvestmentAssetCategory.any_instance.stub(:save).and_return(false)
        post :create, :investment_asset_category => {}
        assigns(:investment_asset_category).should be_a_new(InvestmentAssetCategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        InvestmentAssetCategory.any_instance.stub(:save).and_return(false)
        post :create, :investment_asset_category => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested investment_asset_category" do
        investment_asset_category = InvestmentAssetCategory.create! valid_attributes
        # Assuming there are no other investment_asset_categories in the database, this
        # specifies that the InvestmentAssetCategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        InvestmentAssetCategory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => investment_asset_category.id, :investment_asset_category => {'these' => 'params'}
      end

      it "assigns the requested investment_asset_category as @investment_asset_category" do
        investment_asset_category = InvestmentAssetCategory.create! valid_attributes
        put :update, :id => investment_asset_category.id, :investment_asset_category => valid_attributes
        assigns(:investment_asset_category).should eq(investment_asset_category)
      end

      it "redirects to the investment_asset_category" do
        investment_asset_category = InvestmentAssetCategory.create! valid_attributes
        put :update, :id => investment_asset_category.id, :investment_asset_category => valid_attributes
        response.should redirect_to(investment_asset_category)
      end
    end

    describe "with invalid params" do
      it "assigns the investment_asset_category as @investment_asset_category" do
        investment_asset_category = InvestmentAssetCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InvestmentAssetCategory.any_instance.stub(:save).and_return(false)
        put :update, :id => investment_asset_category.id, :investment_asset_category => {}
        assigns(:investment_asset_category).should eq(investment_asset_category)
      end

      it "re-renders the 'edit' template" do
        investment_asset_category = InvestmentAssetCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InvestmentAssetCategory.any_instance.stub(:save).and_return(false)
        put :update, :id => investment_asset_category.id, :investment_asset_category => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested investment_asset_category" do
      investment_asset_category = InvestmentAssetCategory.create! valid_attributes
      expect {
        delete :destroy, :id => investment_asset_category.id
      }.to change(InvestmentAssetCategory, :count).by(-1)
    end

    it "redirects to the investment_asset_categories list" do
      investment_asset_category = InvestmentAssetCategory.create! valid_attributes
      delete :destroy, :id => investment_asset_category.id
      response.should redirect_to(investment_asset_categories_url)
    end
  end

end
