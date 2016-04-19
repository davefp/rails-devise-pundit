module ApplicationHelper
  def available_labels(user)
    Label.all - user.labels
  end

  def user_add_label_select(user)
    available_labels(user).map { |label| [label.name, label.id] }
  end
end
