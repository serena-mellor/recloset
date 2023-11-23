class MoveReviewId < ActiveRecord::Migration[7.1]
  def change
    remove_reference :transactions, :review, index: true, foreign_key: true
    add_reference :reviews, :transaction, index: true, foreign_key: true
  end
end
