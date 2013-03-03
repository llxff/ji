module StoriesHelper

  def risk_of(story)
    if story.low_risk?
      '<span class="muted">Низкий</span>'.html_safe
    elsif story.medium_risk?
      '<span class="text-warning">Средний</span>'.html_safe
    elsif story.hight_risk?
      '<span class="text-error">Высокий</span>'.html_safe
    else
      '<b>unknown risk</b>'.html_safe
    end
  end

  def status_of(story)
    if story.new_status?
      '<span class="text-warning">Новый</span>'.html_safe
    elsif story.in_progress?
      '<span class="text-info">В работе</span>'.html_safe
    elsif story.finished?
      '<span class="text-success">Закончено</span>'.html_safe
    elsif story.delivered?
      '<span class="text-success">Проверено</span>'.html_safe
    elsif story.rejected?
      '<span class="text-warning">Не принято</span>'.html_safe
    elsif story.accepted?
      '<span class="muted">Принято</span>'.html_safe
    else
      '<b>unknown state</b>'.html_safe
    end
  end

end
