## Terraform remote state example
1. Init the remote folder 
  **<code>terraform init</code>**  
2. Apply the remote folder  
  **<code>cd remote && terraform apply</code>**  
3. Move backend.tf to remote folder   
  **<code>mv backend.tf remote</code>**    
4. Update access keys and init the remote folder 
  **<code>terraform init</code>**  
5. Apply the remote folder  
  **<code>cd remote && terraform apply</code>**  
6. Terraform state file located S3
