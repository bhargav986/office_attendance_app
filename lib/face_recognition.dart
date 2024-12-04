import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:camera/camera.dart';

class FaceRecognitionScreen extends StatefulWidget {
  const FaceRecognitionScreen({super.key});

  @override
  FaceRecognitionScreenState createState() => FaceRecognitionScreenState();
}

class FaceRecognitionScreenState extends State<FaceRecognitionScreen> {
  late CameraController cameraController;
  bool isCameraInitialized = false;
  final FaceDetector faceDetector = GoogleMlKit.vision.faceDetector();

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    await cameraController.initialize();
    if (!mounted) return;
    setState(() {
      isCameraInitialized = true;
    });
  }

  void detectFaces() async {
    if (!cameraController.value.isStreamingImages) {
      cameraController.startImageStream((CameraImage image) async {
        // try {
        //   // Define the image rotation
        //   final InputImageRotation imageRotation =
        //       InputImageRotationValue.fromRawValue(0) ?? InputImageRotation.rotation0deg;

        // Build the InputImage object with required metadata
        // final InputImage inputImage = InputImage.fromBytes(
        //   bytes: image.planes[0].bytes,
        //   inputImageData: InputImageData(
        //     size: Size(image.width.toDouble(), image.height.toDouble()),
        //     imageRotation: imageRotation,
        //     inputImageFormat: InputImageFormat.yuv420,
        //     planeData: image.planes.map((Plane plane) {
        //       return InputImagePlaneMetadata(
        //         bytesPerRow: plane.bytesPerRow,
        //         height: plane.height,
        //         width: plane.width,
        //       );
        //     }).toList(),
        //   ),
        // );

        // Process the image for face detection
        //   final faces = await faceDetector.processImage(inputImage);
        //
        //   if (faces.isNotEmpty) {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       SnackBar(content: Text('Face Detected! Attendance Marked.')),
        //     );
        //     cameraController.stopImageStream();
        //   }
        // } catch (e) {
        //   print('Error detecting faces: $e');
        //   }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Face Recognition'),
      ),
      body: isCameraInitialized
          ? CameraPreview(cameraController)
          : const Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        onPressed: detectFaces,
        child: const Icon(Icons.face),
      ),
    );
  }

  @override
  void dispose() {
    cameraController.dispose();
    faceDetector.close();
    super.dispose();
  }
}
