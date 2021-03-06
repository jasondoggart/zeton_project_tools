module ApplicationHelper

  def icon_select(value)
    case value
    when nil
      content_tag(:i, nil, class: 'fa fa-times text-warning fa-1x')
    when 0
      content_tag(:i, nil, class: 'fa fa-times text-warning fa-1x')
    when 1
      content_tag(:i, nil, class: 'fa fa-check text-success fa-1x')
    when 2
      content_tag(:i, nil, class: 'fa fa-circle text-info fa-1x')
    end
  end

  def metrics_increment(value)
    if value == 0 or value == nil
      1
    elsif value == 1
      2
    else
      0
    end
  end

  def documents_metrics_increment(value)
    if value == 0 or value == nil
      1
    elsif value == 1
      0
    end
  end

  def rfi_status_update(value)
    if value == 0 or value == nil
      1
    else
      0
    end
  end

  def rfi_status_button(value)
    if value == 0 or value == nil
      'Open'
    else
      'Closed'
    end
  end

  def rfi_status_color(value)
    if value == 0 or value == nil
      'warning'
    else
      'success'
    end
  end

  def sort_direction(current_sort)
    current_direction = (current_sort =~ /asc$/) ? 'asc' : 'desc'
    current_direction == "asc" ? 'desc' : 'asc'
  end

  def metrics_color(value)
    case value
    when 0
      "text-warning"
    when 1
      "text-success"
    when 2
      "text-info"
    end
  end

  def days_from_now(value)
    ((value - Time.now)/24/3600 + 1).to_i
  end
end
