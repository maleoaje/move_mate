import 'package:flutter/material.dart';
import 'package:move_mate/constants/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: primaryColor,
                size: 25,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * .68,
                child: TextFormField(
                  autofocus: false,
                  enabled: false,
                  textCapitalization: TextCapitalization.sentences,
                  textInputAction: TextInputAction.next,
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    hintText: 'Enter the receipt number...',
                    hintStyle: TextStyle(
                        color: primarygreyDark,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    filled: true,
                    focusColor: white,
                    fillColor: white,
                    hoverColor: white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        borderSide: BorderSide(color: white, width: 0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        borderSide: BorderSide(color: white, width: 0)),
                  ),
                ),
              )
            ],
          ),
          const CircleAvatar(
            backgroundColor: primaryOrange,
            child: Icon(
              Icons.receipt_outlined,
              color: white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
