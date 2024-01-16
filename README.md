# Neovim from scratch

## Try out this config

Make sure to remove or move your current `nvim` directory

```
git clone https://github.com/archit-1997/Neovim-from-scratch.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

Each video will be associated with a branch so checkout the one you are interested in

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Amazon Linux

  ```
  still need to find out the solution
  ```

Next we need to install python support (node is optional)

- Neovim python support
  - On Macos
      ```
      pip install pynvim
      ```
  - On Amazon Linux
      ```
      pip3 install pynvim
      ```

- Neovim node support
  - On Macos
      ```
      npm i -g neovim
      ```
  - On Amazon Linux
    - Install nvm
      - https://github.com/nvm-sh/nvm
      ```
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
      ```
    - Install node 16
    ```
    nvm install 16
    ```
    - Run the below command
      ```
      npm i -g neovim
      ```
