##label-Commands

kubectl get pods --show-labels

##Equality Based 


kubectl label pods label-example owner=vj 

kubectl label pods hello-blue-whale-77888b78f4-7k744 env=production


kubectl get pods -l env=development 

kubectl get pods -l owner=vj

##Set Based selectors   

kubectl get pods -l 'env in (development)'

kubectl get pods -l 'env in (production, development)'

kubectl get pods -l 'env notin (production, development)'

## Remove label

kubectl edit pods label-example

