
kubectl delete -f ingress.yml 
kubectl delete -f ui.yml 
kubectl delete -f chats_command.yml 
kubectl delete -f chats_query.yml 
kubectl delete -f posting_query.yml 
kubectl delete -f posting_command.yml 
kubectl delete -f identification_query.yml 
kubectl delete -f identification_command.yml 
kubectl delete -f evtsrc.yml 

echo "delete.sh: done"