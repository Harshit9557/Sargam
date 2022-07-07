import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sangeet/constants.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double initialRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade300,
                Colors.pink.shade400,
              ],
            ),
          ),
        ),
        title: const Text(
          'Feedback',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset(
                  'assets/images/rateus.webp',
                  width: 220,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'Share your valuable feedback',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: kSignInContainerColor,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: RatingBar(
                  initialRating: initialRating,
                  itemSize: 40,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  glowColor: kSignUpContainerColor,
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: kSelectedStarColor,
                    ),
                    half: Icon(
                      Icons.star_half,
                      color: kSelectedStarColor,
                    ),
                    empty: Icon(
                      Icons.star_border_outlined,
                      color: kLightTextColor,
                    ),
                  ),
                  itemPadding: EdgeInsets.symmetric(horizontal: 3.33),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 43,
              ),
              //textfield
              TextFormField(
                minLines: 3,
                maxLines: 20,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Type here...',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kSignInContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: kSignInContainerColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kSignInContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              //send button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.shade300,
                          Colors.pink.shade400,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
