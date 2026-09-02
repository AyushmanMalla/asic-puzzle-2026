# Installing Magic VLSI on macOS (Without Homebrew)

This guide walks you through compiling and installing Magic VLSI on macOS entirely from source, bypassing Homebrew. This ensures Tcl/Tk is built correctly for X11 (rather than the macOS native Aqua) and avoids package manager conflicts.

## Step 1: Install XQuartz
XQuartz provides the X11 windowing system required by Magic's graphical interface.

1. Download the latest XQuartz installer (e.g., `XQuartz-2.8.6.pkg`) from the [XQuartz GitHub Releases page](https://github.com/XQuartz/XQuartz/releases).
2. Run the `.pkg` file and follow the installation prompts.
3. **Important:** Log out and log back into your macOS account (or restart your Mac). This is required for macOS to register XQuartz as the system's X11 server and properly set the `$DISPLAY` environment variable globally.

---

## Step 2: Build Tcl for X11
We install Tcl into a custom directory (`/usr/local/opt2/tcl-tk`) so it doesn't interfere with existing macOS tools or Homebrew installations.

```bash
# Create a workspace directory
mkdir -p ~/tools && cd ~/tools

# Download and extract Tcl source
curl -L https://prdownloads.sourceforge.net/tcl/tcl8.6.10-src.tar.gz -o tcl8.6.10-src.tar.gz
tar -xzf tcl8.6.10-src.tar.gz
cd tcl8.6.10/unix

# Configure and compile
./configure --prefix=/usr/local/opt2/tcl-tk
make
sudo make install
```

---

## Step 3: Build Tk for X11 (With Surgical Path Fix)
Tk requires a specific fix during compilation to prevent macOS's dynamic linker (`dyld`) from crashing due to malformed library paths during the linking phase.

```bash
cd ~/tools

# Download and extract Tk source
curl -L https://prdownloads.sourceforge.net/tcl/tk8.6.10-src.tar.gz -o tk8.6.10-src.tar.gz
tar -xzf tk8.6.10-src.tar.gz
cd tk8.6.10/unix

# Configure the build targeting our custom Tcl and X11
./configure --prefix=/usr/local/opt2/tcl-tk \
  --with-tcl=/usr/local/opt2/tcl-tk/lib \
  --with-x \
  --x-includes=/opt/X11/include \
  --x-libraries=/opt/X11/lib
```

### Surgically Edit the Makefile
Before running `make`, you **must** edit the generated `Makefile`.

1. Open the file in a text editor (e.g., `nano Makefile`).
2. Search for the line that defines `LIB_RUNTIME_DIR`. It will look like this:
   `LIB_RUNTIME_DIR = $(libdir):/opt/X11/lib`
3. Delete the colon and X11 path so it looks **exactly** like this:
   `LIB_RUNTIME_DIR = $(libdir)`
4. Save and close the file.

Now, build and install Tk:
```bash
make clean
make
sudo make install
```

---

## Step 4: Build Magic
Clone the Magic repository and compile it using our newly built Tcl/Tk and suppressed C-flag warnings.

```bash
cd ~/tools

# Clone the Magic repository
git clone --depth 1 https://github.com/RTimothyEdwards/magic.git magic-src
cd magic-src

# Configure Magic to use our custom libraries
./configure --with-tcl=/usr/local/opt2/tcl-tk/lib \
  --with-tk=/usr/local/opt2/tcl-tk/lib \
  --x-includes=/opt/X11/include \
  --x-libraries=/opt/X11/lib \
  CFLAGS=-Wno-error=implicit-function-declaration

# Build and install
make
sudo make install
```

---

## Step 5: XQuartz Network Configuration
By default, XQuartz blocks network client connections, which Magic sometimes needs for its display forwarding.

1. Open XQuartz from the terminal or your Applications/Utilities folder:
   ```bash
   open -a XQuartz
   ```
2. In the top macOS menu bar, click **XQuartz > Settings...** (or Preferences).
3. Navigate to the **Security** tab.
4. **Check the box** next to **"Allow connections from network clients"**.
5. Quit XQuartz completely (`Cmd + Q` or right-click the dock icon and choose Quit).

---

## Step 6: Configure Display Parameters
Configure your shell environment so it knows where to find X11 tools and where to route graphical outputs.

1. Add the X11 binary path to your Zsh configuration:
   ```bash
   echo 'export PATH="/opt/X11/bin:$PATH"' >> ~/.zshrc
   source ~/.zshrc
   ```
2. Manually set the display variable for your current terminal session:
   ```bash
   export DISPLAY=:0
   ```

---

## Step 7: Launch Magic
Everything is now built and configured!

1. Start the XQuartz server in the background:
   ```bash
   open -a XQuartz
   ```
2. Wait a second or two for XQuartz to launch, then run Magic:
   ```bash
   magic
   ```

The Magic layout window and Tcl console should now open successfully!