require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/event_logs", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # EventLog. As you add validations to EventLog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      EventLog.create! valid_attributes
      get event_logs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      event_log = EventLog.create! valid_attributes
      get event_log_url(event_log)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_event_log_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      event_log = EventLog.create! valid_attributes
      get edit_event_log_url(event_log)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new EventLog" do
        expect {
          post event_logs_url, params: { event_log: valid_attributes }
        }.to change(EventLog, :count).by(1)
      end

      it "redirects to the created event_log" do
        post event_logs_url, params: { event_log: valid_attributes }
        expect(response).to redirect_to(event_log_url(EventLog.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new EventLog" do
        expect {
          post event_logs_url, params: { event_log: invalid_attributes }
        }.to change(EventLog, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post event_logs_url, params: { event_log: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested event_log" do
        event_log = EventLog.create! valid_attributes
        patch event_log_url(event_log), params: { event_log: new_attributes }
        event_log.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the event_log" do
        event_log = EventLog.create! valid_attributes
        patch event_log_url(event_log), params: { event_log: new_attributes }
        event_log.reload
        expect(response).to redirect_to(event_log_url(event_log))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        event_log = EventLog.create! valid_attributes
        patch event_log_url(event_log), params: { event_log: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested event_log" do
      event_log = EventLog.create! valid_attributes
      expect {
        delete event_log_url(event_log)
      }.to change(EventLog, :count).by(-1)
    end

    it "redirects to the event_logs list" do
      event_log = EventLog.create! valid_attributes
      delete event_log_url(event_log)
      expect(response).to redirect_to(event_logs_url)
    end
  end
end
