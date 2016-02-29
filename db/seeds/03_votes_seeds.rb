Vote.destroy_all

stakeholder_snapshots = StakeholderSnapshot.all

stakeholder_snapshots.each do | snapshot |

  spread_power = rand(0..1.0)
  spread_support = rand(0..1.0)
  spread_vital = rand(0..1.0)

  def normalize(float)
    if float < 0
      return 0
    elsif float > 1
      return 1
    else
      return float
    end
  end

  20.times do
    vote = Vote.create(
      stakeholder_snapshot: snapshot,
      power: normalize( snapshot.power + rand(0..spread_power) - spread_power / 2),
      support: normalize( snapshot.support + rand(0..spread_support) - spread_support / 2),
      vital: normalize( snapshot.vital + rand(0..spread_vital) - spread_vital / 2 )
    )
    if vote.id % 10 == 0 then p "created vote #{vote.id}" ; end
  end


end