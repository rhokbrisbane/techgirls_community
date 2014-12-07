require 'rails_helper'

describe StoriesController, type: :controller do
  describe "GET index" do
    context 'with search' do
      
    end

    context 'without search' do

    end
  end

  describe "POST create" do
    let(:story_attrs) { attributes_for(:story) }
    let(:super_hero_attrs) { attributes_for(:super_hero) }

    def action
      post :create, story: { body: story_attrs[:body], super_hero_attributes: super_hero_attrs }
    end

    context 'valid record' do
      before do
        allow_any_instance_of(Story).to receive(:valid?) { true }
        expect(controller).to receive(:send_email)
        action
      end

      it { expect(response).to have_http_status(:redirect) }
      it { is_expected.to redirect_to(root_path) }
    end

    context 'invalid record' do
      before do
        allow_any_instance_of(Story).to receive(:valid?) { false }
        action
      end

      it { expect(response).to have_http_status(400) }
      it { is_expected.to render_template(:index) }
    end
  end
end
