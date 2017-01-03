class Entities::ProjectAnalysis < Entities::BaseEntity
  expose :velocity
  expose :volatility
  expose :current_iteration_number
  expose :date_for_iteration
  expose :backlog
  expose :backlog_iterations
  expose :current_iteration_details
  expose :backlog_date
  expose :worst_backlog_date

  private

  def date_for_iteration
    last_iteration_number = object.current_iteration_number + 1

    object.date_for_iteration_number(last_iteration_number)
  end

  def worst_backlog_date
    object.backlog_date(true)
  end
end
