require "spec_helper"
require_relative "../lib/hamming"

describe "hamming" do
  it "calculates the distance between identical strands" do
    expect(hamming("A", "A")).to eq(0)
  end

  it "calculates the distance for single nucleotide strand" do
    pending
    expect(hamming("A", "G")).to eq(1)
  end

  it "calculates the distance between small strands" do
    pending
    expect(hamming("AG", "CT")).to eq(2)
  end

  it "calculates the distance between two other small strands" do
    pending
    expect(hamming("AT", "CT")).to eq(1)
  end

  it "calculates the distance in longer strands" do
    pending
    expect(hamming("GGACG", "GGTCG")).to eq(1)
  end

  it "ignores the extra length in the first strand when it is longer" do
    pending
    expect(hamming("AAAG", "AAA")).to eq(0)
  end

  it "ignores the extra length in the second strand when it is longer" do
    pending
    expect(hamming("AAA", "AAAG")).to eq(0)
  end
end
