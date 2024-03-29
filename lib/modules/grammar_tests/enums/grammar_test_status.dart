enum GrammarTestStatus {
  notPassed,
  passed,
  failed,
  skipped;

  const GrammarTestStatus();

  bool get isFailed => this == failed;
  bool get isNotPassed => this == notPassed;
  bool get isPassed => this == passed;
  bool get isSkipped => this == skipped;
}
