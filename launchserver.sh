# launch AWS instance for indiacovidforum server 
aws --profile launch ec2 run-instances --image-id ami-0863ff60ae7cb7587 --count 1 --instance-type t2.micro --key-name indiacovidforum-production --security-group-ids sg-0f5e87a31b186003c --subnet-id subnet-0e6d6f66
