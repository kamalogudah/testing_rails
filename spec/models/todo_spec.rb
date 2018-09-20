require 'rails_helper'
RSpec.describe Todo, "#completed?" do
  it 'returns true if completed_at is set' do
    todo = Todo.create(completed_at: Time.current)
    expect(todo).to be_completed
  end
  it 'returns false if completed_at is nill' do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
  it ' update completed_at' do
    todo = Todo.create!(completed_at: nil)
    todo.complete!
    todo.reload
    todo.reload
    expect(todo).to be_completed
  end
end
