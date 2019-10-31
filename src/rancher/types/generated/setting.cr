require "json"

class Rancher::Setting < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # value => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 16777215}
  @[JSON::Field(key: "value")]
  property! value : String

  # activeValue => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "activeValue")]
  property! active_value : String

  # source => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "source")]
  property! source : String

  # inDb => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "inDb")]
  property! in_db : Bool
end
