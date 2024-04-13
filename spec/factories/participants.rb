FactoryBot.define do
  factory :participant do
    association :user

    trait :responsible do
      role { Participant::ROLES[:responsible] }
    end
  
    trait :follower do
      role { Participant::ROLES[:follower] }
    end

    # Utilizamos el callback `before(:create)` en lugar de `after(:build)`
    before(:create) do |participant|
      participant.user.save unless participant.user.persisted?
    end
  end
end

