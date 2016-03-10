# there are 28 stakeholders
# we want each stakeholder to have relationships to between 0 and 20 other stakeholders

p 'Connection.destroy_all'
Connection.destroy_all

project = Project.first

timeframe = project.timeframe
stakeholders = project.stakeholders.uniq
half_of_stakeholders = stakeholders[0..(stakeholders.length/2)]

half_of_stakeholders.each do | stakeholder |
  eligible_relations = stakeholders - [stakeholder]
  amount_relations = rand( stakeholders.length * ( 3 / 4 )) + 1 # the max amount of relationships is a stakeholder will have is 75% of all the total population

  amount_relations.times do

    starting_strength = rand * (2) - 1
    change = rand - 0.5

    acquaintance = eligible_relations.delete_at( rand( eligible_relations.length ) )
    timeframe.times do | week |

      strength = starting_strength + change * week
      if (strength < -1) then strength = -1 end
      if (strength > 1) then strength = 1 end

      connection = Connection.create(
        stakeholder: stakeholder,
        acquaintance: acquaintance,
        strength: strength,
        project_id: project.id,
        week: week + 1
      )
      p "created connection #{connection.id}"

      connection = Connection.create( # make the inverse connection
        stakeholder: acquaintance,
        acquaintance: stakeholder,
        strength: strength,
        project_id: project.id,
        week: week + 1
      )
      p "created connection #{connection.id}"

    end
  end
end


