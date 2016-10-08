module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    icon = ''
    if column == sort_column
      icon = (sort_direction == 'desc') ? "<i class='fa fa-angle-double-down'></i>" : "<i class='fa fa-angle-double-up'></i>"
    end
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to (title + icon).html_safe, {:sort => column, :direction => direction}, {:class => css_class}
  end

  def travel_code_class(planet)
    case planet.travel_code
    when 'A'
      return 'table-warning'
    when 'R'
      return 'table-danger'
    else
      return ''
    end
  end
end
