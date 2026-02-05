#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
 

#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"

#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"
#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"


#!/bin/bash

# Ensure script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run this script as root"
    exit 1
fi

# -------------------------
# GROUP CREATION
# -------------------------
while true; do
    read -p "Enter new group name: " groupname

    if getent group "$groupname" > /dev/null; then
        echo "❌ Group already exists. Try another name."
    else
        groupadd "$groupname"
        echo "✅ Group '$groupname' created."
        break
    fi
done

# -------------------------
# USER CREATION
# -------------------------
while true; do
    read -p "Enter new username: " username

    if getent passwd "$username" > /dev/null; then
        echo "❌ User already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "✅ User '$username' created."
        break
    fi
done

# -------------------------
# SET PASSWORD
# -------------------------
echo "🔐 Set password for user $username"
passwd "$username"

# -------------------------
# CREATE DIRECTORY
# -------------------------
userdir="/$username"
mkdir "$userdir"

# -------------------------
# OWNERSHIP & PERMISSIONS
# -------------------------
chown "$username:$groupname" "$userdir"

# Full control for owner and group (rwxrwx---)
chmod 770 "$userdir"

# Sticky bit: only file owner can delete files
chmod +t "$userdir"

echo "✅ Directory $userdir created and configured."

echo "🎉 User management task completed successfully!"

