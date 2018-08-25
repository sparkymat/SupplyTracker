import axios, { AxiosResponse, AxiosError } from "axios";
import { select, call, put, all, takeEvery } from "redux-saga/effects";
import Action from "../interfaces/Action";
import {
	ON_APP_INIT,
  FETCH_CONFIG,
	fetchConfig as fetchConfigAction,
  configFetchStarted,
  configFetchSucceeded,
  configFetchFailed,
} from "../actions";
import InventoryListPageSagas from "../InventoryListPage/sagas";
import ServerConfig from "../models/ServerConfig";

function* fetchConfig(action: Action) {
  yield put(configFetchStarted());

  try {
    const response: AxiosResponse = yield axios.get(`/api/config`)
    const config = response.data as ServerConfig;
    yield put(configFetchSucceeded(config));
  } catch(e) {
    yield put(configFetchFailed());
  }
}

function* initialiseApp(action: Action) {
	yield put(fetchConfigAction());
}

function* onFetchConfig() {
  yield takeEvery(FETCH_CONFIG, fetchConfig);
}

function* onAppInit() {
	yield takeEvery(ON_APP_INIT, initialiseApp);
}

export default function* root() {
	let sagas = [
	  onAppInit(),
    onFetchConfig(),
	];

	//sagas = sagas.concat(PageSagas);
  sagas = sagas.concat(InventoryListPageSagas);

	yield all(sagas);
}
