import 'package:flutter/material.dart';
import 'package:informate/data/const/const.dart';

class ScalingDialog extends StatefulWidget {
  const ScalingDialog({
    super.key,
    required this.child,
    this.closeDialog,
  });
  final Widget child;
  final void Function(Function)? closeDialog;

  @override
  State<ScalingDialog> createState() => _ScalingDialogState();
}

class _ScalingDialogState extends State<ScalingDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _closeDialog() {
    _animationController.reverse().then((value) {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.closeDialog?.call(_closeDialog);
    final size = MediaQuery.of(context).size;
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusDefault),
        ),
        child: SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.7,
          child: widget.child,
        ),
      ),
    );
  }
}
