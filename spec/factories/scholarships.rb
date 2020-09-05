FactoryBot.define do
  factory :scholarship do
    title { 'foo' }
    description { 'bar' }
    start { Date.today }
    source { 'localhost' }
    category { 'test' }
    benefits { 'none' }
  end
end
