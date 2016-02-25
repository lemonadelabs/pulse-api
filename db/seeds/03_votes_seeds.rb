Vote.destroy_all

var stakeholder_snapshots = StakeholderSnapshot.all

stakeholder_snapshots.each do | snapshot |
  pp snapshot
end