require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_amd64"
    sha1 "922522ecb42245a241607e7a063647e49c83a054"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_386"
    sha1 "3ab4eb0f2815e017c21d7aa38f8ad1dcd0a2f82c"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
