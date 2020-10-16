import 'package:bairros_do_recife/bairro.dart';
import 'package:bairros_do_recife/Constants.dart';
import 'package:diacritic/diacritic.dart';

class BairrosSet {

  static const String recife = "RECIFE";
  static const String boavista = "BOA-VISTA";
  static const String cabanga = "CABANGA";
  static const String coelhos = "COELHOS";
  static const String ilhadoleite = "ILHA-DO-LEITE";
  static const String ilhajoanabezerra = "ILHA-JOANA-BEZERRA";
  static const String paissandu = "PAISSANDU";
  static const String santoamaro = "SANTO-AMARO";
  static const String santoantonio = "SANTO-ANTÔNIO1";
  static const String saojose = "SÃO-JOSÉ";
  static const String soledade = "SOLEDADE";
  static const String aguafria = "ÁGUA-FRIA";
  static const String altosantaterezinha = "ALTO-SANTA-TEREZINHA";
  static const String arruda = "ARRUDA";
  static const String beberibe = "BEBERIBE";
  static const String bombadohemeterio = "BOMBA-DO-HEMETÉRIO";
  static const String cajueiro = "CAJUEIRO";
  static const String campinadobarreto = "CAMPINA-DO-BARRETO";
  static const String campogrande = "CAMPO-GRANDE";
  static const String doisunidos = "DOIS-UNIDOS";
  static const String encruzilhada = "ENCRUZILHADA";
  static const String fundao = "FUNDÃO";
  static const String hipodromo = "HIPÓDROMO";
  static const String linhadotiro = "LINHA-DO-TIRO";
  static const String peixinhos = "PEIXINHOS";
  static const String pontodeparada = "PONTO-DE-PARADA";
  static const String portodamadeira = "PORTO-DA-MADEIRA";
  static const String rosarinho = "ROSARINHO";
  static const String torreao = "TORREÃO";
  static const String aflitos = "AFLITOS";
  static const String altodomandu = "ALTO-DO-MANDU";
  static const String altojosebonifacio = "ALTO-JOSÉ-BONIFÁCIO";
  static const String altojosedopinho = "ALTO-JOSÉ-DO-PINHO";
  static const String apipucos = "APIPUCOS";
  static const String brejodaguabiraba = "BREJO-DA-GUABIRABA";
  static const String brejodobeberibe = "BREJO-DO-BEBERIBE";
  static const String casaamarela = "CASA-AMARELA";
  static const String casaforte = "CASA-FORTE";
  static const String corregodojenipapo = "CÓRREGO-DO-JENIPAPO";
  static const String derby = "DERBY";
  static const String doisirmaos = "DOIS-IRMÃOS";
  static const String espinheiro = "ESPINHEIRO";
  static const String gracas = "GRAÇAS";
  static const String guabiraba = "GUABIRABA";
  static const String jaqueira = "JAQUEIRA";
  static const String macaxeira = "MACAXEIRA";
  static const String mangabeira = "MANGABEIRA";
  static const String monteiro = "MONTEIRO";
  static const String morrodaconceicao = "MORRO-DA-CONCEIÇÃO";
  static const String novadescoberta = "NOVA-DESCOBERTA";
  static const String parnamirim = "PARNAMIRIM";
  static const String passarinho = "PASSARINHO";
  static const String paudeferro = "PAU-DE-FERRO";
  static const String pocodepanela = "POÇO-DE-PANELA";
  static const String santana = "SANTANA";
  static const String sitiodospintos = "SÍTIO-DOS-PINTOS";
  static const String tamarineira = "TAMARINEIRA";
  static const String vascodagama = "VASCO-DA-GAMA";
  static const String caxanga = "CAXANGÁ";
  static const String cidadeuniversitaria = "CIDADE-UNIVERSITÁRIA";
  static const String cordeiro = "CORDEIRO";
  static const String engenhodomeio = "ENGENHO-DO-MEIO";
  static const String ilhadoretiro = "ILHA-DO-RETIRO";
  static const String iputinga = "IPUTINGA";
  static const String madalena = "MADALENA";
  static const String prado = "PRADO";
  static const String torre = "TORRE";
  static const String torroes = "TORRÕES";
  static const String varzea = "VÁRZEA";
  static const String zumbi = "ZUMBI";
  static const String afogados = "AFOGADOS";
  static const String areias = "AREIAS";
  static const String barro = "BARRO";
  static const String bongi = "BONGI";
  static const String cacote = "CAÇOTE";
  static const String coqueiral = "COQUEIRAL";
  static const String curado = "CURADO";
  static const String estancia = "ESTÂNCIA";
  static const String jardimsaopaulo = "JARDIM-SÃO-PAULO";
  static const String jiquia = "JIQUIÁ";
  static const String mangueira = "MANGUEIRA";
  static const String mustardinha = "MUSTARDINHA";
  static const String sanmartin = "SAN-MARTIN";
  static const String sancho = "SANCHO";
  static const String tejipio = "TEJIPIÓ";
  static const String toto = "TOTÓ";
  static const String boaviagem = "BOA-VIAGEM";
  static const String brasiliateimosa = "BRASÍLIA-TEIMOSA";
  static const String cohab = "COHAB";
  static const String ibura = "IBURA";
  static const String imbiribeira = "IMBIRIBEIRA";
  static const String ipsep = "IPSEP";
  static const String jordao = "JORDÃO";
  static const String pina = "PINA";

  static List<Bairro> _bairros = [
  Bairro(Constants.BairroRecife, Constants.RPA1, '270 hectare²', 'avestruz.mp4', '$recife.jpg'),
  Bairro(Constants.BoaVista, Constants.RPA1, '176 hectare²', 'avestruz.mp4', '$boavista.jpg'),
  Bairro(Constants.Cabanga, Constants.RPA1, '81 hectare²', 'avestruz.mp4', '$cabanga.jpg'),
  Bairro(Constants.Coelhos, Constants.RPA1, '43 hectare²', 'avestruz.mp4', '$coelhos.jpg'),
  Bairro(Constants.IlhaLeite, Constants.RPA1, '26 hectare²', 'avestruz.mp4', '$ilhadoleite.jpg'),
  Bairro(Constants.IlhaJoanaBezerra, Constants.RPA1, '87 hectare²', 'avestruz.mp4', '$ilhajoanabezerra.jpg'),
  Bairro(Constants.Paissandu, Constants.RPA1, '34 hectare²', 'avestruz.mp4', '$paissandu.jpg'),
  Bairro(Constants.SantoAmaro, Constants.RPA1, '380 hectare²', 'avestruz.mp4', '$santoamaro.jpg'),
  Bairro(Constants.SantoAntonio, Constants.RPA1, '81 hectare²', 'avestruz.mp4', '$santoantonio.jpg'),
  Bairro(Constants.SaoJose, Constants.RPA1, '326 hectare²', 'avestruz.mp4', '$saojose.jpg'),
  Bairro(Constants.Soledade, Constants.RPA1, '32 hectare²', 'avestruz.mp4', '$soledade.jpg'),

  Bairro(Constants.AguaFria, Constants.RPA2, '193 hectare²', 'avestruz.mp4', '$aguafria.jpg'),
  Bairro(Constants.AltoSantaTerezinha, Constants.RPA2, '31 hectare²', 'avestruz.mp4', '$altosantaterezinha.jpg'),
  Bairro(Constants.Arruda, Constants.RPA2, '100 hectare²', 'avestruz.mp4', '$arruda.jpg'),
  Bairro(Constants.Beberibe, Constants.RPA2, '49 hectare²', 'avestruz.mp4', '$beberibe.jpg'),
  Bairro(Constants.BombaHemeterio, Constants.RPA2, '43 hectare²', 'avestruz.mp4', '$bombadohemeterio.jpg'),
  Bairro(Constants.Cajueiro, Constants.RPA2, '59 hectare²', 'avestruz.mp4', '$cajueiro.jpg'),
  Bairro(Constants.CampinaBarreto, Constants.RPA2, '52 hectare²', 'avestruz.mp4', '$campinadobarreto.jpg'),
  Bairro(Constants.CampoGrande, Constants.RPA2, '222 hectare²', 'avestruz.mp4', '$campogrande.jpg'),
  Bairro(Constants.DoisUnidos, Constants.RPA2, '312 hectare²', 'avestruz.mp4', '$doisunidos.jpg'),
  Bairro(Constants.Encruzilhada, Constants.RPA2, '102 hectare²', 'avestruz.mp4', '$encruzilhada.jpg'),
  Bairro(Constants.Fundao, Constants.RPA2, '62 hectare²', 'avestruz.mp4', '$fundao.jpg'),
  Bairro(Constants.Hipodromo, Constants.RPA2, '30 hectare²', 'avestruz.mp4', '$hipodromo.jpg'),
  Bairro(Constants.LinhaTiro, Constants.RPA2, '82 hectare²', 'avestruz.mp4', '$linhadotiro.jpg'),
  Bairro(Constants.Peixinhos, Constants.RPA2, '34 hectare²', 'avestruz.mp4', '$peixinhos.jpg'),
  Bairro(Constants.PontoParada, Constants.RPA2, '20 hectare²', 'avestruz.mp4', '$pontodeparada.jpg'),
  Bairro(Constants.PortoMadeira, Constants.RPA2, '48 hectare²', 'avestruz.mp4', '$portodamadeira.jpg'),
  Bairro(Constants.Rosarinho, Constants.RPA2, '25 hectare²', 'avestruz.mp4', '$rosarinho.jpg'),
  Bairro(Constants.Torreao, Constants.RPA2, '16 hectare²', 'avestruz.mp4', '$torreao.jpg'),

  Bairro(Constants.Aflitos, Constants.RPA3, '31 hectare²', 'avestruz.mp4', '$aflitos.jpg'),
  Bairro(Constants.AltoMandu, Constants.RPA3, '25 hectare²', 'avestruz.mp4', '$altodomandu.jpg'),
  Bairro(Constants.AltoJoseBonifacio, Constants.RPA3, '57 hectare²', 'avestruz.mp4', '$altojosebonifacio.jpg'),
  Bairro(Constants.AltoJosePinho, Constants.RPA3, '41 hectare²', 'avestruz.mp4', '$altojosedopinho.jpg'),
  Bairro(Constants.Apipucos, Constants.RPA3, '134 hectare²', 'avestruz.mp4', '$apipucos.jpg'),
  Bairro(Constants.BrejoGuabiraba, Constants.RPA3, '75 hectare²', 'avestruz.mp4', '$brejodaguabiraba.jpg'),
  Bairro(Constants.BrejoBeberibe, Constants.RPA3, '64 hectare²', 'avestruz.mp4', '$brejodobeberibe.jpg'),
  Bairro(Constants.CasaAmarela, Constants.RPA3, '188 hectare²', 'avestruz.mp4', '$casaamarela.jpg'),
  Bairro(Constants.CasaForte, Constants.RPA3, '56 hectare²', 'avestruz.mp4', '$casaforte.jpg'),
  Bairro(Constants.CorregoJenipapo, Constants.RPA3, '61 hectare²', 'avestruz.mp4', '$corregodojenipapo.jpg'),
  Bairro(Constants.Derby, Constants.RPA3, '47 hectare²', 'avestruz.mp4', '$derby.jpg'),
  Bairro(Constants.DoisIrmaos, Constants.RPA3, '585 hectare²', 'avestruz.mp4', '$doisirmaos.jpg'),
  Bairro(Constants.Espinheiro, Constants.RPA3, '73 hectare²', 'avestruz.mp4', '$espinheiro.jpg'),
  Bairro(Constants.Gracas, Constants.RPA3, '144 hectare²', 'avestruz.mp4', '$gracas.jpg'),
  Bairro(Constants.Guabiraba, Constants.RPA3, '4617 hectare²', 'avestruz.mp4', '$guabiraba.jpg'),
  Bairro(Constants.Jaqueira, Constants.RPA3, '24 hectare²', 'avestruz.mp4', '$jaqueira.jpg'),
  Bairro(Constants.Macaxeira, Constants.RPA3, '125 hectare²', 'avestruz.mp4', '$macaxeira.jpg'),
  Bairro(Constants.Mangabeira, Constants.RPA3, '29 hectare²', 'avestruz.mp4', '$mangabeira.jpg'),
  Bairro(Constants.Monteiro, Constants.RPA3, '53 hectare²', 'avestruz.mp4', '$monteiro.jpg'),
  Bairro(Constants.MorroConceicao, Constants.RPA3, '38 hectare²', 'avestruz.mp4', '$morrodaconceicao.jpg'),
  Bairro(Constants.NovaDescoberta, Constants.RPA3, '180 hectare²', 'avestruz.mp4', '$novadescoberta.jpg'),
  Bairro(Constants.Parnamirim, Constants.RPA3, '61 hectare²', 'avestruz.mp4', '$parnamirim.jpg'),
  Bairro(Constants.Passarinho, Constants.RPA3, '406 hectare²', 'avestruz.mp4', '$passarinho.jpg'),
  Bairro(Constants.PauFerro, Constants.RPA3, '44 hectare²', 'avestruz.mp4', '$paudeferro.jpg'),
  Bairro(Constants.PocoPanela, Constants.RPA3, '81 hectare²', 'avestruz.mp4', '$pocodepanela.jpg'),
  Bairro(Constants.Santana, Constants.RPA3, '47 hectare²', 'avestruz.mp4', '$santana.jpg'),
  Bairro(Constants.SitioPintos, Constants.RPA3, '180 hectare²', 'avestruz.mp4', '$sitiodospintos.jpg'),
  Bairro(Constants.Tamarineira, Constants.RPA3, '102 hectare²', 'avestruz.mp4', '$tamarineira.jpg'),
  Bairro(Constants.VascoGama, Constants.RPA3, '160 hectare²', 'avestruz.mp4', '$vascodagama.jpg'),

  Bairro(Constants.Caxanga, Constants.RPA4, '244 hectare²', 'avestruz.mp4', '$caxanga.jpg'),
  Bairro(Constants.CidadeUniversitaria, Constants.RPA4, '162 hectare²', 'avestruz.mp4', '$cidadeuniversitaria.jpg'),
  Bairro(Constants.Cordeiro, Constants.RPA4, '340 hectare²', 'avestruz.mp4', '$cordeiro.jpg'),
  Bairro(Constants.EngenhoMeio, Constants.RPA4, '87 hectare²', 'avestruz.mp4', '$engenhodomeio.jpg'),
  Bairro(Constants.IlhaRetiro, Constants.RPA4, '54 hectare²', 'avestruz.mp4', '$ilhadoretiro.jpg'),
  Bairro(Constants.Iputinga, Constants.RPA4, '434 hectare²', 'avestruz.mp4', '$iputinga.jpg'),
  Bairro(Constants.Madalena, Constants.RPA4, '183 hectare²', 'avestruz.mp4', '$madalena.jpg'),
  Bairro(Constants.Prado, Constants.RPA4, '127 hectare²', 'avestruz.mp4', '$prado.jpg'),
  Bairro(Constants.Torre, Constants.RPA4, '117 hectare²', 'avestruz.mp4', '$torre.jpg'),
  Bairro(Constants.Torroes, Constants.RPA4, '168 hectare²', 'avestruz.mp4', '$torroes.jpg'),
  Bairro(Constants.Varzea, Constants.RPA4, '2255 hectare²', 'avestruz.mp4', '$varzea.jpg'),
  Bairro(Constants.Zumbi, Constants.RPA4, '41 hectare²', 'avestruz.mp4', '$zumbi.jpg'),

  Bairro(Constants.Afogados, Constants.RPA5, '369 hectare²', 'avestruz.mp4', '$afogados.jpg'),
  Bairro(Constants.Areias, Constants.RPA5, '240 hectare²', 'avestruz.mp4', '$areias.jpg'),
  Bairro(Constants.Barro, Constants.RPA5, '454 hectare²', 'avestruz.mp4', '$barro.jpg'),
  Bairro(Constants.Bongi, Constants.RPA5, '60 hectare²', 'avestruz.mp4', '$bongi.jpg'),
  Bairro(Constants.Cacote, Constants.RPA5, '46 hectare²', 'avestruz.mp4', '$cacote.jpg'),
  Bairro(Constants.Coqueiral, Constants.RPA5, '51 hectare²', 'avestruz.mp4', '$coqueiral.jpg'),
  Bairro(Constants.Curado, Constants.RPA5, '798 hectare²', 'avestruz.mp4', '$curado.jpg'),
  Bairro(Constants.Estancia, Constants.RPA5, '81 hectare²', 'avestruz.mp4', '$estancia.jpg'),
  Bairro(Constants.JardimSaoPaulo, Constants.RPA5, '259 hectare²', 'avestruz.mp4', '$jardimsaopaulo.jpg'),
  Bairro(Constants.Jiquia, Constants.RPA5, '170 hectare²', 'avestruz.mp4', '$jiquia.jpg'),
  Bairro(Constants.Mangueira, Constants.RPA5, '31 hectare²', 'avestruz.mp4', '$mangueira.jpg'),
  Bairro(Constants.Mustardinha, Constants.RPA5, '63 hectare²', 'avestruz.mp4', '$mustardinha.jpg'),
  Bairro(Constants.SanMartin, Constants.RPA5, '203 hectare²', 'avestruz.mp4', '$sanmartin.jpg'),
  Bairro(Constants.Sancho, Constants.RPA5, '63 hectare²', 'avestruz.mp4', '$sancho.jpg'),
  Bairro(Constants.Tejipio, Constants.RPA5, '94 hectare²', 'avestruz.mp4', '$tejipio.jpg'),
  Bairro(Constants.Toto, Constants.RPA5, '14 hectare²', 'avestruz.mp4', '$toto.jpg'),

  Bairro(Constants.BoaViagem, Constants.RPA6, '753 hectare²', 'avestruz.mp4', '$boaviagem.jpg'),
  Bairro(Constants.BrasiliaTeimosa, Constants.RPA6, '61 hectare²', 'avestruz.mp4', '$brasiliateimosa.jpg'),
  Bairro(Constants.Cohab, Constants.RPA6, '426 hectare²', 'avestruz.mp4', '$cohab.jpg'),
  Bairro(Constants.Ibura, Constants.RPA6, '1019 hectare²', 'avestruz.mp4', '$ibura.jpg'),
  Bairro(Constants.Imbiribeira, Constants.RPA6, '666 hectare²', 'avestruz.mp4', '$imbiribeira.jpg'),
  Bairro(Constants.Ipsep, Constants.RPA6, '180 hectare²', 'avestruz.mp4', '$ipsep.jpg'),
  Bairro(Constants.Jordao, Constants.RPA6, '158 hectare²', 'avestruz.mp4', '$jordao.jpg'),
  Bairro(Constants.Pina, Constants.RPA6, '629 hectare²', 'avestruz.mp4', '$pina.jpg'),
  ];

  static List<Bairro> getBairros() {
    _bairros.sort((a, b) =>
        removeDiacritics(a.name).compareTo(removeDiacritics(b.name)));
    return _bairros;
  }

  static Bairro getBairroFromName(String name) {
    for (var i = 0; i < _bairros.length; i++) {
      if (name == _bairros[i].name) {
        return _bairros[i];
      }
    }
  }
}