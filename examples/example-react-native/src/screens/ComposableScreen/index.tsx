import React from 'react';

import {COMPOSABLE_VIEW} from '../../constants/expression_constants';
import ExpressionView from '../../components/ExpressionView';

export default function ComposableScreen(): React.JSX.Element {
  return <ExpressionView artboardName={COMPOSABLE_VIEW} />;
}
