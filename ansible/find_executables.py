import os
import json
import sys

software_dir = sys.argv[1]
found_files = []

for root, _, files in os.walk(software_dir):
    for name in files:
        if name.lower().endswith(".exe"):
            found_files.append({"path": os.path.join(root, name), "name": name})

result = {"files": found_files}
json_output = json.dumps(result)
print(json_output)
sys.stdout.flush()  # Ensure output is flushed immediately
