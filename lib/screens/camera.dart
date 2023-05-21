import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
 State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController? controller;

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      } 
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Camera Screen')),
      body: CameraPreview(controller!),
    );
  }
}