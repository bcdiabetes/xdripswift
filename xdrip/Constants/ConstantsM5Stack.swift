import Foundation

enum ConstantsM5Stack {
    
    /// maximum time in milliseconds, between two packets
    ///
    /// this is for the case where M5Stack sends a string to the app, split over multiple packets. There's maximum 17 bytes of useful information per packet. The packets should arrive within a predefined timeframe, otherwise it is to be considered as an error
    static let maximumTimeBetweenTwoPacketsInMs = 200
    
    /// maximum BLE packet size
    static let maximumMBLEPacketsize = 20
    
    /// default text color
    static let defaultTextColor = M5StackTextColor.white
    
}

enum M5StackTextColor:UInt16, CaseIterable {
    
    // here what I found as hex values for RGB565 colors
    //  TFT_BLACK       0x0000
    //  TFT_NAVY        0x000F
    //  TFT_DARKGREEN   0x03E0
    //  TFT_DARKCYAN    0x03EF
    //  TFT_MAROON      0x7800
    //  TFT_PURPLE      0x780F
    //  TFT_OLIVE       0x7BE0
    //  TFT_LIGHTGREY   0xC618
    //  TFT_DARKGREY    0x7BEF
    //  TFT_BLUE        0x001F
    //  TFT_GREEN       0x07E0
    //  TFT_CYAN        0x07FF
    //  TFT_RED         0xF800
    //  TFT_MAGENTA     0xF81F
    //  TFT_YELLOW      0xFFE0
    //  TFT_WHITE       0xFFFF
    //  TFT_ORANGE      0xFDA0
    //  TFT_GREENYELLOW 0xB7E0
    
    case red = 0xF800
    
    case green = 0x07E0
    
    case white = 0xFFFF
    
    case yellow = 0xFFE0
    
    var description:String {
        switch self {
        case .red:
            return Texts_Common.red
        case .green:
            return Texts_Common.green
        case .white:
            return Texts_Common.white
        case .yellow:
            return Texts_Common.yellow
        }
    }
    
    init?(forUInt16: UInt16) {
        self.init(rawValue: forUInt16)
    }
}
