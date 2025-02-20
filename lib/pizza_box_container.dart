import 'package:flutter/material.dart';

class PizzaBox extends StatefulWidget {
  PizzaBox(
      {super.key,
      required this.imgSrc,
      required this.imgHeight,
      required this.imgWidth,
      required this.onTap, required this.imgClicker, required this.animationController, required this.top});
  var imgSrc;
  double imgHeight;
  double imgWidth;
  void Function()? onTap;
  void Function()? imgClicker;
  late AnimationController animationController;
  late Animation<double> top;
  @override
  State<PizzaBox> createState() => _PizzaBoxState();
}

class _PizzaBoxState extends State<PizzaBox>
    with SingleTickerProviderStateMixin {
 
 

   BoxDecoration myDecoration() {
    return BoxDecoration(
// color: Colors.amber,
      border: Border.all(width: 1, color: Colors.amber),
      borderRadius: BorderRadius.circular(20),
    );
  }
  @override
  Widget build(BuildContext context) {
    var mqSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: mqSize.width * 0.4,
        height: mqSize.height * 0.15,
        decoration: myDecoration(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              animation: widget.animationController,
              builder: (context, child) {
                return Positioned(
                  top: widget.top.value,
                  child: GestureDetector(
                    onTap: widget.imgClicker,
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: widget.imgClicker,
                        child: Container(
                          // height: widget.imgHeight,
                          // width: widget.imgWidth,
                          height: widget.imgHeight,
                          width: widget.imgWidth,
                          color: Colors.transparent,
                          child: Image.asset(
                            widget.imgSrc,
                            // height: widget.imgHeight,
                            // width: widget.imgWidth,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
