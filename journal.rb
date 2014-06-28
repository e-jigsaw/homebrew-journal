require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_amd64.zip"
    sha1 "9d064afed582d938920157b9f56020511811c066"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.0/journal_darwin_386.zip"
    sha1 "28e392b144ef4d4c890d4bf209083af907c19cc1"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
