import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  // Función para abrir el enlace del repositorio en el navegador
  void _launchURL() async {
    const url = 'https://github.com/AlejandroLuna02';  // Cambia este URL por el de tu repositorio
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Logo centrado minimalista
            Center(
              child: Image.asset(
                'assets/images/logo.jpg',  // Asegúrate de que el logo esté en la carpeta assets
                height: 100,
              ),
            ),
            SizedBox(height: 40),
            // Información estilizada y simple
            Text(
              'Carrera: Ingeniería en Software',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Materia: Programación Móvil',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Grupo: A',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Jesús Alejandro Guillen Luna',  // Aquí puedes colocar tu nombre
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Matrícula: 221198',  // Coloca tu matrícula aquí
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 40),
            // Botón minimalista para ver repositorio
            ElevatedButton(
              onPressed: _launchURL,  // Llamada para abrir el repositorio
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.black87  ,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Ver Repositorio',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Botón minimalista para ir al chatbot
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla del chatbot
                Navigator.pushNamed(context, '/chat');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.black87,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Ir al Chatbot',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
