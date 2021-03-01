abstract class XML {
  void readXML(XML xml);
}

class XMLFiles implements XML {
  final String data;
  XMLFiles(this.data);
  @override
  void readXML(XML xml) {
    print(data);
  }
}

class Adapter implements JSON {
  XMLFiles xmlFiles;
  Adapter(this.xmlFiles);
  @override
  void readJSON(JSON json) {
    print(xmlFiles.data);
  }

  @override
  void analizeJSON(JSON json) {
    print(xmlFiles.data +
        ' + Analyzed with JSONAnalyzer. Statistic finds: ${xmlFiles.data.split('').length} coincidence');
  }
}

abstract class JSON {
  void readJSON(JSON json);
  void analizeJSON(JSON json);
}

void main(List<String> args) {
  XML xml = XMLFiles('Important data');
  JSON xmlAdapter = Adapter(xml);
  xml.readXML(xml);
  // xmlAdapter.readJSON(xml);
  //Возникнет ошибка компиляции, так как метод принимает в аргументы только обьекты типа JSON
  xmlAdapter.readJSON(xmlAdapter);
  //Но используя адаптер мы можем считывать обьекты XML
  xmlAdapter.analizeJSON(xmlAdapter);
}
