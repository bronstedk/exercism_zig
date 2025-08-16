const lower = @import("std").ascii.toLower;

pub fn isPangram(str: []const u8) bool {
    var flag: u32 = 0;

    for (str) |c| {
        const cLower = lower(c);
        if (cLower < 'a' or cLower > 'z') continue;
        const shift: u8 = cLower - 'a';
        flag |= @as(u32, 1) << @intCast(shift);
    }

    return flag == 0x3FFFFFF;
}
