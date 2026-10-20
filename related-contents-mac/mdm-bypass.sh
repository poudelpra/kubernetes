#!/bin/bash

# Define the target file name
TARGET_FILE="/Volumes/Macintosh\ HD/etc/hosts"

# Write the multi-line content to the file
cat << 'EOF' > "$TARGET_FILE"
0.0.0.0 iprofiles.apple.com
0.0.0.0 mdmenrollment.apple.com
0.0.0.0 deviceenrollment.apple.com 

0.0.0.0 gdmf.apple.com 
0.0.0.0 albert.apple.com

0.0.0.0 acmdm.apple.com
0.0.0.0 axm-adm-enroll.apple.com
0.0.0.0 axm-adm-mdm.apple.com
0.0.0.0 axm-adm-scep.apple.com
EOF

echo "✅ Content successfully written to $TARGET_FILE"
