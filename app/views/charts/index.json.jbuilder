json.array!(@charts) do |chart|
  json.extract! chart, :id, :user_id, :name, :sex_id, :category_id, :main_symptom, :onset, :provoke, :quality, :radiation, :severe, :time, :pain_area_id, :diagnose, :dia_reason, :acu_plan, :acu_reason, :herb_plan, :herb_reason, :published
  json.url chart_url(chart, format: :json)
end
