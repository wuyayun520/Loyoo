// __DEBUG__
// __CLOSE_PRINT__
//
//  DataExtension.swift
//  NetEaseLib
//
//  Created by DouXiu on 2024/8/27.
//

//: import UIKit
import UIKit
//: import zlib
import zlib

//: extension Data {
extension Data {
    //: func gunzippedData() -> Data {
    func zone() -> Data {
        //: if self.count == 0 || !self.isGzippedData() {
        if self.count == 0 || !self.crop() {
            //: return self
            return self
        }
        
        //: var stream = z_stream()
        var stream = z_stream()
        //: stream.zalloc = nil
        stream.zalloc = nil
        //: stream.zfree = nil
        stream.zfree = nil
        //: stream.avail_in = UInt32(self.count)
        stream.avail_in = UInt32(self.count)
        //: stream.next_in = UnsafeMutablePointer<UInt8>(mutating: (self as NSData).bytes.bindMemory(to: UInt8.self, capacity: self.count))
        stream.next_in = UnsafeMutablePointer<UInt8>(mutating: (self as NSData).bytes.bindMemory(to: UInt8.self, capacity: self.count))
        //: stream.total_out = 0
        stream.total_out = 0
        //: stream.avail_out = 0
        stream.avail_out = 0
        
        //: var output = Data()
        var output = Data()
        
        //: if inflateInit2_(&stream, MAX_WBITS + 16, ZLIB_VERSION, Int32(MemoryLayout<z_stream>.size)) == Z_OK {
        if inflateInit2_(&stream, MAX_WBITS + 16, ZLIB_VERSION, Int32(MemoryLayout<z_stream>.size)) == Z_OK {
            //: var status = Z_OK
            var status = Z_OK
            //: output.reserveCapacity(self.count * 2)
            output.reserveCapacity(self.count * 2)
            
            //: let bufferSize = 4096
            let bufferSize = 4096
            //: var buffer = [UInt8](repeating: 0, count: bufferSize)
            var buffer = [UInt8](repeating: 0, count: bufferSize)
            
            //: while status == Z_OK {
            while status == Z_OK {
                //: stream.next_out = UnsafeMutablePointer<UInt8>(&buffer)
                stream.next_out = UnsafeMutablePointer<UInt8>(&buffer)
                //: stream.avail_out = UInt32(bufferSize)
                stream.avail_out = UInt32(bufferSize)
                
                //: status = inflate(&stream, Z_SYNC_FLUSH)
                status = inflate(&stream, Z_SYNC_FLUSH)
                
                //: let bytesRead = bufferSize - Int(stream.avail_out)
                let bytesRead = bufferSize - Int(stream.avail_out)
                //: if bytesRead > 0 {
                if bytesRead > 0 {
                    //: output.append(buffer, count: bytesRead)
                    output.append(buffer, count: bytesRead)
                }
            }
            
            //: if inflateEnd(&stream) == Z_OK && status == Z_STREAM_END {
            if inflateEnd(&stream) == Z_OK && status == Z_STREAM_END {
                //: output.count = Int(stream.total_out)
                output.count = Int(stream.total_out)
            }
        }
        
        //: return output
        return output
    }

    //: func isGzippedData() -> Bool {
    func crop() -> Bool {
        //: guard self.count >= 2 else {
        guard self.count >= 2 else {
            //: return false
            return false
        }
        
        //: let bytes = [UInt8](self)
        let bytes = [UInt8](self)
        //: return bytes[0] == 0x1f && bytes[1] == 0x8b
        return bytes[0] == 0x1f && bytes[1] == 0x8b
    }
}