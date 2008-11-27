// From Apple documentation
CGImageRef CreateCGImageFromFile(NSString* path)
{
  NSURL*            url = [NSURL fileURLWithPath:path];
  CGImageRef        imageRef = NULL;
  CGImageSourceRef  sourceRef;
  
  sourceRef = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
  if(sourceRef) {
    imageRef = CGImageSourceCreateImageAtIndex(sourceRef, 0, NULL);
    CFRelease(sourceRef);
  }
  
  return imageRef;
}