module ApplicationHelper
  def load_data
    {
      item_categories: ItemCategory.all.map{|c| {
        id:   c.id,
        name: c.name,
        code: c.code,
      }},
      item_types: ItemType.all.map{|t| {
        id:               t.id,
        name:             t.name,
        code:             t.code,
        item_category_id: t.item_category_id,
      }},
      districts: District.all.map{|district| {
          id: district.id,
          name: district.name,
          code: district.code,
          local_name: district.local_name
      }},
      areas: Area.all.map{|area| {
          id: area.id,
          name: area.name,
          district_id: area.district_id,
          locality: area.locality
      }}
    }
  end

  def load_code
   [
       {
           "_name": "India",
           "_english_name": "India",
           "_name_code": "in",
           "_phone_code": "91"
       },
       {
          "_name": "Andorra",
          "_english_name": "Andorra",
          "_name_code": "ad",
          "_phone_code": "376"
      },
      {
          "_name": "UAE",
          "_english_name": "United Arab Emirates (UAE)",
          "_name_code": "ae",
          "_phone_code": "971"
      },
      {
          "_name": "Afghanistan",
          "_english_name": "Afghanistan",
          "_name_code": "af",
          "_phone_code": "93"
      },
      {
          "_name": "Antigua and Barbuda",
          "_english_name": "Antigua and Barbuda",
          "_name_code": "ag",
          "_phone_code": "1"
      },
      {
          "_name": "Anguilla",
          "_english_name": "Anguilla",
          "_name_code": "ai",
          "_phone_code": "1"
      },
      {
          "_name": "Albania",
          "_english_name": "Albania",
          "_name_code": "al",
          "_phone_code": "355"
      },
      {
          "_name": "Armenia",
          "_english_name": "Armenia",
          "_name_code": "am",
          "_phone_code": "374"
      },
      {
          "_name": "Angola",
          "_english_name": "Angola",
          "_name_code": "ao",
          "_phone_code": "244"
      },
      {
          "_name": "Antarctica",
          "_english_name": "Antarctica",
          "_name_code": "aq",
          "_phone_code": "672"
      },
      {
          "_name": "Argentina",
          "_english_name": "Argentina",
          "_name_code": "ar",
          "_phone_code": "54"
      },
      {
          "_name": "American Samoa",
          "_english_name": "American Samoa",
          "_name_code": "as",
          "_phone_code": "1"
      },
      {
          "_name": "Austria",
          "_english_name": "Austria",
          "_name_code": "at",
          "_phone_code": "43"
      },
      {
          "_name": "Australia",
          "_english_name": "Australia",
          "_name_code": "au",
          "_phone_code": "61"
      },
      {
          "_name": "Aruba",
          "_english_name": "Aruba",
          "_name_code": "aw",
          "_phone_code": "297"
      },
      {
          "_name": "Aland Islands",
          "_english_name": "Aland Islands",
          "_name_code": "ax",
          "_phone_code": "358"
      },
      {
          "_name": "Azerbaijan",
          "_english_name": "Azerbaijan",
          "_name_code": "az",
          "_phone_code": "994"
      },
      {
          "_name": "Bosnia And Herzegovina",
          "_english_name": "Bosnia And Herzegovina",
          "_name_code": "ba",
          "_phone_code": "387"
      },
      {
          "_name": "Barbados",
          "_english_name": "Barbados",
          "_name_code": "bb",
          "_phone_code": "1"
      },
      {
          "_name": "Bangladesh",
          "_english_name": "Bangladesh",
          "_name_code": "bd",
          "_phone_code": "880"
      },
      {
          "_name": "Belgium",
          "_english_name": "Belgium",
          "_name_code": "be",
          "_phone_code": "32"
      },
      {
          "_name": "Burkina Faso",
          "_english_name": "Burkina Faso",
          "_name_code": "bf",
          "_phone_code": "226"
      },
      {
          "_name": "Bulgaria",
          "_english_name": "Bulgaria",
          "_name_code": "bg",
          "_phone_code": "359"
      },
      {
          "_name": "Bahrain",
          "_english_name": "Bahrain",
          "_name_code": "bh",
          "_phone_code": "973"
      },
      {
          "_name": "Burundi",
          "_english_name": "Burundi",
          "_name_code": "bi",
          "_phone_code": "257"
      },
      {
          "_name": "Benin",
          "_english_name": "Benin",
          "_name_code": "bj",
          "_phone_code": "229"
      },
      {
          "_name": "Saint Barthélemy",
          "_english_name": "Saint Barthélemy",
          "_name_code": "bl",
          "_phone_code": "590"
      },
      {
          "_name": "Bermuda",
          "_english_name": "Bermuda",
          "_name_code": "bm",
          "_phone_code": "1"
      },
      {
          "_name": "Brunei Darussalam",
          "_english_name": "Brunei Darussalam",
          "_name_code": "bn",
          "_phone_code": "673"
      },
      {
          "_name": "Bolivia, Plurinational State Of",
          "_english_name": "Bolivia, Plurinational State Of",
          "_name_code": "bo",
          "_phone_code": "591"
      },
      {
          "_name": "Brazil",
          "_english_name": "Brazil",
          "_name_code": "br",
          "_phone_code": "55"
      },
      {
          "_name": "Bahamas",
          "_english_name": "Bahamas",
          "_name_code": "bs",
          "_phone_code": "1"
      },
      {
          "_name": "Bhutan",
          "_english_name": "Bhutan",
          "_name_code": "bt",
          "_phone_code": "975"
      },
      {
          "_name": "Botswana",
          "_english_name": "Botswana",
          "_name_code": "bw",
          "_phone_code": "267"
      },
      {
          "_name": "Belarus",
          "_english_name": "Belarus",
          "_name_code": "by",
          "_phone_code": "375"
      },
      {
          "_name": "Belize",
          "_english_name": "Belize",
          "_name_code": "bz",
          "_phone_code": "501"
      },
      {
          "_name": "Canada",
          "_english_name": "Canada",
          "_name_code": "ca",
          "_phone_code": "1"
      },
      {
          "_name": "Cocos (keeling) Islands",
          "_english_name": "Cocos (keeling) Islands",
          "_name_code": "cc",
          "_phone_code": "61"
      },
      {
          "_name": "Congo, The Democratic Republic Of The",
          "_english_name": "Congo, The Democratic Republic Of The",
          "_name_code": "cd",
          "_phone_code": "243"
      },
      {
          "_name": "Central African Republic",
          "_english_name": "Central African Republic",
          "_name_code": "cf",
          "_phone_code": "236"
      },
      {
          "_name": "Congo",
          "_english_name": "Congo",
          "_name_code": "cg",
          "_phone_code": "242"
      },
      {
          "_name": "Switzerland",
          "_english_name": "Switzerland",
          "_name_code": "ch",
          "_phone_code": "41"
      },
      {
          "_name": "Côte D'ivoire",
          "_english_name": "Côte D'ivoire",
          "_name_code": "ci",
          "_phone_code": "225"
      },
      {
          "_name": "Cook Islands",
          "_english_name": "Cook Islands",
          "_name_code": "ck",
          "_phone_code": "682"
      },
      {
          "_name": "Chile",
          "_english_name": "Chile",
          "_name_code": "cl",
          "_phone_code": "56"
      },
      {
          "_name": "Cameroon",
          "_english_name": "Cameroon",
          "_name_code": "cm",
          "_phone_code": "237"
      },
      {
          "_name": "China",
          "_english_name": "China",
          "_name_code": "cn",
          "_phone_code": "86"
      },
      {
          "_name": "Colombia",
          "_english_name": "Colombia",
          "_name_code": "co",
          "_phone_code": "57"
      },
      {
          "_name": "Costa Rica",
          "_english_name": "Costa Rica",
          "_name_code": "cr",
          "_phone_code": "506"
      },
      {
          "_name": "Cuba",
          "_english_name": "Cuba",
          "_name_code": "cu",
          "_phone_code": "53"
      },
      {
          "_name": "Cape Verde",
          "_english_name": "Cape Verde",
          "_name_code": "cv",
          "_phone_code": "238"
      },
      {
          "_name": "Christmas Island",
          "_english_name": "Christmas Island",
          "_name_code": "cx",
          "_phone_code": "61"
      },
      {
          "_name": "Cyprus",
          "_english_name": "Cyprus",
          "_name_code": "cy",
          "_phone_code": "357"
      },
      {
          "_name": "Czech Republic",
          "_english_name": "Czech Republic",
          "_name_code": "cz",
          "_phone_code": "420"
      },
      {
          "_name": "Germany",
          "_english_name": "Germany",
          "_name_code": "de",
          "_phone_code": "49"
      },
      {
          "_name": "Djibouti",
          "_english_name": "Djibouti",
          "_name_code": "dj",
          "_phone_code": "253"
      },
      {
          "_name": "Denmark",
          "_english_name": "Denmark",
          "_name_code": "dk",
          "_phone_code": "45"
      },
      {
          "_name": "Dominica",
          "_english_name": "Dominica",
          "_name_code": "dm",
          "_phone_code": "1"
      },
      {
          "_name": "Dominican Republic",
          "_english_name": "Dominican Republic",
          "_name_code": "do",
          "_phone_code": "1"
      },
      {
          "_name": "Algeria",
          "_english_name": "Algeria",
          "_name_code": "dz",
          "_phone_code": "213"
      },
      {
          "_name": "Ecuador",
          "_english_name": "Ecuador",
          "_name_code": "ec",
          "_phone_code": "593"
      },
      {
          "_name": "Estonia",
          "_english_name": "Estonia",
          "_name_code": "ee",
          "_phone_code": "372"
      },
      {
          "_name": "Egypt",
          "_english_name": "Egypt",
          "_name_code": "eg",
          "_phone_code": "20"
      },
      {
          "_name": "Eritrea",
          "_english_name": "Eritrea",
          "_name_code": "er",
          "_phone_code": "291"
      },
      {
          "_name": "Spain",
          "_english_name": "Spain",
          "_name_code": "es",
          "_phone_code": "34"
      },
      {
          "_name": "Ethiopia",
          "_english_name": "Ethiopia",
          "_name_code": "et",
          "_phone_code": "251"
      },
      {
          "_name": "Finland",
          "_english_name": "Finland",
          "_name_code": "fi",
          "_phone_code": "358"
      },
      {
          "_name": "Fiji",
          "_english_name": "Fiji",
          "_name_code": "fj",
          "_phone_code": "679"
      },
      {
          "_name": "Falkland Islands (malvinas)",
          "_english_name": "Falkland Islands (malvinas)",
          "_name_code": "fk",
          "_phone_code": "500"
      },
      {
          "_name": "Micronesia, Federated States Of",
          "_english_name": "Micronesia, Federated States Of",
          "_name_code": "fm",
          "_phone_code": "691"
      },
      {
          "_name": "Faroe Islands",
          "_english_name": "Faroe Islands",
          "_name_code": "fo",
          "_phone_code": "298"
      },
      {
          "_name": "France",
          "_english_name": "France",
          "_name_code": "fr",
          "_phone_code": "33"
      },
      {
          "_name": "Gabon",
          "_english_name": "Gabon",
          "_name_code": "ga",
          "_phone_code": "241"
      },
      {
          "_name": "United Kingdom",
          "_english_name": "United Kingdom",
          "_name_code": "gb",
          "_phone_code": "44"
      },
      {
          "_name": "Grenada",
          "_english_name": "Grenada",
          "_name_code": "gd",
          "_phone_code": "1"
      },
      {
          "_name": "Georgia",
          "_english_name": "Georgia",
          "_name_code": "ge",
          "_phone_code": "995"
      },
      {
          "_name": "French Guyana",
          "_english_name": "French Guyana",
          "_name_code": "gf",
          "_phone_code": "594"
      },
      {
          "_name": "Guernsey",
          "_english_name": "Guernsey",
          "_name_code": "gg",
          "_phone_code": "44"
      },
      {
          "_name": "Ghana",
          "_english_name": "Ghana",
          "_name_code": "gh",
          "_phone_code": "233"
      },
      {
          "_name": "Gibraltar",
          "_english_name": "Gibraltar",
          "_name_code": "gi",
          "_phone_code": "350"
      },
      {
          "_name": "Greenland",
          "_english_name": "Greenland",
          "_name_code": "gl",
          "_phone_code": "299"
      },
      {
          "_name": "Gambia",
          "_english_name": "Gambia",
          "_name_code": "gm",
          "_phone_code": "220"
      },
      {
          "_name": "Guinea",
          "_english_name": "Guinea",
          "_name_code": "gn",
          "_phone_code": "224"
      },
      {
          "_name": "Guadeloupe",
          "_english_name": "Guadeloupe",
          "_name_code": "gp",
          "_phone_code": "590"
      },
      {
          "_name": "Equatorial Guinea",
          "_english_name": "Equatorial Guinea",
          "_name_code": "gq",
          "_phone_code": "240"
      },
      {
          "_name": "Greece",
          "_english_name": "Greece",
          "_name_code": "gr",
          "_phone_code": "30"
      },
      {
          "_name": "Guatemala",
          "_english_name": "Guatemala",
          "_name_code": "gt",
          "_phone_code": "502"
      },
      {
          "_name": "Guam",
          "_english_name": "Guam",
          "_name_code": "gu",
          "_phone_code": "1"
      },
      {
          "_name": "Guinea-bissau",
          "_english_name": "Guinea-bissau",
          "_name_code": "gw",
          "_phone_code": "245"
      },
      {
          "_name": "Guyana",
          "_english_name": "Guyana",
          "_name_code": "gy",
          "_phone_code": "592"
      },
      {
          "_name": "Hong Kong",
          "_english_name": "Hong Kong",
          "_name_code": "hk",
          "_phone_code": "852"
      },
      {
          "_name": "Honduras",
          "_english_name": "Honduras",
          "_name_code": "hn",
          "_phone_code": "504"
      },
      {
          "_name": "Croatia",
          "_english_name": "Croatia",
          "_name_code": "hr",
          "_phone_code": "385"
      },
      {
          "_name": "Haiti",
          "_english_name": "Haiti",
          "_name_code": "ht",
          "_phone_code": "509"
      },
      {
          "_name": "Hungary",
          "_english_name": "Hungary",
          "_name_code": "hu",
          "_phone_code": "36"
      },
      {
          "_name": "Indonesia",
          "_english_name": "Indonesia",
          "_name_code": "id",
          "_phone_code": "62"
      },
      {
          "_name": "Ireland",
          "_english_name": "Ireland",
          "_name_code": "ie",
          "_phone_code": "353"
      },
      {
          "_name": "Israel",
          "_english_name": "Israel",
          "_name_code": "il",
          "_phone_code": "972"
      },
      {
          "_name": "Isle Of Man",
          "_english_name": "Isle Of Man",
          "_name_code": "im",
          "_phone_code": "44"
      },
      {
          "_name": "Iceland",
          "_english_name": "Iceland",
          "_name_code": "is",
          "_phone_code": "354"
      },
      {
          "_name": "British Indian Ocean Territory",
          "_english_name": "British Indian Ocean Territory",
          "_name_code": "io",
          "_phone_code": "246"
      },
      {
          "_name": "Iraq",
          "_english_name": "Iraq",
          "_name_code": "iq",
          "_phone_code": "964"
      },
      {
          "_name": "Iran, Islamic Republic Of",
          "_english_name": "Iran, Islamic Republic Of",
          "_name_code": "ir",
          "_phone_code": "98"
      },
      {
          "_name": "Italy",
          "_english_name": "Italy",
          "_name_code": "it",
          "_phone_code": "39"
      },
      {
          "_name": "Jersey",
          "_english_name": "Jersey",
          "_name_code": "je",
          "_phone_code": "44"
      },
      {
          "_name": "Jamaica",
          "_english_name": "Jamaica",
          "_name_code": "jm",
          "_phone_code": "1"
      },
      {
          "_name": "Jordan",
          "_english_name": "Jordan",
          "_name_code": "jo",
          "_phone_code": "962"
      },
      {
          "_name": "Japan",
          "_english_name": "Japan",
          "_name_code": "jp",
          "_phone_code": "81"
      },
      {
          "_name": "Kenya",
          "_english_name": "Kenya",
          "_name_code": "ke",
          "_phone_code": "254"
      },
      {
          "_name": "Kyrgyzstan",
          "_english_name": "Kyrgyzstan",
          "_name_code": "kg",
          "_phone_code": "996"
      },
      {
          "_name": "Cambodia",
          "_english_name": "Cambodia",
          "_name_code": "kh",
          "_phone_code": "855"
      },
      {
          "_name": "Kiribati",
          "_english_name": "Kiribati",
          "_name_code": "ki",
          "_phone_code": "686"
      },
      {
          "_name": "Comoros",
          "_english_name": "Comoros",
          "_name_code": "km",
          "_phone_code": "269"
      },
      {
          "_name": "Saint Kitts and Nevis",
          "_english_name": "Saint Kitts and Nevis",
          "_name_code": "kn",
          "_phone_code": "1"
      },
      {
          "_name": "North Korea",
          "_english_name": "North Korea",
          "_name_code": "kp",
          "_phone_code": "850"
      },
      {
          "_name": "South Korea",
          "_english_name": "South Korea",
          "_name_code": "kr",
          "_phone_code": "82"
      },
      {
          "_name": "Kuwait",
          "_english_name": "Kuwait",
          "_name_code": "kw",
          "_phone_code": "965"
      },
      {
          "_name": "Cayman Islands",
          "_english_name": "Cayman Islands",
          "_name_code": "ky",
          "_phone_code": "1"
      },
      {
          "_name": "Kazakhstan",
          "_english_name": "Kazakhstan",
          "_name_code": "kz",
          "_phone_code": "7"
      },
      {
          "_name": "Lao People's Democratic Republic",
          "_english_name": "Lao People's Democratic Republic",
          "_name_code": "la",
          "_phone_code": "856"
      },
      {
          "_name": "Lebanon",
          "_english_name": "Lebanon",
          "_name_code": "lb",
          "_phone_code": "961"
      },
      {
          "_name": "Saint Lucia",
          "_english_name": "Saint Lucia",
          "_name_code": "lc",
          "_phone_code": "1"
      },
      {
          "_name": "Liechtenstein",
          "_english_name": "Liechtenstein",
          "_name_code": "li",
          "_phone_code": "423"
      },
      {
          "_name": "Sri Lanka",
          "_english_name": "Sri Lanka",
          "_name_code": "lk",
          "_phone_code": "94"
      },
      {
          "_name": "Liberia",
          "_english_name": "Liberia",
          "_name_code": "lr",
          "_phone_code": "231"
      },
      {
          "_name": "Lesotho",
          "_english_name": "Lesotho",
          "_name_code": "ls",
          "_phone_code": "266"
      },
      {
          "_name": "Lithuania",
          "_english_name": "Lithuania",
          "_name_code": "lt",
          "_phone_code": "370"
      },
      {
          "_name": "Luxembourg",
          "_english_name": "Luxembourg",
          "_name_code": "lu",
          "_phone_code": "352"
      },
      {
          "_name": "Latvia",
          "_english_name": "Latvia",
          "_name_code": "lv",
          "_phone_code": "371"
      },
      {
          "_name": "Libya",
          "_english_name": "Libya",
          "_name_code": "ly",
          "_phone_code": "218"
      },
      {
          "_name": "Morocco",
          "_english_name": "Morocco",
          "_name_code": "ma",
          "_phone_code": "212"
      },
      {
          "_name": "Monaco",
          "_english_name": "Monaco",
          "_name_code": "mc",
          "_phone_code": "377"
      },
      {
          "_name": "Moldova, Republic Of",
          "_english_name": "Moldova, Republic Of",
          "_name_code": "md",
          "_phone_code": "373"
      },
      {
          "_name": "Montenegro",
          "_english_name": "Montenegro",
          "_name_code": "me",
          "_phone_code": "382"
      },
      {
          "_name": "Saint Martin",
          "_english_name": "Saint Martin",
          "_name_code": "mf",
          "_phone_code": "590"
      },
      {
          "_name": "Madagascar",
          "_english_name": "Madagascar",
          "_name_code": "mg",
          "_phone_code": "261"
      },
      {
          "_name": "Marshall Islands",
          "_english_name": "Marshall Islands",
          "_name_code": "mh",
          "_phone_code": "692"
      },
      {
          "_name": "Macedonia, The Former Yugoslav Republic Of",
          "_english_name": "Macedonia, The Former Yugoslav Republic Of",
          "_name_code": "mk",
          "_phone_code": "389"
      },
      {
          "_name": "Mali",
          "_english_name": "Mali",
          "_name_code": "ml",
          "_phone_code": "223"
      },
      {
          "_name": "Myanmar",
          "_english_name": "Myanmar",
          "_name_code": "mm",
          "_phone_code": "95"
      },
      {
          "_name": "Mongolia",
          "_english_name": "Mongolia",
          "_name_code": "mn",
          "_phone_code": "976"
      },
      {
          "_name": "Macao",
          "_english_name": "Macao",
          "_name_code": "mo",
          "_phone_code": "853"
      },
      {
          "_name": "Northern Mariana Islands",
          "_english_name": "Northern Mariana Islands",
          "_name_code": "mp",
          "_phone_code": "1"
      },
      {
          "_name": "Martinique",
          "_english_name": "Martinique",
          "_name_code": "mq",
          "_phone_code": "596"
      },
      {
          "_name": "Mauritania",
          "_english_name": "Mauritania",
          "_name_code": "mr",
          "_phone_code": "222"
      },
      {
          "_name": "Montserrat",
          "_english_name": "Montserrat",
          "_name_code": "ms",
          "_phone_code": "1"
      },
      {
          "_name": "Malta",
          "_english_name": "Malta",
          "_name_code": "mt",
          "_phone_code": "356"
      },
      {
          "_name": "Mauritius",
          "_english_name": "Mauritius",
          "_name_code": "mu",
          "_phone_code": "230"
      },
      {
          "_name": "Maldives",
          "_english_name": "Maldives",
          "_name_code": "mv",
          "_phone_code": "960"
      },
      {
          "_name": "Malawi",
          "_english_name": "Malawi",
          "_name_code": "mw",
          "_phone_code": "265"
      },
      {
          "_name": "Mexico",
          "_english_name": "Mexico",
          "_name_code": "mx",
          "_phone_code": "52"
      },
      {
          "_name": "Malaysia",
          "_english_name": "Malaysia",
          "_name_code": "my",
          "_phone_code": "60"
      },
      {
          "_name": "Mozambique",
          "_english_name": "Mozambique",
          "_name_code": "mz",
          "_phone_code": "258"
      },
      {
          "_name": "Namibia",
          "_english_name": "Namibia",
          "_name_code": "na",
          "_phone_code": "264"
      },
      {
          "_name": "New Caledonia",
          "_english_name": "New Caledonia",
          "_name_code": "nc",
          "_phone_code": "687"
      },
      {
          "_name": "Niger",
          "_english_name": "Niger",
          "_name_code": "ne",
          "_phone_code": "227"
      },
      {
          "_name": "Norfolk Islands",
          "_english_name": "Norfolk Islands",
          "_name_code": "nf",
          "_phone_code": "672"
      },
      {
          "_name": "Nigeria",
          "_english_name": "Nigeria",
          "_name_code": "ng",
          "_phone_code": "234"
      },
      {
          "_name": "Nicaragua",
          "_english_name": "Nicaragua",
          "_name_code": "ni",
          "_phone_code": "505"
      },
      {
          "_name": "Netherlands",
          "_english_name": "Netherlands",
          "_name_code": "nl",
          "_phone_code": "31"
      },
      {
          "_name": "Norway",
          "_english_name": "Norway",
          "_name_code": "no",
          "_phone_code": "47"
      },
      {
          "_name": "Nepal",
          "_english_name": "Nepal",
          "_name_code": "np",
          "_phone_code": "977"
      },
      {
          "_name": "Nauru",
          "_english_name": "Nauru",
          "_name_code": "nr",
          "_phone_code": "674"
      },
      {
          "_name": "Niue",
          "_english_name": "Niue",
          "_name_code": "nu",
          "_phone_code": "683"
      },
      {
          "_name": "New Zealand",
          "_english_name": "New Zealand",
          "_name_code": "nz",
          "_phone_code": "64"
      },
      {
          "_name": "Oman",
          "_english_name": "Oman",
          "_name_code": "om",
          "_phone_code": "968"
      },
      {
          "_name": "Panama",
          "_english_name": "Panama",
          "_name_code": "pa",
          "_phone_code": "507"
      },
      {
          "_name": "Peru",
          "_english_name": "Peru",
          "_name_code": "pe",
          "_phone_code": "51"
      },
      {
          "_name": "French Polynesia",
          "_english_name": "French Polynesia",
          "_name_code": "pf",
          "_phone_code": "689"
      },
      {
          "_name": "Papua New Guinea",
          "_english_name": "Papua New Guinea",
          "_name_code": "pg",
          "_phone_code": "675"
      },
      {
          "_name": "Philippines",
          "_english_name": "Philippines",
          "_name_code": "ph",
          "_phone_code": "63"
      },
      {
          "_name": "Pakistan",
          "_english_name": "Pakistan",
          "_name_code": "pk",
          "_phone_code": "92"
      },
      {
          "_name": "Poland",
          "_english_name": "Poland",
          "_name_code": "pl",
          "_phone_code": "48"
      },
      {
          "_name": "Saint Pierre And Miquelon",
          "_english_name": "Saint Pierre And Miquelon",
          "_name_code": "pm",
          "_phone_code": "508"
      },
      {
          "_name": "Pitcairn",
          "_english_name": "Pitcairn",
          "_name_code": "pn",
          "_phone_code": "870"
      },
      {
          "_name": "Puerto Rico",
          "_english_name": "Puerto Rico",
          "_name_code": "pr",
          "_phone_code": "1"
      },
      {
          "_name": "Palestine",
          "_english_name": "Palestine",
          "_name_code": "ps",
          "_phone_code": "970"
      },
      {
          "_name": "Portugal",
          "_english_name": "Portugal",
          "_name_code": "pt",
          "_phone_code": "351"
      },
      {
          "_name": "Palau",
          "_english_name": "Palau",
          "_name_code": "pw",
          "_phone_code": "680"
      },
      {
          "_name": "Paraguay",
          "_english_name": "Paraguay",
          "_name_code": "py",
          "_phone_code": "595"
      },
      {
          "_name": "Qatar",
          "_english_name": "Qatar",
          "_name_code": "qa",
          "_phone_code": "974"
      },
      {
          "_name": "Réunion",
          "_english_name": "Réunion",
          "_name_code": "re",
          "_phone_code": "262"
      },
      {
          "_name": "Romania",
          "_english_name": "Romania",
          "_name_code": "ro",
          "_phone_code": "40"
      },
      {
          "_name": "Serbia",
          "_english_name": "Serbia",
          "_name_code": "rs",
          "_phone_code": "381"
      },
      {
          "_name": "Russian Federation",
          "_english_name": "Russian Federation",
          "_name_code": "ru",
          "_phone_code": "7"
      },
      {
          "_name": "Rwanda",
          "_english_name": "Rwanda",
          "_name_code": "rw",
          "_phone_code": "250"
      },
      {
          "_name": "Saudi Arabia",
          "_english_name": "Saudi Arabia",
          "_name_code": "sa",
          "_phone_code": "966"
      },
      {
          "_name": "Solomon Islands",
          "_english_name": "Solomon Islands",
          "_name_code": "sb",
          "_phone_code": "677"
      },
      {
          "_name": "Seychelles",
          "_english_name": "Seychelles",
          "_name_code": "sc",
          "_phone_code": "248"
      },
      {
          "_name": "Sudan",
          "_english_name": "Sudan",
          "_name_code": "sd",
          "_phone_code": "249"
      },
      {
          "_name": "Sweden",
          "_english_name": "Sweden",
          "_name_code": "se",
          "_phone_code": "46"
      },
      {
          "_name": "Singapore",
          "_english_name": "Singapore",
          "_name_code": "sg",
          "_phone_code": "65"
      },
      {
          "_name": "Saint Helena, Ascension And Tristan Da Cunha",
          "_english_name": "Saint Helena, Ascension And Tristan Da Cunha",
          "_name_code": "sh",
          "_phone_code": "290"
      },
      {
          "_name": "Slovenia",
          "_english_name": "Slovenia",
          "_name_code": "si",
          "_phone_code": "386"
      },
      {
          "_name": "Slovakia",
          "_english_name": "Slovakia",
          "_name_code": "sk",
          "_phone_code": "421"
      },
      {
          "_name": "Sierra Leone",
          "_english_name": "Sierra Leone",
          "_name_code": "sl",
          "_phone_code": "232"
      },
      {
          "_name": "San Marino",
          "_english_name": "San Marino",
          "_name_code": "sm",
          "_phone_code": "378"
      },
      {
          "_name": "Senegal",
          "_english_name": "Senegal",
          "_name_code": "sn",
          "_phone_code": "221"
      },
      {
          "_name": "Somalia",
          "_english_name": "Somalia",
          "_name_code": "so",
          "_phone_code": "252"
      },
      {
          "_name": "Suriname",
          "_english_name": "Suriname",
          "_name_code": "sr",
          "_phone_code": "597"
      },
      {
          "_name": "Sao Tome And Principe",
          "_english_name": "Sao Tome And Principe",
          "_name_code": "st",
          "_phone_code": "239"
      },
      {
          "_name": "El Salvador",
          "_english_name": "El Salvador",
          "_name_code": "sv",
          "_phone_code": "503"
      },
      {
          "_name": "Sint Maarten",
          "_english_name": "Sint Maarten",
          "_name_code": "sx",
          "_phone_code": "1"
      },
      {
          "_name": "Syrian Arab Republic",
          "_english_name": "Syrian Arab Republic",
          "_name_code": "sy",
          "_phone_code": "963"
      },
      {
          "_name": "Swaziland",
          "_english_name": "Swaziland",
          "_name_code": "sz",
          "_phone_code": "268"
      },
      {
          "_name": "Turks and Caicos Islands",
          "_english_name": "Turks and Caicos Islands",
          "_name_code": "tc",
          "_phone_code": "1"
      },
      {
          "_name": "Chad",
          "_english_name": "Chad",
          "_name_code": "td",
          "_phone_code": "235"
      },
      {
          "_name": "Togo",
          "_english_name": "Togo",
          "_name_code": "tg",
          "_phone_code": "228"
      },
      {
          "_name": "Thailand",
          "_english_name": "Thailand",
          "_name_code": "th",
          "_phone_code": "66"
      },
      {
          "_name": "Tajikistan",
          "_english_name": "Tajikistan",
          "_name_code": "tj",
          "_phone_code": "992"
      },
      {
          "_name": "Tokelau",
          "_english_name": "Tokelau",
          "_name_code": "tk",
          "_phone_code": "690"
      },
      {
          "_name": "Timor-leste",
          "_english_name": "Timor-leste",
          "_name_code": "tl",
          "_phone_code": "670"
      },
      {
          "_name": "Turkmenistan",
          "_english_name": "Turkmenistan",
          "_name_code": "tm",
          "_phone_code": "993"
      },
      {
          "_name": "Tunisia",
          "_english_name": "Tunisia",
          "_name_code": "tn",
          "_phone_code": "216"
      },
      {
          "_name": "Tonga",
          "_english_name": "Tonga",
          "_name_code": "to",
          "_phone_code": "676"
      },
      {
          "_name": "Turkey",
          "_english_name": "Turkey",
          "_name_code": "tr",
          "_phone_code": "90"
      },
      {
          "_name": "Trinidad & Tobago",
          "_english_name": "Trinidad & Tobago",
          "_name_code": "tt",
          "_phone_code": "1"
      },
      {
          "_name": "Tuvalu",
          "_english_name": "Tuvalu",
          "_name_code": "tv",
          "_phone_code": "688"
      },
      {
          "_name": "Taiwan",
          "_english_name": "Taiwan",
          "_name_code": "tw",
          "_phone_code": "886"
      },
      {
          "_name": "Tanzania, United Republic Of",
          "_english_name": "Tanzania, United Republic Of",
          "_name_code": "tz",
          "_phone_code": "255"
      },
      {
          "_name": "Ukraine",
          "_english_name": "Ukraine",
          "_name_code": "ua",
          "_phone_code": "380"
      },
      {
          "_name": "Uganda",
          "_english_name": "Uganda",
          "_name_code": "ug",
          "_phone_code": "256"
      },
      {
          "_name": "United States",
          "_english_name": "United States (USA)",
          "_name_code": "us",
          "_phone_code": "1"
      },
      {
          "_name": "Uruguay",
          "_english_name": "Uruguay",
          "_name_code": "uy",
          "_phone_code": "598"
      },
      {
          "_name": "Uzbekistan",
          "_english_name": "Uzbekistan",
          "_name_code": "uz",
          "_phone_code": "998"
      },
      {
          "_name": "Holy See (vatican City State)",
          "_english_name": "Holy See (vatican City State)",
          "_name_code": "va",
          "_phone_code": "379"
      },
      {
          "_name": "Saint Vincent & The Grenadines",
          "_english_name": "Saint Vincent & The Grenadines",
          "_name_code": "vc",
          "_phone_code": "1"
      },
      {
          "_name": "Venezuela, Bolivarian Republic Of",
          "_english_name": "Venezuela, Bolivarian Republic Of",
          "_name_code": "ve",
          "_phone_code": "58"
      },
      {
          "_name": "British Virgin Islands",
          "_english_name": "British Virgin Islands",
          "_name_code": "vg",
          "_phone_code": "1"
      },
      {
          "_name": "US Virgin Islands",
          "_english_name": "US Virgin Islands",
          "_name_code": "vi",
          "_phone_code": "1"
      },
      {
          "_name": "Viet Nam",
          "_english_name": "Viet Nam",
          "_name_code": "vn",
          "_phone_code": "84"
      },
      {
          "_name": "Vanuatu",
          "_english_name": "Vanuatu",
          "_name_code": "vu",
          "_phone_code": "678"
      },
      {
          "_name": "Wallis And Futuna",
          "_english_name": "Wallis And Futuna",
          "_name_code": "wf",
          "_phone_code": "681"
      },
      {
          "_name": "Samoa",
          "_english_name": "Samoa",
          "_name_code": "ws",
          "_phone_code": "685"
      },
      {
          "_name": "Kosovo",
          "_english_name": "Kosovo",
          "_name_code": "xk",
          "_phone_code": "383"
      },
      {
          "_name": "Yemen",
          "_english_name": "Yemen",
          "_name_code": "ye",
          "_phone_code": "967"
      },
      {
          "_name": "Mayotte",
          "_english_name": "Mayotte",
          "_name_code": "yt",
          "_phone_code": "262"
      },
      {
          "_name": "South Africa",
          "_english_name": "South Africa",
          "_name_code": "za",
          "_phone_code": "27"
      },
      {
          "_name": "Zambia",
          "_english_name": "Zambia",
          "_name_code": "zm",
          "_phone_code": "260"
      },
      {
          "_name": "Zimbabwe",
          "_english_name": "Zimbabwe",
          "_name_code": "zw",
          "_phone_code": "263"
      }
   ]

  end
end
