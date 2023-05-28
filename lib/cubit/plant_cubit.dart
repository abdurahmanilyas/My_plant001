import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_plant1/models/models.dart';
import 'package:my_plant1/services/services.dart';

part 'plant_state.dart';

class PlantCubit extends Cubit<PlantState> {
  PlantCubit() : super(PlantsInitial());

  Future<void> getPlants() async {
    ApiReturnValue<List<Plant>> result = await PlantServices.getPlants();

    if (result.value != null) {
      emit(PlantLoaded(result.value));
    } else {
      emit(PlantLoadingFailed(result.message));
    }
  }
}
