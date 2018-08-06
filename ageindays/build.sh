
#load settings
source config.conf

#get current directory
folder="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

#enter the folder (required to keep relative links working)
cd ${folder}

#go to directory
docker build -t "${imagename}:${version}" -f "Dockerfile" .

#done
echo '*** Image Build Completed ***'
