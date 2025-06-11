module TasksHelper
   def priority_border_class(priority)
    case priority.to_s
    when "low" then "secondary"
    when "medium" then "warning"
    when "high" then "danger"
    end
  end
end
