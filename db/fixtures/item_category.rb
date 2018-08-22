# frozen_string_literal: true

ItemCategory.seed(:code,
  { code: 'food', name: 'Food',       },
  { code: 'med',  name: 'Medicine',   },
  { code: 'stty', name: 'Stationary', },
  { code: 'clth', name: 'Cloth',      },
  { code: 'watr', name: 'Water',      },
  { code: 'othr', name: 'Others',     }
)
