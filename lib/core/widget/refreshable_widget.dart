import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:licenta/core/widget/widget.dart';

class RefreshableWidget extends StatefulWidget {
  const RefreshableWidget({
    super.key,
    required this.child,
    this.onRefresh,
  });

  final Widget child;
  final AsyncCallback? onRefresh;

  @override
  State<RefreshableWidget> createState() => _RefreshableWidgetState();
}

class _RefreshableWidgetState extends State<RefreshableWidget> {
  final _controller = IndicatorController();

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      controller: _controller,
      onRefresh: () async {
        return widget.onRefresh?.call();
      },
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, _) {
            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                if (!controller.isIdle)
                  Positioned(
                    top: 35.0 * controller.value,
                    child: const Loader(
                      dimension: 30,
                    ),
                  ),
                Transform.translate(
                  offset: Offset(0, 100 * controller.value),
                  child: child,
                ),
              ],
            );
          },
        );
      },
      child: widget.child,
    );
  }
}
