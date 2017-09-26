require 'spec_helper'

RSpec.describe 'simple_admin/admin/resource/index.html.erb', type: :view do
  let(:entity) { create :entity }
  let(:posts)  { create_list :post, 5 }

  before do
    assign(:entity, entity)

    assign(:resource_name, 'Post')
    assign(:resources, SimpleAdmin::Post.page(1).per(9))

    assign(:entity_fields, entity.entity_fields)
  end

  it { render }
end
