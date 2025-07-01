abstract class AppUsecase<Type, Param>
{
  Future<List<Type>> call([Param? param]);
}
