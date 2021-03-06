class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :tutorial_id, :group_set_id, :number
end

class DeepGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :tutorial_id, :group_set_id, :number, :projects

  def projects
    object.projects.map { |p| p.id }
  end

end