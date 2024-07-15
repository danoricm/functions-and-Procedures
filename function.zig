// function.zig
const std = @import("std");

fn myFunction(param: i32) i32 {
    var x = param;
    x += 10;
    if (x > 15) {
        x -= 5;
    } else {
        x += 5;
    }
    var i: i32 = 0;
    while (i < 3) : (i += 1) {
        x += i;
    }
    return x;
}

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();
    stdout.print("Enter an integer: ", .{}) catch {};
    var input: [128]u8 = undefined;
    const len = stdin.readUntilDelimiterOrEof(input[0..], '\n') catch {};
    const param = std.fmt.parseInt(i32, input[0..len], 10) catch 0;
    if (param == 0 and input[0..len] != "0\n") {
        stdout.print("Invalid input\n", .{}) catch {};
    } else {
        const result = myFunction(param);
        stdout.print("{}\n", .{result}) catch {};
    }
}
