#import <CaptainHook/CaptainHook.h>

CHDeclareClass(NSURLRequest);

CHDeclareClassMethod(1, BOOL, NSURLRequest, allowsAnyHTTPSCertificateForHost, id, host)
{
  return YES;
}

CHConstructor
{
	CHLoadLateClass(NSURLRequest);
	CHClassHook(1, NSURLRequest, allowsAnyHTTPSCertificateForHost);
}

