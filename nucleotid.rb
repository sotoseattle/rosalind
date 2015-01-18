class Nucleotid
  attr_reader :symbol

  def initialize(char)
    fail 'unrecognized nucleotid' unless %w(A C G T).include? char
    @symbol = char
  end

  def rna
    return 'U' if @symbol == 'T'
    @symbol
  end

  def complement
    case @symbol
    when 'A' then 'T'
    when 'T' then 'A'
    when 'C' then 'G'
    when 'G' then 'C'
    end
  end
end

