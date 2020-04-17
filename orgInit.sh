sfdx force:org:create -s -f config/project-scratch-def.json -a ebikes
sfdx force:source:push
sfdx force:user:permset:assign -n ebikes
sfdx force:data:tree:import -p ./data/sample-data-plan.json
sfdx force:mdapi:deploy -d mdapiDeploy/unpackaged -w 5
sfdx force:community:publish -n E-Bikes
sfdx force:org:open