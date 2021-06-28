import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  List<String> _comments = [];

  void _addComment(String val) {
    setState(() {
      _comments.add(val);
    });
  }

  Widget _buildCommentList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < _comments.length) {
          return _buildCommentItem(_comments[index]);
        }
      },
    );
  }

  Widget _buildCommentItem(String comment) {
    return ListTile(
      title: Text(comment),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Comments"),
          ),
          body: Column(
            children: <Widget>[
              Expanded(child: _buildCommentList()),
              TextField(
                onSubmitted: (String submittedStr) {
                  _addComment(submittedStr);
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20.0),
                    hintText: "Add Comment ..."),
              ),
            ],
          )),
    );
  }
}
