import './generalizedObserver.dart';

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListScreenState();
}

class ListScreenState extends State<ListScreen> implements StateListener {
  List<Employee> empList;

  ListScreenState() {
    //create subscription here
    var stateProvider = new StateProvider();
    stateProvider.subscribe(this);
  }

  @override
  onStateChanged(ObserverState state) {
    //Do something when you detected a change
    if (state == ObserverState.LIST_CHANGED) {
      getData();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (empList == null) {
      empList = List<Employee>();
      getData();
    }
    //other widget build method goes here.
    return null;
  }
  getdata()
  {
    // get the changed data from DB, API ...etc.
  }
}
