#!/bin/sh
# !!! if u have any http request level test, make sure the port is right 

# look for arguments
for var in "$@"
do
    case "${var}" in
        no-build) noBuild="no-build";;
    esac
done

# r: run command   i: image name   c: container name   p: port 
/bin/bash ./run.sh -r "/bin/bash" -i client_template_image -c client_template_commands_container -p 3008 $noBuild bash-in

# to create react app just run:
#  create-react-app ./myapp/ --template typescript    #replace 'myapp' with the name u want

# to run any npm script
#  cd into the app you created (like 'cd ./myapp') and then run waht ever u want
#  like 'npm install loadash' or 'npm start' or 'npm run test' ect..
