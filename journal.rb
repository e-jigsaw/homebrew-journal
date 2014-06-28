require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_amd64"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_386"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
