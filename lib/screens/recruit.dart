import 'package:flutter/material.dart';

class RecruitPage extends StatefulWidget {
  const RecruitPage({Key? key}) : super(key: key);

  @override
  _RecruitPageState createState() => _RecruitPageState();
}

class _RecruitPageState extends State<RecruitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("모집글 게시판")),
      body: const Center(
        child: Text("게시물이 없습니다.")
      ),
    );
  }
}

