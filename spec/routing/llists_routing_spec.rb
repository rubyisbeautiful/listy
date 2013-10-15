require "spec_helper"

describe LlistsController do
  describe "routing" do

    it "routes to #index" do
      get("/listy_lists").should route_to("listy_lists#index")
    end

    it "routes to #new" do
      get("/listy_lists/new").should route_to("listy_lists#new")
    end

    it "routes to #show" do
      get("/listy_lists/1").should route_to("listy_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/listy_lists/1/edit").should route_to("listy_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/listy_lists").should route_to("listy_lists#create")
    end

    it "routes to #update" do
      put("/listy_lists/1").should route_to("listy_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/listy_lists/1").should route_to("listy_lists#destroy", :id => "1")
    end

  end
end
