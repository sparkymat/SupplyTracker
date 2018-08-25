import Action from "../interfaces/Action";

export const ITEM_TYPE_CHANGED = "ITEM_TYPE_CHANGED";
export const itemTypeChanged = (): Action => ({
  type: ITEM_TYPE_CHANGED,
});
