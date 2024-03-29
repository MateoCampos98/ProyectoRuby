# Pin npm packages by running ./bin/importmap

#pin "application"
#pin "@hotwired/turbo-rails", to: "turbo.min.js"
#pin "@hotwired/stimulus", to: "stimulus.min.js"
#pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
#pin_all_from "app/javascript/controllers", under: "controllers"
#pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.6.1/dist/jquery.js"
#pin "@nathanvda/cocoon", to: "https://ga.jspm.io/npm:@nathanvda/cocoon@1.2.14/cocoon.js"

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@nathanvda/cocoon", to: "https://ga.jspm.io/npm:@nathanvda/cocoon@1.2.14/cocoon.js"
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.6.0/dist/jquery.js"
pin "jquery-ui-dist", to: "https://ga.jspm.io/npm:jquery-ui-dist@1.13.1/jquery-ui.js"
pin "jqtree", to: "https://ga.jspm.io/npm:jqtree@1.6.2/lib/tree.jquery.js"