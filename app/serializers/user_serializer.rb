class UserSerializer < ActiveModel::Serializer
  attributes :id, :name,:email, :custom_data

  def custom_data
    "Custom data"
  end
end
