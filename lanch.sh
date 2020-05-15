clang -c URLUtility.mm -arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
lipo libiPhone-lib.a -thin armv7 -output libiPhone-lib7.a
echo delete...URLUtility.o
ar -d libiPhone-lib7.a URLUtility.o
echo insert...URLUtility.o
ar -q libiPhone-lib7.a URLUtility.o
rm URLUtility.o

clang -c URLUtility.mm -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
lipo libiPhone-lib.a -thin arm64 -output libiPhone-lib64.a
echo delete...URLUtility.o
ar -d libiPhone-lib64.a URLUtility.o
echo insert...URLUtility.o
ar -q libiPhone-lib64.a URLUtility.o
rm URLUtility.o

lipo -create libiPhone-lib7.a libiPhone-lib64.a -output libiPhone-lib.a

rm libiPhone-lib7.a
rm libiPhone-lib64.a

echo finish.