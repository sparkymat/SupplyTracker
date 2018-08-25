import { combineReducers } from "redux";
import InventoryListPageReducer, { InventoryListPageState } from "../InventoryListPage/reducer";
import SettingsReducer, { SettingsState } from "./settings";

export interface SupplyTrackerState {
  InventoryListPage: InventoryListPageState;
  settings:          SettingsState;
}

const rootReducer = combineReducers({
  InventoryListPage: InventoryListPageReducer,
  settings:          SettingsReducer,
});

export default rootReducer;
