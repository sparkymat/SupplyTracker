import { connect } from "react-redux";
import SupplyTrackerView, { SupplyTrackerProps } from "../components/SupplyTracker";
import { SupplyTrackerState } from "../reducers";
import { onAppInit } from "../actions";

const ReactLifecycleComponent = require("react-lifecycle-component");

interface StateProps {
}

const mapStateToProps = (state: SupplyTrackerState): StateProps => ({
});

interface DispatchProps {
	onAppInit(): void;
}

const mapDispatchToProps = (dispatch: any): DispatchProps => ({
	onAppInit: () => dispatch( onAppInit() ),
});

interface LifecycleProps {
  componentDidMount(): void;
}

const mergeProps = (stateProps: StateProps, dispatchProps: DispatchProps): SupplyTrackerProps & LifecycleProps => ({
	componentDidMount: dispatchProps.onAppInit,
});

const SupplyTracker = ReactLifecycleComponent.connectWithLifecycle(
	mapStateToProps,
	mapDispatchToProps,
	mergeProps,
)(SupplyTrackerView);

export default SupplyTracker;
