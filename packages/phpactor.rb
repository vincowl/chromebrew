require 'package'

class Phpactor < Package
  description 'PHP completion, refactoring and introspection tool.'
  homepage 'https://phpactor.readthedocs.io/en/develop/'
  version '0.15.0'
  source_url 'https://github.com/phpactor/phpactor/archive/0.15.0.tar.gz'
  source_sha256 '02f63e77aa435874a3e8ef11a293eb24a7ee259317dfaae3f058d8bc24e39e24'

  binary_url ({
  })
  binary_sha256 ({
  })

  depends_on 'composer'
  depends_on 'php73'

  def self.preinstall
  end

  def self.build
  end


  def self.install
    system "composer install"
    FileUtils.mkdir_p "#{CREW_PREFIX}/share/phpactor"
    FileUtils.cp_r '.', "#{CREW_PREFIX}/share/phpactor/."
    FileUtils.ln_s "#{CREW_PREFIX}/share/phpactor/bin/phpactor", "#{CREW_PREFIX}/bin/phpactor"
  end

end
