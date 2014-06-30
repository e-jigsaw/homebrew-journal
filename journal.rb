require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.2'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.2/journal_darwin_amd64.zip"
    sha1 "b40a75e22cb416e5aa97c128a5e6dd0a932b9dc6"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.2/journal_darwin_386.zip"
    sha1 "56a578cda9df98bf2d886b67d11d130d6940df48"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
