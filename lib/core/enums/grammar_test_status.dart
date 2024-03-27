enum GrammarTestStatus {
  notPassed,
  passed,
  skipped;

  const GrammarTestStatus();

  bool get isNotPassed => this == notPassed;
  bool get isPassed => this == passed;
  bool get isSkipped => this == skipped;
}
