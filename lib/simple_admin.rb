require 'simple_admin/version'

module SimpleAdmin
  autoload :Base, 'simple_admin/models/base'
  autoload :Page, 'simple_admin/models/page'
  autoload :Post, 'simple_admin/models/post'
  autoload :Category, 'simple_admin/models/category'

  autoload :Entity, 'simple_admin/models/entity'
  autoload :EntityField, 'simple_admin/models/entity_field'

  autoload :EntityFieldType, 'simple_admin/models/entity_field_type'
  autoload :EntityFieldSetting, 'simple_admin/models/entity_field_setting'

  autoload :Setting, 'simple_admin/models/setting'
  autoload :FieldSetting, 'simple_admin/models/field_setting'
  autoload :Language, 'simple_admin/models/language'

  autoload :Widget, 'simple_admin/widget'
  autoload :Views, 'simple_admin/views'

  autoload :EntityControllerSetter, 'simple_admin/support/entity_controller_setter'
  autoload :ResourceFieldsControllerSetter, 'simple_admin/support/resource_fields_controller_setter'
  autoload :InbuiltControllerSettings, 'simple_admin/support/inbuilt_controller_settings'
  autoload :CrudControllerHelper, 'simple_admin/support/crud_controller_helper'

  autoload :EntityFieldSettingDataSerializer, 'simple_admin/serializers/entity_field_setting_data_serializer'

  autoload :Overrides, 'simple_admin/core_ext/overrides'

  class << self
    def core_controllers
      [
        Admin::System::EntitiesController,
        Admin::System::EntityFieldTypesController,
        Admin::System::LanguagesController,
        Admin::System::SettingsController,
        Admin::EntityFieldsController,
        Admin::DashboardController
      ]
    end

    def core_models
      {
        SimpleAdmin::Post => :posts,
        SimpleAdmin::Category => :categories
      }
    end
  end
end

require 'simple_admin/engine'
