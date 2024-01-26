# Panda <panda@bredos.org>

pkgname=bredos-keyring
pkgver=20240226
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
            'f13be1819185de0ef67f6409212b602b0930503f4a6972760a1e201a933c34a1'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '52a9bcb8b08920cbe3dfcab3e82faa4d1b877bb6f42e84f21609083bc162e139')
pkgver() {
    date +%Y%m%d
}

package() {
	cd "${srcdir}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
