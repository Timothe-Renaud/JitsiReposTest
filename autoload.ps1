Write-Host "deploiment de Jitsi avec Docker"
git clone https://github.com/jitsi/docker-jitsi-meet
cd docker-jitsi-meet
cp env.example .env
./gen-passwords.sh
echo web/letsencrypt,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri | % { mkdir "~/.jitsi-meet-cfg/$_" }
docker-compose up -d
Write-Host "Voir le script autoload.ps1 pour plus d'information"
# docker-compose -f docker-compose.yml -f jigasi.yml up
# docker-compose -f docker-compose.yml -f etherpad.yml up
# docker-compose -f docker-compose.yml -f jibri.yml up -d
# docker-compose -f docker-compose.yml -f jigasi.yml -f jibri.yml up -d
