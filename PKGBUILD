# Maintainer: Archlatam <corelinuxx@mail>

pkgname=core-settings-plasma
pkgver=r3.e6c280b
pkgrel=1
pkgdesc="Configuración base de KDE de Arch Latam (instalada en /etc/skel)"
arch=('any')
url="https://github.com/archlatam/core-settings-plasma"
license=('GPL-3.0-only')
depends=('imagemagick')
optdepends=('dolphin: configuración de dolphinrc'
  'konsole: perfiles y esquema de colores de Konsole'
  'fastfetch: config.jsonc para fastfetch')
makedepends=('git')
source=("${pkgname}::git+${url}.git")
sha256sums=('SKIP')
options=('!strip')

pkgver() {
  cd "$srcdir/$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd "$srcdir/$pkgname"

  install -d "$pkgdir/etc"
  cp -a --no-preserve=ownership src/etc/skel "$pkgdir/etc/"

  # Permisos normalizados
  find "$pkgdir/etc/skel" -type d -exec chmod 755 {} +
  find "$pkgdir/etc/skel" -type f -exec chmod 644 {} +

  # Licencia
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
