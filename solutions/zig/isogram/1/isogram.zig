const std = @import("std");
const ascii = std.ascii;

pub fn isIsogram(str: []const u8) bool {
    var seen: [26]bool = [_]bool{false} ** 26;

    for (str) |char| {
        if (char == '-' or char == ' ') continue;

        const lc: u8 = ascii.toLower(char);
        if (lc < 'a' or lc > 'z') continue;

        const idx: u8 = lc - 'a';
        if (seen[idx]) return false;
        seen[idx] = true;
    }
    return true;
}
