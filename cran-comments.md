## Test environments
- macOS 12.2.1, R 4.2.1
- Windows Server 2022, R-devel (on R-hub)
- Ubuntu Linux 20.04.1 LTS, R-release (on R-hub)
- Fedora Linux, R-devel (on R-hub)


## R CMD check results

0 errors | 0 warnings | 2 notes

```
* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Mika Braginsky <mika.br@gmail.com>’

New submission

Possibly misspelled words in DESCRIPTION:
  Mathur (8:39, 9:29, 10:3)
  VanderWeele (8:48)
```
  
* This is a new package.
* These are not misspellings.


```
* checking Rd cross-references ... NOTE
Packages unavailable to check Rd xrefs: ‘PublicationBias’, ‘phacking’, ‘rstan’
```

* This package links to functions from those packages, but can't depend on them because it is a reverse-dependency.
