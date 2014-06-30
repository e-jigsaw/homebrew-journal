require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.3'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.3/journal_darwin_amd64.zip"
    sha1 "d7820d55520230a31939a55e90d65c10518b3c0f"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.3/journal_darwin_386.zip"
    sha1 "ac328da0bd8a781618679bdad9fe35ef1b55059c"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
