=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
  def self.tally(input)
    # Strip leading and trailing whitespace from the input string
    input = input.strip

    header = "Team                           | MP |  W |  D |  L |  P\n"

    # Return the header if the input string is empty
    return header if input.empty?

    # Parse the input string and update the results for each team
    results = {}
    input.each_line do |line|
      team1, team2, result = line.strip.split(";")
      results[team1] ||= { "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0 }
      results[team2] ||= { "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0 }
      results[team1]["MP"] += 1
      results[team2]["MP"] += 1
      if result == "win"
        results[team1]["W"] += 1
        results[team1]["P"] += 3
        results[team2]["L"] += 1
      elsif result == "loss"
        results[team1]["L"] += 1
        results[team2]["W"] += 1
        results[team2]["P"] += 3
      else
        results[team1]["D"] += 1
        results[team2]["D"] += 1
        results[team1]["P"] += 1
        results[team2]["P"] += 1
      end
    end

    # Sort the results by the number of points each team has, in descending order,
    # and then by the team name if there is a tie
    sorted_results = results.sort_by { |team, stats| [-stats["P"], team]}
    # Format the results into a string and return it
    body = sorted_results.map do |team, stats|
      "%-30s | %2d | %2d | %2d | %2d | %2d" % [team, stats["MP"], stats["W"], stats["D"], stats["L"], stats["P"]]
    end.join("\n")

    "#{header}#{body}\n"
  end
end

