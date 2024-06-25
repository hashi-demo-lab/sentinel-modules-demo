sentinel apply -trace -config=use-latest-module-versions-pass.hcl use-latest-module-versions.sentinel
sentinel apply -trace -config=use-latest-module-versions-fail.hcl use-latest-module-versions.sentinel
sentinel test -verbose check-external-http-api.sentinel

sentinel test -verbose
