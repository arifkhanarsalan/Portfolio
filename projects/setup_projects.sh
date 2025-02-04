#!/bin/bash

# Define project directories
projects=("Project2" "Project3")

# Loop through projects and create README.md
for project in "${projects[@]}"; do
    # Create the project directory if it doesn't exist
    mkdir -p "projects/$project"

    # Create the README.md file with structured content
    cat <<EOL > "projects/$project/README.md"
# 🚀 $project - Project Title

## 📌 Description  
This project contains structured documentation to explain its purpose.

## 🛠 Technologies Used  
- Technology 1  
- Technology 2  
- Technology 3  

## 🔥 Features  
- Feature 1  
- Feature 2  
- Feature 3  

## 💻 Installation  
\`\`\`bash
# Clone the repository
git clone https://github.com/arifkhanarsalan/Portfolio.git
\`\`\`

## 🚀 Usage  
\`\`\`bash
# Example usage command
python main.py
\`\`\`

## 🖼 Screenshots  
*(Add images later if applicable.)*

## 📝 License  
This project is licensed under the **MIT License**.
EOL

    echo "✅ README.md created for $project"
done

echo "🎉 All README.md files have been generated successfully!"

