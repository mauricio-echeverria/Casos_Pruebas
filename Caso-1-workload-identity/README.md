# Workload_Identity_Terraform

1) Instalar Terraform version v0.14.8
2) Tener disponible un proyecto GCP 
3) Una service account para crear recursos en GCP.


* Generate environment.sh file to store terraform environment variables.

    ```yaml

    export TF_VAR_project_id="[PROJECT ID]"
    ```

* start terraform files:
    ```yaml
       terraform init
    ```

* Execute terraform plan:
    ```yaml
        terraform plan -var-file=environments/dev.tfvars 
    ```

* Run terraform apply to execute the changes:
    ```yaml
        terraform apply -var-file=environments/dev.tfvars
    ```