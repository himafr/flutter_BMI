import "package:flutter/material.dart";

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key, required this.colour , this.child,required this.onPress});
  final Color colour;
  final Widget? child;
  final  Function  onPress ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>{ onPress()},
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        color:colour,
        borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
class MyContainer1 extends StatelessWidget {
  const MyContainer1({
    super.key, required this.colour , this.child,});
  final Color colour;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      color:colour,
      borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
