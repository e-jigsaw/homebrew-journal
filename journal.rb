require "formula"

class Journal < Formula
  homepage "https://github.com/e-jigsaw/journal"
  version '0.1.1'

  if Hardware.is_64_bit?
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.1/journal_darwin_amd64.zip"
    sha1 "178b960af015aaeaf95e12e9a964f387420956e6"
  else
    url "https://github.com/e-jigsaw/journal/releases/download/v0.1.1/journal_darwin_386.zip"
    sha1 "39fb512895bff623eb0fcb5c85edf88874c98a57"
  end

  depends_on :arch => :intel

  def install
    bin.install 'journal'
  end
end
