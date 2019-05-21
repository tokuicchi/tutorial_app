require 'csv'

CSV.generate do |csv|
  column_names = %w(worked_on started_at finished_at note)
  csv << column_names
  @dates.each do |date|
    column_values = [
      date.worked_on,
      date.started_at,
      date.finished_at,
      date.note
    ]
    csv << column_values
  end
end