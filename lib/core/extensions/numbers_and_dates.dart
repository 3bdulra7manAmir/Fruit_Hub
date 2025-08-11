extension PriceFormatter on double
{
  String toCleanString()
  {
    if (this % 1 == 0)
    {
      return toInt().toString();
    }
    return toString();
  }
}
