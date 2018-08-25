// import axios, { AxiosPromise } from "axios";
import { select, call, put, all, takeEvery } from "redux-saga/effects";
 import Action from "../interfaces/Action";
 import {
   ITEM_TYPE_CHANGED,
 } from "./actions";

function* itemTypeChanged(action: Action) {
  yield call(console.log, "hello");
}

function* onItemTypeChangedSaga() {
  yield takeEvery(ITEM_TYPE_CHANGED, itemTypeChanged);
}

const sagas = [
  onItemTypeChangedSaga(),
];

export default sagas;
