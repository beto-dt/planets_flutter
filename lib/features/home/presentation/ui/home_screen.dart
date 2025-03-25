import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:planets_flutter/common/extension/string_hardcoded.dart';
import 'package:planets_flutter/features/home/presentation/controller/planet_controller.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(planetControllerProvider.notifier).planets());
  }

  @override
  Widget build(BuildContext context) {
    final planetState = ref.watch(planetControllerProvider);
    print('Estado actual: $planetState'); // Para debug
    return Scaffold(
      appBar: AppBar(
        title: Text('Planets'.hardcoded),
        actions: [
          // Botón de recarga opcional
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(planetControllerProvider.notifier).planets();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to setting screen
                context.push('/home/setting');
              },
              child: Text('Setting'.hardcoded),
            ),
            if (planetState.isLoading)
              const Center(child: CircularProgressIndicator()),

            if (planetState.error != null)
              Text('Error: ${planetState.error}'),

            if (planetState.planets.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: planetState.planets.length,
                itemBuilder: (context, index) {
                  final planet = planetState.planets[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Imagen del planeta
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              planet.image, // Asumiendo que tienes una propiedad imageUrl en tu modelo Planet
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  height: 200,
                                  color: Colors.grey[300],
                                  child: const Center(
                                    child: Icon(Icons.error_outline, size: 40),
                                  ),
                                );
                              },
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Container(
                                  height: 200,
                                  color: Colors.grey[200],
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            planet.name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            planet.description,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
