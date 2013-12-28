require 'formula'

class JsonC010 < Formula
  homepage 'https://github.com/json-c/json-c/wiki'
  url 'https://github.com/downloads/json-c/json-c/json-c-0.10.tar.gz'
  sha1 'f90f643c8455da21d57b3e8866868a944a93c596'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"

    (include/'json').install 'json_object_iterator.h'
  end
end
