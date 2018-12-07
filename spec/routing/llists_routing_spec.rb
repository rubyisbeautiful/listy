require "spec_helper"

describe LlistsController do
  describe "routing" do

    it "routes to #index" do
      get("/llists").should route_to("llists#index")
    end

    it "routes to #new" do
      get("/llists/new").should route_to("llists#new")
    end

    it "routes to #show" do
      get("/llists/1").should route_to("llists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/llists/1/edit").should route_to("llists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/llists").should route_to("llists#create")
    end

    it "routes to #update" do
      put("/llists/1").should route_to("llists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/llists/1").should route_to("llists#destroy", :id => "1")
    end

  end
end
