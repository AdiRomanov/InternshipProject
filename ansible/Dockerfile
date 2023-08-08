FROM python:latest

# Install Ansible
RUN pip install ansible

# Set the working directory
WORKDIR /ansible

# Copy the playbook and inventory files to the container
COPY playbook.yml inventory.ini ./

# Run the playbook
CMD ["ansible-playbook", "-i", "inventory.ini", "playbook.yml"]
