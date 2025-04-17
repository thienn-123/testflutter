import "package:flutter/material.dart";

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App 02"),
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.info), // Thay thế Icons.abc vì không tồn tại
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Căn giữa nội dung
          children: [
            ElevatedButton(
              onPressed: () {
                print("Click me!");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              child: Text("Click me!"),
            ),

            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text("Button 2", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.black, // Thêm màu cho icon
            ),

            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white, // Thêm màu nền
              child: Icon(Icons.add),
            ),

            SizedBox(height: 20),
            //Tuỳ chỉnh
            ElevatedButton(
              onPressed: () {
                print("Click me!");
              },
              child: Text(
                "Click me!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
              ),
            ),
            ElevatedButton.icon(
                onPressed: (){},
                icon:Icon(Icons.favorite),
                label: Text("Yêu thích")
            ),
            InkWell(
                onTap:(){
                  print("Inkwell được nhấn! ");
                },
                splashColor: Colors.blue.withOpacity(0.5),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.blue),
                  ),
                  child: Text("Button tuỳ chỉnh với InkWell"),
                )
            )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        backgroundColor: Colors.white, // Thêm màu cho đồng bộ
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Đặt mặc định trang đầu tiên
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}