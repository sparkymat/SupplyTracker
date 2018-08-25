import Action, { ConfigAction } from "../interfaces/Action";
import ServerConfig from "../models/ServerConfig";
import {
  CONFIG_FETCH_SUCCEEDED,
} from "../actions";

const merge = require("lodash/merge");

export interface SettingsState {
  config: ServerConfig;
}

const SettingsDefaultState: SettingsState = {
  config: null,
};

const reducer = (state: SettingsState = SettingsDefaultState, action: Action): SettingsState => {
	switch(action.type) {
    case CONFIG_FETCH_SUCCEEDED:
      {
        const typedAction = action as ConfigAction;
        return merge({}, state, {
          config: typedAction.serverConfig,
        });
      }
    default:
      return state;
	}
}

export default reducer;
