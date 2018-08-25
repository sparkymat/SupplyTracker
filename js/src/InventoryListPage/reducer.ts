import Action from "../interfaces/Action";

export interface InventoryListPageState {
}

const InventoryListPageDefaultState: InventoryListPageState = {
};

const reducer = (state: InventoryListPageState = InventoryListPageDefaultState, action: Action): InventoryListPageState => {
	switch(action.type) {
	default:
		return state;
	}
}

export default reducer;
