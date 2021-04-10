class RegistrationScreenState {
  final state;

  RegistrationScreenState(this.state);

  onChange(value, variableName){
    this.state.setState(() {
      this.state.data[variableName] = value;
      this.state.dataError[variableName] = null;
    });
  }


}