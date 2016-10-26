require_relative "wordgame_jackrabbits"

describe Game do
  let (:game) {Game.new("Blake", "see", "James")}

  describe Game do
    it "crates users, number of guesses, and the word to guess."
    expect (game.board_arr).to_eq [" s "," e "," e "]
  end
end
