import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TreesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFF424874), const Color(0xFFA6B1E1)],
                ),
              ),
            ),
            SingleChildScrollView(
              //widthFactor: double.infinity,
              //heightFactor: double.infinity,
              //box blanc
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      //partie cours
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Trees Course :\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '  A tree is a nonlinear data structure, compared to arrays, linked lists, stacks and queues which are linear data structures. A tree can be empty with no nodes or a tree is a structure consisting of one node called the root and zero or one or more sub trees. \n\ Spanning Trees and shortest path trees are used in routers and bridges respectively in computer networks. As a workflow for compositing digital images for visual effects. \n\ \n\ A tree is a representation of the non-linear data structure. A tree can be shown using different user-defined or primitive types of data. We can use arrays, and classes connected lists or other kinds of data structures to implement the tree. It is a group of interrelated nodes.\n\ \n\  In computer science, tree traversal (also known as tree search and walking the tree) is a form of graph traversal and refers to the process of visiting (checking and/or updating) each node in a tree data structure, exactly once. Such traversals are classified by the order in which the nodes are visited.',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
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
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Binary Tree :\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' A tree whose elements have at most 2 children . Since each element in a binary tree can have only 2 children, we typically name them the left and right child.\n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 14,
                                            ),
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
                      ),
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Binary Search tree:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' -Sorted tree\n\ -Val(leftchild) < Val(root) < Val(rightchild)\n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  new SvgPicture.asset(
                                      "assets/icons/arbre1.svg"),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Reading  a tree:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  new SvgPicture.asset(
                                      "assets/icons/arbre2.svg"),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Parcours en largeur:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'level by level (left to right): A,B,I,C,F,J,M,D,E,G,H,K,L,N,O ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '\n\ Parcours en profondeur:\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                '1-Parcours en pre-fixe: \n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' root – left child – right child.\n\ A,B,C,D,E,F,G,H,I,J,K,L,M,N,O \n\ ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '2-Parcours infixe: \n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' left child,root,right child:\n\D,C,E,B,G,FH,A,K,J,L,I,N,M,O\n\ ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '3-Parcours Postfixe: \n\ ',
                                            style: TextStyle(
                                              color: myDarkBlue,
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' left child,right child,root:\n\ D,E,C,G,H,F,B,K,L,J,N,O,M,I,A\n\ ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
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
                      ),
                      //des sous_programmes
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'procedures and functions for trees :\n\ ',
                                            style: TextStyle(
                                              color: myLightWhite,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Tree display :\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '>Procedure AFFPost(P=);\n\     Begin\n\       If P <>Nil then   \n\   Begin   \n\     AFFPost(P^.leftchild);//1   \n\     AFFPost(P^.rightchild);//2  \n\     Writeln(P^.s);//3  \n\    End;  \n\End;   ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '\n\ //for AFFINF(P=T)	1-3-2   \n\//for AFFPRE(P=T)	3-2-1  ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
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
                                  //la taille de l'arbre
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Tree size:\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' >Function Size(P=T):integer;  \n\Begin    \n\ If P=nil then Size:=0 else\n\ Size:=1+Size(P^.leftchild)+Size(P^.rightchild);   \n\End;      ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
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
                                  //fin taille
                                  //longueur
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Tree height:\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' >Function height(P=T):integer;  \n\Begin  \n\If P=nil then height:=0; elseHeight:=1+max(height(P^.leftchild),height(P^.rightchild));    \n\End;       ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
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
                                  //fin longueur
                                  //la recherche
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Search:\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' >Function Find (P=T;N:integer):Boolean;   \n\Begin   \n\If P=nil then Find:=False  \n\Else If P^.Val:=N then Find:=True  \n\Else Find:=Find(P^.leftchild) or Find:=( P^.rightchild);   \n\End;    ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
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
                                  //fin recherche
                                  //insertion
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Insertion:\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' >Procedure insert(var P=T,V:integer);  \n\ Begin  \n\If  P=Nil Then   \n\Begin  \n\New(P);  \n\P^.leftchild=nil;  \n\P^.rightchild=nil;  \n\P^.val=V;  \n\End;  \n\Else If V<P^.valThen insert(P^.leftchild,V)   \n\Else insert(P^.rightchild,V);  \n\End;\n\ ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
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
                                  //fin insertion
                                  //grand nombre
                                  Container(
                                    child: Card(
                                      color: myLightWhite,
                                      margin: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Highest  value:\n\ ',
                                                      style: TextStyle(
                                                        color: myLightBlue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' >Function High(P=T):T;   \n\Begin  \n\If P= nil then P^.leftchild=nil   \n\Else if P^.rightchild=nil then High=P   \n\Else High:=High(P^.righttchild);  \n\End; ',
                                                      style: TextStyle(
                                                        color: myDarkBlue,
                                                        fontSize: 14,
                                                      ),
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
                                  //fin grand nombre
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //fin sous_programmes
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
