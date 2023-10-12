module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :birthdate, GraphQL::Types::ISO8601Date, null: true
    field :gender, String, null: true
    field :user_measurements, [UserMeasurementType], null: true
    field :user_goals, [UserGoalType], null: true
    field :favorite_recipes, [UserFavoriteRecipeType], null: true
    field :favorite_exercises, [UserFavoriteExerciseType], null: true
  end

  def user_measurements
    object.user_measurements
  end

  def user_goals
    object.user_goals
  end

  def favorite_recipes
    object.user_favorite_recipes
  end

  def favorite_exercises
    object.user_favorite_exercises
  end
end
