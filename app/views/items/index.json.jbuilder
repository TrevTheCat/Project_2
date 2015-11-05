json.array!(@items) do |item|
  json.extract! item, :id, :list_one, :list_two, :list_three, :list_four, :list_five, :list_six, :list_seven, :list_eight, :list_nine, :list_ten, :Lists
  json.url item_url(item, format: :json)
end
