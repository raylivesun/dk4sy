;; name project p3x
;; name program p3
;; name extension x


;; import libraries
(import java.util.*);
(import java.io.*);

;; define a class representing a game state
(class GameState {
  int score;
  List<String> moves;

  GameState(int score, List<String> moves) {
    this.score = score;
    this.moves = moves;
  }

  GameState copy() {
    return (new GameState(this.score, new ArrayList<>(this.moves)));
  }

  GameState makeMove(String move) {
    return (new GameState(this.score + 1, new ArrayList<>(this.moves).add(move)));
  }

  boolean isWin() {
    return (this.score == 10);
  }

  @Override
  public String toString() {
    return ("Score: " + this.score + ", Moves: " + this.moves);
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null || getClass() != obj.getClass()) return false;
    GameState other = (GameState) obj;
    return (this.score == other.score && Objects.equals(this.moves, other.moves));
  }

  @Override
  public int hashCode() {
    return Objects.hash(this.score, this.moves);
  }

  ;; define a function to solve the game
  (defn solve-game [game-state]
    ;; base case: if the game is won, return the game state
    (if (.isWin game-state)
      game-state
      ;; recursive case: generate all possible moves, solve each, and return the best move
      (let [moves (get-moves game-state)]
        (reduce (fn [best-move current-move]
          (if (or (.isWin current-move)
           (let [next-state (.makeMove game-state current-move)]
             (.solve-game next-state)))
            current-move
            best-move))
          nil
          moves))))

  ;; define a function to get all possible moves from a given game state
  (defn get-moves [game-state]
    (filter (fn [move] (not (.contains game-state.moves move)))
    (range 1 4))))

  ;; define a function to print the game state
  (defn print-game-state [game-state]
    (println (.toString game-state)))

  ;; main function to run the game
  (defn main []
    (let [game-state (new GameState 0 (get-moves nil))]
      (print-game-state game-state)
      (let [best-move (.solve-game game-state)]
        (print-game-state best-move)
        (println "Game won!"))))

;; run the main function
(main)

