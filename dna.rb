class DNA
  def initialize(str)
    @strand = str.chars.map { |c| Nucleotid.new(c) }
  end

  def count
    @strand.group_by{ |c| c.symbol }.map{ |k, v| v.size }.sort.join(', ')
  end

  def to_rna
    @strand.map(&:rna).join
  end

  def complement
    @strand.reverse.map(&:complement).join
  end
end
