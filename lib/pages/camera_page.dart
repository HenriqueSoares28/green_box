import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:green_box/pages/info_page.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    cameras = await availableCameras();
    if (cameras != null && cameras!.isNotEmpty) {
      _controller = CameraController(
        cameras![0],
        ResolutionPreset.high,
      );
      await _controller!.initialize();
      if (!mounted) return;
      setState(() {
        _isCameraInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Camera preview
          if (_isCameraInitialized && _controller != null)
            CameraPreview(_controller!),
          // Custom Navbar (like the one in the image)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              color: Colors.black.withOpacity(0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Image(
                      height: 40,
                      image: AssetImage('assets/images/gallery.png'),
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Functionality to access photo gallery
                    },
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_controller != null &&
                          _controller!.value.isInitialized) {
                        try {
                          // Capture the photo
                          final image = await _controller!.takePicture();
                          //todo - Add functionality to navigate to the upload page
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(50),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Image(
                      image: AssetImage('assets/images/info.png'),
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const InfoPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
