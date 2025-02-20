import 'package:flutter/material.dart';
import 'package:food_animation_explicit/pizza_box_container.dart';
import 'package:food_animation_explicit/top_big_image.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  // --------this class controllers--------
  late AnimationController animationController;
  late Animation<double> rotationTurn;
  // ---------another file controllers-----
  late AnimationController _animationController;
  late Animation<double> top;
// ----------Text controller---------
  late AnimationController textAnimationController;
  late Animation<double> textTop;
  late Animation<double> textColorOpacity;

  // ----------add to cart animate number-----
  late Animation<double> addtoCartAnimateTop;

  var pizza1Clicked = false;
  var pizza2Clicked = false;
  var pizza3Clicked = false;
  var pizza4Clicked = false;
  var pizza5Clicked = false;
  var pizza6Clicked = false;

  var pizza3 = 'assets/images/pizza3.png';
  var pizza2 = 'assets/images/pizza2.png';
  var pizza1 = 'assets/images/pizza1.png';
  var pizza4 = 'assets/images/pizza4.png';
  var pizza5 = 'assets/images/pizza5.png';
  var pizza6 = 'assets/images/pizza6.png';
  var pizzaNames = 'Fajita peri Pizza';
  var pizzaPrices = 1450;

  var addToCartNumber = 1;

  @override
  void initState() {
    super.initState();
    // -------------this class actions------------
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 500))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                animationController.reverse();
              } else if (status == AnimationStatus.dismissed) {
                animationController.forward();
              }
            },
          );

    rotationTurn =
        Tween<double>(begin: 1, end: 100).animate(animationController);

    // ----------another class actions--------
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _animationController.reverse();
              } else if (status == AnimationStatus.dismissed) {
                _animationController.forward();
              }
            },
          );
    // -----------Text action---------

    textAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                textAnimationController.reverse();
              } else if (status == AnimationStatus.dismissed) {
                textAnimationController.forward();
              }
            },
          );
    top = Tween<double>(begin: 2.5, end: 7).animate(_animationController);
    textTop =
        Tween<double>(begin: 20, end: 25).animate(textAnimationController);
    textColorOpacity =
        Tween<double>(begin: 1.0, end: 0.2).animate(textAnimationController);
    addtoCartAnimateTop =
        Tween<double>(begin: 9.5, end: 13).animate(textAnimationController);
  }

// ----------Animated big photo rights declaration
  double pizza1Right = -300;
  double pizza2Right = -300;
  double pizza3Right = 60;
  double pizza4Right = -300;
  double pizza5Right = -300;
  double pizza6Right = -300;
  void animateAnotherClass() {
    textAnimationController.forward();
    _animationController.forward();
  }

  void rotation() {
    animationController.forward();
  }

  // ----------pizza prices declaration
  var pizza1Price;
  var pizza2Price;
  var pizza3Price;
  var pizza4Price;
  var pizza5Price;
  var pizza6Price;

  // ---------Pizza 1
  void pizza1Method() {
    animateAnotherClass();
    setState(() {
      if (pizza3Right == 60 ||
          pizza2Right == 60 ||
          pizza4Right == 60 ||
          pizza5Right == 60 ||
          pizza6Right == 60) {
        pizza3Right = -300;
        pizza2Right = -300;

        pizza4Right = -300;
        pizza5Right = -300;
        pizza6Right = -300;
      }
      pizza1Right = 60;
      String pizza1Name = "Domino's Pizza";
      pizzaNames = pizza1Name;
      rotation();
      pizza1Price = 1870;
      pizzaPrices = pizza1Price;

      pizza1Clicked = true;
    });
  }

  // ---------Pizza 2
  void pizza2Method() {
    setState(() {
      if (pizza1Right == 60 ||
          pizza3Right == 60 ||
          pizza4Right == 60 ||
          pizza5Right == 60 ||
          pizza6Right == 60) {
        pizza1Right = -300;
        pizza3Right = -300;

        pizza4Right = -300;
        pizza5Right = -300;
        pizza6Right = -300;
      }
      pizza2Right = 60;
      rotation();
      animateAnotherClass();

      String pizza2Name = 'Supreme peri peri Pizza';
      pizzaNames = pizza2Name;
      pizza2Price = 1170;
      pizzaPrices = pizza2Price;

      pizza2Clicked = true;
    });
  }

// ---------Pizza 3
  void pizza3Method() {
    setState(() {
      if (pizza1Right == 60 ||
          pizza2Right == 60 ||
          pizza4Right == 60 ||
          pizza5Right == 60 ||
          pizza6Right == 60) {
        pizza1Right = -300;
        pizza2Right = -300;

        pizza4Right = -300;
        pizza5Right = -300;
        pizza6Right = -300;
      }
      pizza3Right = 60;
      rotation();
      animateAnotherClass();

      String pizza3Name = 'Fajita peri Pizza';
      pizzaNames = pizza3Name;
      pizza3Price = 1470;
      pizzaPrices = pizza3Price;

      pizza3Clicked = true;
    });
  }

  // ---------Pizza 4
  void pizza4Method() {
    setState(() {
      if (pizza1Right == 60 ||
          pizza2Right == 60 ||
          pizza3Right == 60 ||
          pizza5Right == 60 ||
          pizza6Right == 60) {
        pizza1Right = -300;
        pizza2Right = -300;

        pizza3Right = -300;
        pizza5Right = -300;
        pizza6Right = -300;
      }
      pizza4Right = 60;
      rotation();
      animateAnotherClass();
      String pizza4Name = 'Nawabi Pizza';
      pizzaNames = pizza4Name;
      pizza4Price = 1300;
      pizzaPrices = pizza4Price;

      pizza4Clicked = true;
    });
  }

  // ---------Pizza 5
  void pizza5Method() {
    setState(() {
      if (pizza1Right == 60 ||
          pizza2Right == 60 ||
          pizza4Right == 60 ||
          pizza3Right == 60 ||
          pizza6Right == 60) {
        pizza1Right = -300;
        pizza2Right = -300;

        pizza4Right = -300;
        pizza3Right = -300;
        pizza6Right = -300;
      }
      pizza5Right = 60;
      rotation();
      animateAnotherClass();
      String pizza5Name = 'Peri peri Pizza';
      pizzaNames = pizza5Name;
      pizza5Price = 1750;
      pizzaPrices = pizza5Price;

      pizza5Clicked = true;
    });
  }

  // ---------Pizza 6
  void pizza6Method() {
    setState(() {
      if (pizza1Right == 60 ||
          pizza2Right == 60 ||
          pizza4Right == 60 ||
          pizza5Right == 60 ||
          pizza3Right == 60) {
        pizza1Right = -300;
        pizza2Right = -300;

        pizza4Right = -300;
        pizza5Right = -300;
        pizza3Right = -300;
      }
      pizza6Right = 60;
      rotation();
      animateAnotherClass();
      pizza6Price = 2170;
      pizzaPrices = pizza5Price;
      String pizza6Name = '14 Street special Pizza';
      pizzaNames = pizza6Name;
      pizza6Clicked = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mqSize = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          toolbarHeight: mqSize.height * 0.01,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            height: mqSize.height,
            width: mqSize.width,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                    top: 20,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: mqSize.height * 0.05,
                        width: mqSize.width * 0.95,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (pizza1Clicked ||
                                    pizza2Clicked ||
                                    pizza3Clicked ||
                                    pizza4Clicked ||
                                    pizza5Clicked ||
                                    pizza6Clicked ||
                                    pizza3Right == 60)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: mqSize.width * 0.04,
                                      ),
                                      Text(
                                        "Name: ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      AnimatedBuilder(
                                        animation: _animationController,
                                        builder: (context, child) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: mqSize.width * 0.67,
                                                height: mqSize.height * 0.05,
                                                color: Colors.transparent,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Opacity(
                                                      opacity: textColorOpacity
                                                          .value,
                                                      child: FittedBox(
                                                        child: Text(
                                                          pizzaNames,
                                                          style: TextStyle(
                                                            color: Colors.amber,
                                                            fontSize:
                                                                textTop.value,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          );
                                        },
                                      )
                                    ],
                                  )
                                : Text('')
                          ],
                        ),
                      ),
                    )),
                // ------ROUDED PIZZA CONT
                // ----------PIZZA 3--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza3Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza3Clicked,
                      imgSrc: pizza3,
                    )),
                // ----------PIZZA 4--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza4Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza4Clicked,
                      imgSrc: pizza4,
                    )),
                // ----------PIZZA 5--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza5Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza5Clicked,
                      imgSrc: pizza5,
                    )),
                // ----------PIZZA 1--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza1Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza1Clicked,
                      imgSrc: pizza1,
                    )),
                // ----------PIZZA 6--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza6Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza6Clicked,
                      imgSrc: pizza6,
                    )),
                // ----------PIZZA 2--------------
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: 100,
                    right: pizza2Right,
                    child: TopImage(
                      rotationTurn: rotationTurn,
                      isClicked: pizza2Clicked,
                      imgSrc: pizza2,
                    )),

                Positioned(
                  bottom: 470,
                  child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.transparent,
                        height: mqSize.height * 0.07,
                        width: mqSize.width * 0.95,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (pizza1Clicked ||
                                    pizza2Clicked ||
                                    pizza3Clicked ||
                                    pizza4Clicked ||
                                    pizza5Clicked ||
                                    pizza6Clicked ||
                                    pizza3Right == 60)
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: mqSize.width * 0.05,
                                      ),
                                      Text(
                                        "Price: ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      AnimatedBuilder(
                                        animation: _animationController,
                                        builder: (context, child) {
                                          return Container(
                                            width: mqSize.width * 0.23,
                                            height: mqSize.height * 0.05,
                                            color: Colors.transparent,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Opacity(
                                                  opacity:
                                                      textColorOpacity.value,
                                                  child: FittedBox(
                                                    child: Text(
                                                      '$pizzaPrices RS',
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                        fontSize: textTop.value,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                      SizedBox(
                                        width: mqSize.width * 0.055,
                                      ),
                                      Flexible(
                                        child: Container(
                                          height: mqSize.height * 0.05,
                                          width: mqSize.width * 0.35,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.amber),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: IconButton(
                                                    highlightColor: Colors.amber
                                                        .withAlpha(100),
                                                    onPressed: () {
                                                      setState(() {
                                                        if (addToCartNumber >
                                                            1) {
                                                          addToCartNumber -= 1;
                                                        }
                                                        if (pizza3Clicked ||
                                                            pizza1Clicked ||
                                                            pizza2Clicked ||
                                                            pizza4Clicked ||
                                                            pizza5Clicked ||
                                                            pizza6Clicked) {
                                                          pizzaPrices =
                                                              pizzaPrices -
                                                                  pizzaPrices;
                                                        }
                                                      });
                                                    },
                                                    icon: Icon(
                                                      Icons.remove,
                                                      size: 20,
                                                      color: Colors.amber,
                                                    )),
                                              ),
                                              Flexible(
                                                child: SizedBox(
                                                  height: mqSize.height * 0.05,
                                                  width: mqSize.width * 0.1,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      AnimatedBuilder(
                                                        animation:
                                                            animationController,
                                                        builder:
                                                            (context, child) {
                                                          return Positioned(
                                                            top:
                                                                addtoCartAnimateTop
                                                                    .value,
                                                            child: Text(
                                                              addToCartNumber
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .amber),
                                                            ),
                                                          );
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: IconButton(
                                                    highlightColor: Colors.amber
                                                        .withAlpha(100),
                                                    onPressed: () {
                                                      setState(() {
                                                        if (addToCartNumber >=
                                                                1 &&
                                                            addToCartNumber <=
                                                                3) {
                                                          addToCartNumber += 1;
                                                          if (pizza3Clicked ||
                                                              pizza1Clicked ||
                                                              pizza2Clicked ||
                                                              pizza4Clicked ||
                                                              pizza5Clicked ||
                                                              pizza6Clicked) {
                                                            pizzaPrices =
                                                                pizzaPrices +
                                                                    pizzaPrices;
                                                          }
                                                        }
                                                      });
                                                    },
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 20,
                                                      color: Colors.amber,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Text(''),
                          ],
                        ),
                      )),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: mqSize.width * 0.95,
                    height: mqSize.height * 0.5,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ------------------PIZZA 3------------------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza3,
                              imgHeight: mqSize.height * 0.13,
                              imgWidth: mqSize.width * 0.33,
                              onTap: pizza3Method,
                              imgClicker: pizza3Method,
                            ),
                            // ------------------PIZZA 2------------------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza2,
                              imgHeight: mqSize.height * 0.13,
                              imgWidth: mqSize.width * 0.33,
                              onTap: pizza2Method,
                              imgClicker: pizza2Method,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ------------Pizza 4-------------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza4,
                              imgHeight: mqSize.height * 0.13,
                              imgWidth: mqSize.width * 0.33,
                              onTap: pizza4Method,
                              imgClicker: pizza4Method,
                            ),
                            // -----------pizza 5-----------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza5,
                              imgHeight: mqSize.height * 0.13,
                              imgWidth: mqSize.width * 0.33,
                              onTap: pizza5Method,
                              imgClicker: pizza5Method,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // --------------Pizza 6----------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza6,
                              imgHeight: mqSize.height * 0.13,
                              imgWidth: mqSize.width * 0.33,
                              onTap: pizza6Method,
                              imgClicker: pizza6Method,
                            ),
                            // -------------pizza 1----------
                            PizzaBox(
                              animationController: _animationController,
                              top: top,
                              imgSrc: pizza1,
                              imgHeight: mqSize.height * 0.135,
                              imgWidth: mqSize.width * 0.34,
                              onTap: pizza1Method,
                              imgClicker: pizza1Method,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
