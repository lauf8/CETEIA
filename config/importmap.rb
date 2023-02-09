# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "slim-select", to: "https://ga.jspm.io/npm:slim-select@2.4.2/dist/slimselect.umd.js"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.2.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.6/lib/index.js"
pin_all_from "app/javascript/controllers", under: "controllers"
