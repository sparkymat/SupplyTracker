import { connect } from "react-redux";
import InventoryListPageView, { InventoryListPageProps } from "./components";
import { jsState } from "../reducers";

interface StateProps {
}

const mapStateToProps = (state: jsState): StateProps => ({
});

interface DispatchProps {
}

const mapDispatchToProps = (dispatch: any): DispatchProps => ({
});

const mergeProps = (stateProps: StateProps, dispatchProps: DispatchProps): InventoryListPageProps => ({
});

const InventoryListPage = connect(
	mapStateToProps,
	mapDispatchToProps,
	mergeProps,
)(InventoryListPageView);

export default InventoryListPage;
