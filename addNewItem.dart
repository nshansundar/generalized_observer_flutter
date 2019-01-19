
// In AddNewItem widget where ever the change happens just call notify method.abstract

bool addNewItem()
{
  //Add the item to the database 

  //then notify to observers as shown below.
      StateProvider _stateProvider = StateProvider();
      _stateProvider.notify(ObserverState.LIST_CHANGED);
}