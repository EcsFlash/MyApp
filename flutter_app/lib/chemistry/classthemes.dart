import 'package:flutter_app/screens.dart';
import 'package:flutter_app/chemistry/chemistry8.dart';
abstract class ChemistryThemes{
  static var chemistry8 = {
    'Массовая доля э-та':theme(data: Chemistry8.mass_fraction_element),
    'Количество вещества':theme(data: Chemistry8.value_of_substates,),
    'Массовая доля вещ-ва':theme(data:Chemistry8.mass_fraction_of_a_substances,),
    'Теория электролитической диссоциации':theme(data: Chemistry8.electodisso),
  };
}