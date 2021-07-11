# sfc-digifab (Data for laser cutter)

This is a product I created for the SFC class "Digital Fabrication (2021 Spring)".

---

## connect USB, copy data

It's hard to have to add data to the laser cutter every time, so you can use the following Shell Script

- Copy Shell Script to `/etc/udev/` .
- Copy the `autoexec` file to USB
  - **hands-up**: Set wordtype: `UTF-8` and returnType: `LF`.

Now, when you stick the USB in, it will automatically copy the files!
