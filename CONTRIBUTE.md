## 🤝 Contribute

- Fork the project
- Create a new branch with your changes: `git checkout -b feature/my-feature`
- For a fix or suggestion, create a new branch with your changes: `git checkout -b fix/my-fix`
- Save your changes and create a commit message telling you what you did: `git commit -m "feature: My new feature"`
- Submit your changes: `git push origin feature/my-feature`
- Open a pull request with your branch
- After the merge of your pull request is done, you can delete your branch
- If you have any questions, please contact me at [email](mailto:contacto@jonathan.com.ar)

## 📝 Build a new version

If you are going to change a few things and want to build it to test if it works fine, you can build a new version yourself with the script inside the `utils` folder called `build_new_version.sh`

- Remember to not include anything git related
- Don't include anything sensitive

## 📝 Notes to remember

- When you are working locally you don't use absolute paths for example /usr/bin/functions since that one is going to be the final one for when the package is installed, instead you use usr/bin/functions since is part of the folder you are working on

## 🔍 What language should I use?

- Languages accepted at the moment are python and bash, if I find more ways to implement new ones for example javascript I will accept them, for now I'll go with what I consider stable
