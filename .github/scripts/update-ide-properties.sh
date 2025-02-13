# Update settings property file
aws s3 cp s3://download.gluonhq.com/ideplugins/settings-2.10.properties /tmp --region us-east-1 --debug
sed -i "s/clientGradlePlugin=.*/clientGradlePlugin=$1/g" /tmp/settings-2.10.properties
aws s3 cp /tmp/settings-2.10.properties s3://download.gluonhq.com/ideplugins/ --acl public-read --region us-east-1 --debug