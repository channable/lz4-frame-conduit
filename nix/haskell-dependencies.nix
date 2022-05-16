haskellPackages:
  with haskellPackages; [
    conduit
    conduit-extra
    inline-c
    optparse-applicative
    raw-strings-qq
    resourcet
    unliftio
    unliftio-core

    # Tests
    QuickCheck
    hspec
  ]
