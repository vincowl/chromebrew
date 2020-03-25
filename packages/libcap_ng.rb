require 'package'

class Libcap_ng < Package
  description 'The libcap-ng library is intended to make programming with posix capabilities much easier than the traditional libcap library.'
  homepage 'https://people.redhat.com/sgrubb/libcap-ng'
  version '0.7.10'
  source_url 'https://people.redhat.com/sgrubb/libcap-ng/libcap-ng-0.7.10.tar.gz'
  source_sha256 'a84ca7b4e0444283ed269b7a29f5b6187f647c82e2b876636b49b9a744f0ffbf'

  binary_url ({
  })
  binary_sha256 ({
  })

  depends_on 'python3'
  
  def self.build
    system "./configure --prefix=#{CREW_PREFIX} --libdir=#{CREW_LIB_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
