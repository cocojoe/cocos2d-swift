/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by "generate_js_bindings.py -c CocosBuilderReader_jsb.ini" on 2012-08-15
*/
#import "js_bindings_config.h"
#ifdef JSB_INCLUDE_COCOSBUILDERREADER

#import "js_bindings_NS_manual.h"
#import "CCBReader.h"

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jsfriendapi.h"
#import "js_bindings_config.h"
#import "js_bindings_core.h"

#import "js_bindings_CocosBuilderReader_classes.h"


/*
 * CCBReader
 */
#pragma mark - CCBReader

JSClass* JSB_CCBReader_class = NULL;
JSObject* JSB_CCBReader_object = NULL;
// Constructor
JSBool JSB_CCBReader_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
	JSObject *jsobj = [JSB_CCBReader createJSObjectWithRealObject:nil context:cx];
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

	return JS_TRUE;
}

// Destructor
void JSB_CCBReader_finalize(JSFreeOp *fop, JSObject *obj)
{
	CCLOGINFO(@"jsbindings: finalizing JS object %p (CCBReader)", obj);
	del_proxy_for_jsobject( obj );
}

// Arguments: 
// Ret value: NSString* (S)
JSBool JSB_CCBReader_ccbDirectoryPath_static(JSContext *cx, uint32_t argc, jsval *vp) {
	JSB_PRECONDITION( argc == 0, "Invalid number of arguments" );
	NSString* ret_val;

	ret_val = [CCBReader ccbDirectoryPath ];

	JSString *ret_obj = JS_NewStringCopyZ(cx, [ret_val UTF8String]);
	JS_SET_RVAL(cx, vp, STRING_TO_JSVAL(ret_obj) );

	return JS_TRUE;
}

void JSB_CCBReader_createClass(JSContext *cx, JSObject* globalObj, const char* name )
{
	JSB_CCBReader_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSB_CCBReader_class->name = name;
	JSB_CCBReader_class->addProperty = JS_PropertyStub;
	JSB_CCBReader_class->delProperty = JS_PropertyStub;
	JSB_CCBReader_class->getProperty = JS_PropertyStub;
	JSB_CCBReader_class->setProperty = JS_StrictPropertyStub;
	JSB_CCBReader_class->enumerate = JS_EnumerateStub;
	JSB_CCBReader_class->resolve = JS_ResolveStub;
	JSB_CCBReader_class->convert = JS_ConvertStub;
	JSB_CCBReader_class->finalize = JSB_CCBReader_finalize;
	JSB_CCBReader_class->flags = 0;

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FN("ccbDirectoryPath", JSB_CCBReader_ccbDirectoryPath_static, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("load", JSB_CCBReader_nodeGraphFromFile_owner_parentSize__static, 3, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("loadScene", JSB_CCBReader_sceneWithNodeGraphFromFile_owner_parentSize__static, 3, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FS_END
	};

	JSB_CCBReader_object = JS_InitClass(cx, globalObj, JSB_NSObject_object, JSB_CCBReader_class, JSB_CCBReader_constructor,0,properties,funcs,NULL,st_funcs);
}

@implementation JSB_CCBReader

+(JSObject*) createJSObjectWithRealObject:(id)realObj context:(JSContext*)cx
{
	JSObject *jsobj = JS_NewObject(cx, JSB_CCBReader_class, JSB_CCBReader_object, NULL);
	JSB_CCBReader *proxy = [[JSB_CCBReader alloc] initWithJSObject:jsobj class:[CCBReader class]];
	[proxy setRealObj:realObj];

	if( realObj ) {
		objc_setAssociatedObject(realObj, &JSB_association_proxy_key, proxy, OBJC_ASSOCIATION_RETAIN);
		[proxy release];
	}

	[self swizzleMethods];

	return jsobj;
}

@end


#endif // JSB_INCLUDE_COCOSBUILDERREADER
