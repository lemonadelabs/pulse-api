p 'Project.destroy_all'
Project.destroy_all
p 'Stakeholder.destroy_all'
Stakeholder.destroy_all
p 'StakeholderSnapshot.destroy_all'
StakeholderSnapshot.destroy_all


stakeholders = [
  {
    id: 0,
    name: 'Adrian Schnall',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/ryanbattles/128.jpg',
    organisation: 'Ministry of Health',
    role: 'Minister',
    tags: ['external'],
    data: {
      1 => {
        power: 0.9,
        support: 1.0,
        vital: 0.9
      },
      2 => {
        power: 0.9,
        support: 1.0,
        vital: 0.9
      },
      3 => {
        power: 0.4,
        support: 0.1,
        vital: 0.1
      },
      4 => {
        power: 0.4,
        support: 0.1,
        vital: 0.1
      }
    }
  },
  {
    id: 1,
    name: 'Hemi Tomaz',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/ankitind/128.jpg',
    organisation: 'Ministry of Maori Affairs',
    role: 'Minister',
    tags: ['external'],
    data: {
      1 => {
        power: 0.9,
        support: 0.6,
        vital: 0.7
      },
      2 => {
        power: 0.9,
        support: 0.6,
        vital: 0.7
      },
      3 => {
        power: 0.9,
        support: 0.6,
        vital: 0.8
      },
      4 => {
        power: 0.9,
        support: 0.9,
        vital: 0.8
      }
    }
  },
  {
    id: 2,
    name: 'Lee Wong',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/uxceo/128.jpg',
    organisation: 'Opposition',
    role: 'Shadow Minister',
    tags: ['external'],
    data: {
      1 => {
        power: 0.7,
        support: 0.3,
        vital: 0.5
      },
      2 => {
        power: 0.7,
        support: 0.3,
        vital: 0.5
      },
      3 => {
        power: 0.9,
        support: 0.2,
        vital: 0.9
      },
      4 => {
        power: 0.9,
        support: 0.1,
        vital: 0.9
      }
    }
  },
  {
    id: 3,
    name: 'Melissa G',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/kfriedson/128.jpg',
    organisation: 'Ministry of Health',
    role: 'Director General',
    tags: ['external'],
    data: {
      1 => {
        power: 0.9,
        support: 0.5,
        vital: 0.7
      },
      2 => {
        power: 0.9,
        support: 0.5,
        vital: 0.7
      },
      3 => {
        power: 0.9,
        support: 0.4,
        vital: 0.7
      },
      4 => {
        power: 0.9,
        support: 0.4,
        vital: 0.7
      }
    }
  },
  {
    id: 4,
    name: 'Adam Larkins',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/florianmascaro/128.jpg',
    organisation: 'Ministry of Health',
    role: 'General Manager - Funding',
    tags: ['external'],
    data: {
      1 => {
        power: 0.8,
        support: 0.5,
        vital: 0.8
      },
      2 => {
        power: 0.8,
        support: 0.5,
        vital: 0.8
      },
      3 => {
        power: 0.8,
        support: 0.3,
        vital: 0.8
      },
      4 => {
        power: 0.8,
        support: 0.2,
        vital: 0.8
      }
    }
  },
  {
    id: 5,
    name: 'Edward Mcvey',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/bramk/128.jpg',
    organisation: 'Ministry of Health',
    role: 'General Manager - Primary Health Care',
    tags: ['external'],
    data: {
      1 => {
        power: 0.8,
        support: 0.6,
        vital: 0.7
      },
      2 => {
        power: 0.8,
        support: 0.6,
        vital: 0.7
      },
      3 => {
        power: 0.8,
        support: 0.4,
        vital: 0.7
      },
      4 => {
        power: 0.8,
        support: 0.3,
        vital: 0.7
      }
    }
  },
  {
    id: 6,
    name: 'Pania Thorpe',
    image: 'http://www.teara.govt.nz/files/31565-pc.jpg',
    organisation: 'Local Authority',
    role: 'Councillor',
    tags: ['external'],
    data: {
      1 => {
        power: 0.6,
        support: 0.6,
        vital: 0.7
      },
      2 => {
        power: 0.6,
        support: 0.6,
        vital: 0.7
      },
      3 => {
        power: 0.6,
        support: 0.4,
        vital: 0.7
      },
      4 => {
        power: 0.6,
        support: 0.3,
        vital: 0.7
      }
    }
  },
  {
    id: 7,
    name: 'Agnes Landes',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/mtnmissy/128.jpg',
    organisation: 'Local Authority',
    role: 'Mayor',
    tags: ['external'],
    data: {
      1 => {
        power: 0.63,
        support: 0.8,
        vital: 0.2
      },
      2 => {
        power: 0.63,
        support: 0.8,
        vital: 0.2
      },
      3 => {
        power: 0.63,
        support: 0.8,
        vital: 0.2
      },
      4 => {
        power: 0.63,
        support: 0.8,
        vital: 0.2
      }
    }
  },
  {
    id: 8,
    name: 'Pita Maaka',
    image: 'http://www.teara.govt.nz/files/28353-nzh.jpg',
    organisation: 'Local Iwi',
    role: 'Kamatua',
    tags: ['external'],
    data: {
      1 => {
        power: 0.8,
        support: 0.9,
        vital: 0.75
      },
      2 => {
        power: 0.8,
        support: 0.9,
        vital: 0.75
      },
      3 => {
        power: 0.9,
        support: 0.9,
        vital: 0.75
      },
      4 => {
        power: 0.9,
        support: 0.9,
        vital: 0.75
      }
    }
  },
  {
    id: 9,
    name: 'Dale Earley',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/joelcannon/128.jpg',
    organisation: 'Local DHB',
    role: 'CEO',
    tags: ['external'],
    data: {
      1 => {
        power: 0.8,
        support: 0.6,
        vital: 0.6
      },
      2 => {
        power: 0.8,
        support: 0.6,
        vital: 0.6
      },
      3 => {
        power: 0.8,
        support: 0.5,
        vital: 0.6
      },
      4 => {
        power: 0.8,
        support: 0.4,
        vital: 0.6
      }
    }
  },
  {
    id: 10,
    name: 'Verna Lopez',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/taramann/128.jpg',
    organisation: 'DHBNZ',
    role: 'GM - PHO',
    tags: ['external'],
    data: {
      1 => {
        power: 0.9,
        support: 0.7,
        vital: 0.8
      },
      2 => {
        power: 0.9,
        support: 0.6,
        vital: 0.8
      },
      3 => {
        power: 0.9,
        support: 0.5,
        vital: 0.8
      },
      4 => {
        power: 0.9,
        support: 0.4,
        vital: 0.8
      }
    }
  },
  {
    id: 11,
    name: 'Matthew Moss',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/flakerimi/128.jpg',
    organisation: 'DHBNZ',
    role: 'GM - Operations',
    tags: ['external'],
    data: {
      1 => {
        power: 0.7,
        support: 0.7,
        vital: 0.8
      },
      2 => {
        power: 0.7,
        support: 0.6,
        vital: 0.8
      },
      3 => {
        power: 0.7,
        support: 0.5,
        vital: 0.8
      },
      4 => {
        power: 0.7,
        support: 0.4,
        vital: 0.8
      }
    }
  },
  {
    id: 12,
    name: 'Lillian Baumann',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/allisongrayce/128.jpg',
    organisation: 'DHBNZ',
    role: 'GM - Primary Health Care',
    tags: ['external'],
    data: {
      1 => {
        power: 0.9,
        support: 0.7,
        vital: 0.8
      },
      2 => {
        power: 0.9,
        support: 0.6,
        vital: 0.8
      },
      3 => {
        power: 0.9,
        support: 0.5,
        vital: 0.8
      },
      4 => {
        power: 0.9,
        support: 0.4,
        vital: 0.8
      }
    }
  },
  {
    id: 13,
    name: 'Kenneth Maxie',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/joshaustin/128.jpg',
    organisation: 'Midas PHO',
    role: 'Steering Committee',
    tags: ['internal'],
    data: {
      1 => {
        power: 1.0,
        support: 1.0,
        vital: 1.0
      },
      2 => {
        power: 1.0,
        support: 1.0,
        vital: 0.9
      },
      3 => {
        power: 1.0,
        support: 0.9,
        vital: 0.8
      },
      4 => {
        power: 1.0,
        support: 0.8,
        vital: 0.7
      }
    }
  },
  {
    id: 14,
    name: 'Leonard Luce',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/sortino/128.jpg',
    organisation: 'Midias PHO',
    role: 'Steering Committee',
    tags: ['internal'],
    data: {
      1 => {
        power: 0.5,
        support: 1.0,
        vital: 0.8
      },
      2 => {
        power: 0.6,
        support: 1.0,
        vital: 0.8
      },
      3 => {
        power: 0.7,
        support: 1.0,
        vital: 0.8
      },
      4 => {
        power: 0.8,
        support: 1.0,
        vital: 0.8
      }
    }
  },
  {
    id: 15,
    name: 'Huhana Turner',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/toffeenutdesign/128.jpg',
    organisation: 'Midas PHO',
    role: 'Steering Committee',
    tags: ['internal'],
    data: {
      1 => {
        power: 0.9,
        support: 0.7,
        vital: 0.55
      },
      2 => {
        power: 0.9,
        support: 0.7,
        vital: 0.55
      },
      3 => {
        power: 1.0,
        support: 0.6,
        vital: 0.55
      },
      4 => {
        power: 1.0,
        support: 0.5,
        vital: 0.55
      }
    }
  },
  {
    id: 16,
    name: 'Jo Smith',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/stylecampaign/128.jpg',
    organisation: 'Midas PHO',
    role: 'Steering Committee',
    tags: ['internal'],
    data: {
      1 => {
        power: 0.7,
        support: 0.7,
        vital: 0.65
      },
      2 => {
        power: 0.6,
        support: 0.7,
        vital: 0.65
      },
      3 => {
        power: 0.3,
        support: 0.7,
        vital: 0.65
      },
      4 => {
        power: 0.2,
        support: 0.7,
        vital: 0.65
      }
    }
  },
  {
    id: 17,
    name: 'Louis Hutchison',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/cacique/128.jpg',
    organisation: 'Midas PHO',
    role: 'Steering Committee',
    tags: ['internal'],
    data: {
      1 => {
        power: 0.8,
        support: 0.4,
        vital: 0.7
      },
      2 => {
        power: 0.8,
        support: 0.4,
        vital: 0.7
      },
      3 => {
        power: 0.8,
        support: 0.4,
        vital: 0.7
      },
      4 => {
        power: 0.8,
        support: 0.4,
        vital: 0.7
      }
    }
  },
  {
    id: 18,
    name: 'Frank Clark',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/gorvard/128.jpg',
    organisation: 'Walcott Street Clinic',
    role: 'Customer (GP)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.4,
        support: 0.7,
        vital: 0.55
      },
      2 => {
        power: 0.4,
        support: 0.6,
        vital: 0.55
      },
      3 => {
        power: 0.7,
        support: 0.7,
        vital: 0.55
      },
      4 => {
        power: 0.9,
        support: 0.7,
        vital: 0.55
      }
    }
  },
  {
    id: 19,
    name: 'Daniel Whitlock',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/fgosselin/128.jpg',
    organisation: 'Baker & Medcalf Surgery',
    role: 'Customer (GP)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.4,
        support: 0.7,
        vital: 0.7
      },
      2 => {
        power: 0.4,
        support: 0.5,
        vital: 0.7
      },
      3 => {
        power: 0.7,
        support: 0.5,
        vital: 0.7
      },
      4 => {
        power: 0.9,
        support: 0.5,
        vital: 0.7
      }
    }
  },
  {
    id: 20,
    name: 'Bryan Rongo',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/eugenedemyan/128.jpg',
    organisation: 'Johnston Street Surgery',
    role: 'Customer (GP)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.4,
        support: 0.7,
        vital: 0.6
      },
      2 => {
        power: 0.4,
        support: 0.4,
        vital: 0.6
      },
      3 => {
        power: 0.7,
        support: 0.6,
        vital: 0.6
      },
      4 => {
        power: 0.9,
        support: 0.7,
        vital: 0.6
      }
    }
  },
  {
    id: 21,
    name: 'Su Park',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/taramann/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.8,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.7,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.65,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.8,
        vital: 0.5
      }
    }
  },
  {
    id: 22,
    name: 'Teresa Soialo',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/mtnmissy/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.8,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.7,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.6,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.8,
        vital: 0.5
      }
    }
  },
  {
    id: 23,
    name: 'Peter Melbourne',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/rafaelks/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.6,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.35,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.4,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.45,
        vital: 0.5
      }
    }
  },
  {
    id: 24,
    name: 'Mary Smith',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/nettatheninja/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.9,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.2,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.8,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.7,
        vital: 0.5
      }
    }
  },
  {
    id: 25,
    name: 'Joanna Simpson',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/kfriedson/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.9,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.2,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.8,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.7,
        vital: 0.5
      }
    }
  },
  {
    id: 26,
    name: 'Mike McDowell',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/ritu/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.7,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.6,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.7,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.6,
        vital: 0.5
      }
    }
  },
  {
    id: 27,
    name: 'Ruchi Sharma',
    image: 'https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg',
    organisation: 'Midas PHO Clients',
    role: 'Customer (Patient)',
    tags: ['external'],
    data: {
      1 => {
        power: 0.2,
        support: 0.6,
        vital: 0.5
      },
      2 => {
        power: 0.2,
        support: 0.5,
        vital: 0.5
      },
      3 => {
        power: 0.6,
        support: 0.7,
        vital: 0.5
      },
      4 => {
        power: 0.8,
        support: 0.6,
        vital: 0.5
      }
    }
  }
]

project = Project.create(
  title: 'my project',
  client: 'Ministry of Health',
  timeframe: 4,
  time_format: 'w',
  total_stakeholders: 28,
  description: 'This is a blurb about the project'
)

stakeholders.each do | stakeholder |
  stakeholderRecord = Stakeholder.create(
    name: stakeholder[:name],
    image: stakeholder[:image],
    tags: stakeholder[:tags],
    organisation: stakeholder[:organisation],
    role: stakeholder[:role],
  )

  stakeholder[:data].each do | week, data |
    StakeholderSnapshot.create(
      stakeholder: stakeholderRecord,
      project: project,
      week: week,
      power: data[:power],
      support: data[:support],
      vital: data[:vital]
    )
  end
end