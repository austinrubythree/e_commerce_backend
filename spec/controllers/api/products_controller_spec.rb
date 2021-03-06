require 'rails_helper'

  describe Api::ProductsController do
    it { should routes(:get, '/api/products').to(action: :index) }

    it { should routes(:get, '/api/products/1').to(action: :show, id: 1) }
  end

  RSpec.describe Api::ProductsController, type: :controller do

    
      describe '#index.json' do
        before { get :index, format: :json }
    
        it { should render_template :index }
      end
    
      describe '#show.json' do
        before { get :show, id: 1, format: :json }
    
        it { should render_template :show }
      end
    
      describe '#collection' do
        before { expect(Product).to receive(:all) }
    
        it { expect { subject.send :collection }.to_not raise_error }
      end
    
      describe '#resource' do
        before { expect(subject).to receive(:params).and_return({ id: 1 }) }
    
        before { expect(Product).to receive(:find).with(1) }
    
        it { expect { subject.send :resource }.to_not raise_error }
      end
    end

