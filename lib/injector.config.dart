// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/config/repository_config.dart' as _i8;
import 'core/data/modules/firebase_module.dart' as _i37;
import 'core/data/network/api/repositories/dio_repository.dart' as _i3;
import 'core/data/network/api/services/dio_service.dart' as _i4;
import 'core/data/network/api/services/dio_service_impl.dart' as _i5;
import 'core/data/repositories/add_incontrol_respository.dart' as _i9;
import 'core/data/repositories/authentication_repository.dart' as _i10;
import 'core/data/services/add_incontrol_service_impl.dart' as _i31;
import 'core/data/services/authentication_service_impl.dart' as _i12;
import 'core/data/services/get_computer.dart' as _i14;
import 'core/data/services/get_employee.dart' as _i16;
import 'core/data/services/get_mycomp.dart' as _i20;
import 'core/data/services/get_prof.dart' as _i22;
import 'core/data/services/get_request.dart' as _i24;
import 'core/data/services/get_workplace.dart' as _i18;
import 'core/domain/services/add_incontrol_service.dart' as _i30;
import 'core/domain/services/authentication_service.dart' as _i11;
import 'core/domain/services/getCompServ%20copy.dart' as _i19;
import 'core/domain/services/getCompServ.dart' as _i13;
import 'core/domain/services/getEmpServ.dart' as _i15;
import 'core/domain/services/getJobServ.dart' as _i17;
import 'core/domain/services/getProfServ.dart' as _i21;
import 'core/domain/services/getReqServ.dart' as _i23;
import 'core/presentation/cubit/app_cubit.dart' as _i32;
import 'features/authentication/password_recovery/presentation/cubit/password_recovery_cubit.dart'
    as _i7;
import 'features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart'
    as _i29;
import 'features/home/presentation/cubit/comp_cubit.dart' as _i33;
import 'features/home/presentation/cubit/incontrol_plans_cubit.dart' as _i34;
import 'features/home/presentation/cubit/emp_cubit.dart' as _i35;
import 'features/home/presentation/cubit/home_cubit.dart' as _i36;
import 'features/home/presentation/cubit/job_cubit.dart' as _i25;
import 'features/home/presentation/cubit/my_comp_cubit.dart' as _i26;
import 'features/home/presentation/cubit/req_cubit.dart' as _i28;
import 'features/profile/presentation/cubit/profile_cubit.dart' as _i27;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  gh.singleton<_i3.DioRepository>(_i3.DioRepositoryImpl());
  gh.singleton<_i4.DioService>(_i5.DioServiceImpl(get<_i3.DioRepository>()));
  await gh.singletonAsync<_i6.FirebaseAuth>(
    () => firebaseModule.firebaseAuth,
    preResolve: true,
  );
  gh.singleton<_i7.RecoveryPasswordCubit>(_i7.RecoveryPasswordCubit());
  gh.singleton<_i8.RepositoryConfig>(
    _i8.RepositoryConfigProd(),
    registerFor: {_prod},
  );
  gh.singleton<_i8.RepositoryConfig>(
    _i8.RepositoryConfigDev(),
    registerFor: {_dev},
  );
  gh.singleton<_i9.AddincontrolRepository>(_i9.AddincontrolRepositoryImpl(
    repositoryConfig: get<_i8.RepositoryConfig>(),
    dioService: get<_i4.DioService>(),
  ));
  gh.singleton<_i10.AuthenticationRepository>(_i10.AuthenticationRepositoryImpl(
    firebaseAuth: get<_i6.FirebaseAuth>(),
    repositoryConfig: get<_i8.RepositoryConfig>(),
    dioService: get<_i4.DioService>(),
  ));
  gh.singleton<_i11.AuthenticationService>(
    _i12.AuthenticationServiceImpl(get<_i10.AuthenticationRepository>()),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i13.GetCompServ>(
      _i14.GetComputer(get<_i9.AddincontrolRepository>()));
  gh.singleton<_i15.GetEmpServ>(
      _i16.GetEmp(get<_i9.AddincontrolRepository>()));
  gh.singleton<_i17.GetJobServ>(
      _i18.GetJob(get<_i9.AddincontrolRepository>()));
  gh.singleton<_i19.GetMyCompServ>(
      _i20.GetMyComp(get<_i9.AddincontrolRepository>()));
  gh.singleton<_i21.GetProfServ>(
      _i22.GetProf(get<_i9.AddincontrolRepository>()));
  gh.singleton<_i23.GetReqServ>(
      _i24.GetReq(get<_i9.AddincontrolRepository>()));
  gh.factory<_i25.JobCubit>(() => _i25.JobCubit(get<_i17.GetJobServ>()));
  gh.factory<_i26.MyCompCubit>(
      () => _i26.MyCompCubit(get<_i19.GetMyCompServ>()));
  gh.factory<_i27.ProfileCubit>(() => _i27.ProfileCubit(
        get<_i11.AuthenticationService>(),
        get<_i21.GetProfServ>(),
      ));
  gh.factory<_i28.ReqCubit>(() => _i28.ReqCubit(get<_i23.GetReqServ>()));
  gh.factory<_i29.SignUpCubit>(
      () => _i29.SignUpCubit(get<_i11.AuthenticationService>()));
  gh.singleton<_i30.AddincontrolService>(
      _i31.AddincontrolServiceImpl(get<_i9.AddincontrolRepository>()));
  gh.factory<_i32.AppCubit>(() =>
      _i32.AppCubit(authenticationService: get<_i11.AuthenticationService>()));
  gh.factory<_i33.CompCubit>(() => _i33.CompCubit(get<_i13.GetCompServ>()));
  gh.factory<_i34.incontrolPlansCubit>(
      () => _i34.incontrolPlansCubit(get<_i30.AddincontrolService>()));
  gh.factory<_i35.EmpCubit>(() => _i35.EmpCubit(get<_i15.GetEmpServ>()));
  gh.factory<_i36.HomeCubit>(
      () => _i36.HomeCubit(get<_i30.AddincontrolService>()));
  return get;
}

class _$FirebaseModule extends _i37.FirebaseModule {}
