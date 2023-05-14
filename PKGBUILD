# Panda <panda@bredos.org>

pkgname=bredos-keyring
pkgver=20230514
pkgrel=1
pkgdesc='BredOS PGP keyring'
arch=('any')
url='https://gitlab.com/BredOS/bredos-keyring'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'bredos.gpg'
        'bredos-revoked'
        'bredos-trusted')
sha256sums=('7cfe44184eb5500103097e123083371748e6c0563b95618f3069eeb870de0e19'
            'ed26274b6f39a2a5f34bc91ddf5d2a4fde9f351a591305d8a75d7d80cd6d6a38'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '5c5e955e7abdcde8878754f66320ba28b6642ec994cf45dfeb429ea415df1f62')
pkgver() {
    date +%Y%m%d
}

package() {
	cd "${srcdir}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
