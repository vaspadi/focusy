enum CurrentGrammarTestStatus {
  process,
  checking;

  const CurrentGrammarTestStatus();

  bool get isChecking => this == checking;
  bool get isProcess => this == process;
}
