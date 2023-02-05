# 💾 DBN-TOOLS

## 💻 With dbn-tools, you can:

- 🔍 Analyze disk usage and see which files and directories are taking up the most space.
- 🗑️ Delete temporary files and free up space on your hard drive.
- 💾 Check the usage of your system's RAM and swap memory.
- 🧰 Get detailed information about your CPU and system.
- 🗑️ Empty the recycle bin to permanently delete files.
- 🌧️ Check weather for you current location.
- 🧹 Uninstall programs you no longer need.
- 💵 Check local rate for USD-ARS.
- 🔍 Search for a specific file.
- 🍎 Download youtube videos.
- 🕰️ Check the system uptime.
- 🔒 Check open ports.

![image](./readme.png)

## 💾 Can I download the app?

- Yes! releases are being published -> [HERE](https://github.com/jd-apprentice/dbn-tools/releases)
- Check compatibility for your distro or look at the [INSTALL](./INSTALL.md) for detailed instructions

## 💡 Ideas

- New ideas are being tracked and added in this issue -> [Here](https://github.com/jd-apprentice/dbn-tools/issues/5)

## 💾 Compatibility

- Docker ✅
- Ubuntu 22.04 ✅
- Debian 11 ✅
- Arch ✅
- Fedora ❌
- Centos ❌
- Gentoo ❌
- openSUSE ❌
- Slackware ❌

## 🏳️ Flags

- `--help`: 📜 Display a help message with a list of all available options.
- `--system`: 🖥 Filters the menu to only show system utility options.
- `--esp`: 🇪🇸 Enable Spanish translation (WIP).

## 📁 Application

![APP](https://cdn.discordapp.com/attachments/875262629516546089/1071869885250011197/image.png)

## 📁 Folder structure

```
📦dbn-tools
 ┣ 📂.github
 ┃ ┗ 📂workflows
 ┃ ┃ ┗ 📜codacy.yml
 ┣ 📂DEBIAN
 ┃ ┣ 📜control
 ┣ 📂usr
 ┃ ┗ 📂bin
 ┃ ┃ ┣ 📂constants
 ┃ ┃ ┃ ┣ 📜ascii.sh
 ┃ ┃ ┣ 📂functions
 ┃ ┃ ┃ ┣ 📜delete-temp.sh
 ┃ ┃ ┗ 📜dbn-tools.sh
 ┣ 📂utils
 ┃ ┣ 📜build_new_version.sh
 ┣ 📜.gitignore
 ┣ 📜CONTRIBUTE.md
 ┣ 📜Dockerfile
 ┣ 📜INSTALL.md
 ┣ 📜LICENSE
 ┣ 📜README.md
 ┗ 📜readme.png
```

## 📁 Dependencies

- Bash
- Git
- Debtap (Arch)
- Python 3

## 🌴 Environment variables

| Variable       | Description                                                                                   |
| -------------- | --------------------------------------------------------------------------------------------- |
| `DOWNLOAD_URL` | URL to download a package get it from here -> https://github.com/jd-apprentice/dbn-tools/tags |
| `PACKAGE_NAME` | Name of the package being downloaded (is the name of the file from the other variable)        |

## 📁 Install

You can see how to install it in the following file [INSTALL](./INSTALL.md).

## 📝 License

This project is under the MIT license. See the [LICENSE](./LICENSE) for more information.

## 🤝 Contribute

For more information, check the [CONTRIBUTE](./CONTRIBUTE.md) file

## ✨ Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://jonathan.com.ar/es"><img src="https://avatars.githubusercontent.com/u/68082746?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Jonathan Dyallo</b></sub></a><br /><a href="#!" title="Code">💻</a> <a href="#!" title="Tests">⚠️</a> <a href="#!" title="Documentation">📖</a> <a href="#maintenance-jd-apprentice" title="Maintenance">🚧</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
