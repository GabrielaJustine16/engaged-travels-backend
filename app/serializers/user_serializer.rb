class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :hometown
end
