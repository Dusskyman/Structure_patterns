class Particle {
  String color;
  String shape;
  Particle(this.color, this.shape);
}

class ParticleFactory {
  List<Particle> particleList = [];
  Particle addNewParticle(String color, String shape) {
    for (var i = 0; i < particleList.length; i++) {
      if (color == particleList[i].color) {
        return particleList[i];
      }
    }
    particleList.add(Particle(color, shape));
    Particle particle = particleList.last;
    return particle;
  }
}

class ParticleCollection {
  ParticleFactory particleFactory = ParticleFactory();
  int particlesCount = 0;
  List<Particle> patcticleCollection = [];
  ParticleCollection() {
    patcticleCollection = List<Particle>();
  }
  void export() {
    patcticleCollection.forEach((element) {
      print('${element.color} ${element.shape}');
    });
  }

  void addTo(String color, String shape) {
    patcticleCollection.add(particleFactory.addNewParticle(color, shape));
    particlesCount++;
  }

  int get created => particleFactory.particleList.length;
}

main(List<String> args) {
  ParticleCollection particleCollection = ParticleCollection();
  ParticleFactory particleFactory = ParticleFactory();

  particleCollection.addTo('Red', 'Circle');
  particleCollection.addTo('Red', 'Circle');
  particleCollection.addTo('Blue', 'Square');
  particleCollection.addTo('Green', 'Square');
  particleCollection.addTo('Green', 'Square');
   particleCollection.addTo('Blue', 'Square');

  particleCollection.export();

  print('Drawed particals: ${particleCollection.particlesCount}');
  print('Created particals: ${particleCollection.created}');
}
