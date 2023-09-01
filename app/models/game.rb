class Game < ApplicationRecord
    enum status: {
    pending: 0,
    completed: 1,
    canceled: 2
  }
end
