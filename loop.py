---
- name: install multiple package
  hosts: ubuntu
  tasks:
  - name: update db servers
    ansible.builtin.apt:
       name: postgresql
       state: present
  - name: ensure postgresql is started 
    ansible.builtin.service:
       name: postgresql
       state: started
    

...
