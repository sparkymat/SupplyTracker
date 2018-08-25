import Area from "./Area";
import District from "./District";
import ItemType from "./ItemType";
import ItemCategory from "./ItemCategory";

export interface CountryInfo {
  _name:         string;
  _english_name: string;
  _name_code:    string;
  _phone_code:   string;
}

interface ServerConfig {
  areas:           Area[];
  countries:       CountryInfo[];
  districts:       District[];
  item_categories: ItemCategory[];
  item_types:      ItemType[];
}

export default ServerConfig;
