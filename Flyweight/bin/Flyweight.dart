class Particle {
  String color;
  String shape;
  Particle(this.color, this.shape);
}

class ParticleFactory {
  List<Particle> particleList = [];
  Particle addNewParticle(String color, String shape) {
    for (var i = 0; i < particleList.length; i++) {
      if (color == particleList[i].color && shape == particleList[i].shape) {
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
    patcticleCollection.add(
      particleFactory.addNewParticle(color, shape),
    );
  }

  int get created => particleFactory.particleList.length;
  int get drawed => patcticleCollection.length;
}

main(List<String> args) {
  ParticleCollection particleCollection = ParticleCollection();

  particleCollection.addTo('Red', 'Circle');
  particleCollection.addTo('Red', 'Circle');
  particleCollection.addTo('Blue', 'Square');
  particleCollection.addTo('Green', 'Square');
  particleCollection.addTo('Green', 'Square');
  particleCollection.addTo('Blue', 'Cirle');
  particleCollection.addTo('White', 'Cirle');
  particleCollection.addTo('White', 'Cirle');

  particleCollection.export();

  print('Drawed particals: ${particleCollection.drawed}');
  print('Created particals: ${particleCollection.created}');
}
