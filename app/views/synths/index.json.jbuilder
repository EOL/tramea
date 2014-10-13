json.array!(@synths) do |synth|
  json.extract! synth, :id
  json.url synth_url(synth, format: :json)
end
