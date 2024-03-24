import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_counter/explainer/explainer_view.dart';
import 'package:stacked/stacked.dart';

import 'goal_selection_viewmodel.dart';

Map<String, _ExplainViewArguments> explainerDetails = {
  'training': _ExplainViewArguments(
    title: 'LET\'S GET YOU IN 1ST PLACE',
    description: '''Par timing is ued by 40% of top placing shoorters.

Use our app to make training for competitions simple and effective.
''',
    cta: 'Start Training',
  ),
  'indies': _ExplainViewArguments(
    title: 'GOTTA BE READY FOR ANYTHING',
    description: '''Protecting the indies is a full-time job.

Let's get you ready to deliver on your promise.
''',
    cta: 'Start Training',
  ),
  'sharp': _ExplainViewArguments(
    title: 'SHOOTING SKILL NEED PRACTICE',
    description:
        '''With our multi-sound timer you can easily time your shots during practice.
''',
    cta: 'Start Training',
  ),
};

class _ExplainViewArguments {
  final String title;
  final String description;
  final String cta;

  _ExplainViewArguments({
    required this.title,
    required this.description,
    required this.cta,
  });
}

class GoalSelectionView extends StackedView<GoalSelectionViewModel> {
  const GoalSelectionView({super.key});

  @override
  Widget builder(
    BuildContext context,
    GoalSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: RiveAnimation.asset(
        'assets/onboarding-selection-list.riv',
        artboard: 'goal-view',
        fit: BoxFit.cover,
        onInit: (Artboard artboard) {
          final controller = StateMachineController.fromArtboard(
            artboard,
            'GoalStateMachine',
          );

          controller?.addEventListener((event) {
            final isGoalEvent = event.properties.containsKey('goalId');

            if (isGoalEvent) {
              final eventId = event.properties['goalId']!;

              _ExplainViewArguments arguments = explainerDetails[eventId]!;

              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (_) => ExplainerView(
                    title: arguments.title,
                    description: arguments.description,
                    cta: arguments.cta,
                  ),
                ));
              });
            }
          });

          artboard.addController(controller!);
        },
      ),
    );
  }

  @override
  GoalSelectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoalSelectionViewModel();
}
