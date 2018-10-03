# https://www.codewars.com/kata/quidditch-scoreboard/train/ruby
def quidditch_scoreboard(teams, actions)
team1 = teams.split(" vs ")[0]
team2 = teams.split(" vs ")[1]
action1 = actions.split("Snitch")[0]

#points t1

blurting_t1 = action1.scan("#{team1}: Blurting").length * -30
blatching_t1 = action1.scan("#{team1}: Blatching").length * -30
bumphing_t1 = action1.scan("#{team1}: Bumphing").length * -30
haverstacking_t1 = action1.scan("#{team1}: Haverstacking").length * -30
quaffle_pocking_t1 = action1.scan("#{team1}: Quaffle-pocking").length * -30
stooging_t1 = action1.scan("#{team1}: Stooging").length * -30
quaffle_t1 = action1.scan("#{team1}: Quaffle goal").length * 10
snitch_t1 = action1.scan("#{team1}: Caught ").length * 150
#points t2
blurting_t2 = action1.scan("#{team2}: Blurting").length * -30
blatching_t2 = action1.scan("#{team2}: Blatching").length * -30
bumphing_t2 = action1.scan("#{team2}: Bumphing").length * -30
haverstacking_t2 = action1.scan("#{team2}: Haverstacking").length * -30
quaffle_pocking_t2 = action1.scan("#{team2}: Quaffle-pocking").length * -30
stooging_t2 = action1.scan("#{team2}: Stooging").length * -30
quaffle_t2 = action1.scan("#{team2}: Quaffle goal").length * 10
snitch_t2 = action1.scan("#{team2}: Caught ").length * 150


# total score
score1 = blurting_t1 + blatching_t1 + bumphing_t1 + haverstacking_t1 + quaffle_pocking_t1 + stooging_t1 + quaffle_t1 + snitch_t1
score2 = blurting_t2 + blatching_t2 + bumphing_t2 + haverstacking_t2 + quaffle_pocking_t2 + stooging_t2 + quaffle_t2 + snitch_t2

#end
p team1 + ": #{score1}, " + team2 + ": #{score2}"
end

# cork: goal; foul; goal; goal; goal; 150
quidditch_scoreboard("Wimbourne Wasps vs Cork", "Cork: Quaffle goal, Cork: Quaffle-pocking foul, Cork: Quaffle goal, Wimbourne Wasps: Quaffle goal, Cork: Quaffle goal, Wimbourne Wasps: Quaffle goal, Wimbourne Wasps: Quaffle goal, Wimbourne Wasps: Quaffle goal, Cork: Quaffle goal, Wimbourne Wasps: Quaffle goal, Cork: Caught Snitch, Wimbourne Wasps: Quaffle goal")
puts puts
quidditch_scoreboard("Kenmare Kestrels vs Barnton","Barnton: Quaffle goal, Kenmare Kestrels: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Kenmare Kestrels: Blurting foul, Barnton: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Barnton: Quaffle goal, Kenmare Kestrels: Caught Snitch")
puts puts
quidditch_scoreboard("Leon vs Noel","Noel: Caught Snitch, Noel: Quaffle goal")
