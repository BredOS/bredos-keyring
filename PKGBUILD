# Panda <panda@bredos.org>

pkgname=bredos-keyring
pkgver=20260108
pkgrel=1
pkgdesc='BredOS PGP keyring'
arch=('any')
url='https://github.com/BredOS/bredos-keyring'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'bredos.gpg'
        'bredos-revoked'
        'bredos-trusted')
sha256sums=('7cfe44184eb5500103097e123083371748e6c0563b95618f3069eeb870de0e19'
            '7f1412d5ad3869a280596ac60eaf29c1b19667d874178f8873351ce16a000d56'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '52a9bcb8b08920cbe3dfcab3e82faa4d1b877bb6f42e84f21609083bc162e139')
pkgver() {
    date +%Y%m%d
}

package() {
	cd "${srcdir}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
