#include <glad/gles2.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef GLAD_IMPL_UTIL_C_
#define GLAD_IMPL_UTIL_C_

#ifdef _MSC_VER
#define GLAD_IMPL_UTIL_SSCANF sscanf_s
#else
#define GLAD_IMPL_UTIL_SSCANF sscanf
#endif

#endif /* GLAD_IMPL_UTIL_C_ */
#ifdef __cplusplus
GladGLES2Context glad_gles2_context = {};
#else
GladGLES2Context glad_gles2_context = {0};
#endif

static void glad_gl_load_GL_ES_VERSION_2_0(GladGLES2Context *context,
                                           GLADuserptrloadfunc load,
                                           void *userptr) {
  if (!context->ES_VERSION_2_0) return;
  context->ActiveTexture =
      (PFNGLACTIVETEXTUREPROC)load(userptr, "glActiveTexture");
  context->AttachShader =
      (PFNGLATTACHSHADERPROC)load(userptr, "glAttachShader");
  context->BindAttribLocation =
      (PFNGLBINDATTRIBLOCATIONPROC)load(userptr, "glBindAttribLocation");
  context->BindBuffer = (PFNGLBINDBUFFERPROC)load(userptr, "glBindBuffer");
  context->BindFramebuffer =
      (PFNGLBINDFRAMEBUFFERPROC)load(userptr, "glBindFramebuffer");
  context->BindRenderbuffer =
      (PFNGLBINDRENDERBUFFERPROC)load(userptr, "glBindRenderbuffer");
  context->BindTexture = (PFNGLBINDTEXTUREPROC)load(userptr, "glBindTexture");
  context->BlendColor = (PFNGLBLENDCOLORPROC)load(userptr, "glBlendColor");
  context->BlendEquation =
      (PFNGLBLENDEQUATIONPROC)load(userptr, "glBlendEquation");
  context->BlendEquationSeparate =
      (PFNGLBLENDEQUATIONSEPARATEPROC)load(userptr, "glBlendEquationSeparate");
  context->BlendFunc = (PFNGLBLENDFUNCPROC)load(userptr, "glBlendFunc");
  context->BlendFuncSeparate =
      (PFNGLBLENDFUNCSEPARATEPROC)load(userptr, "glBlendFuncSeparate");
  context->BufferData = (PFNGLBUFFERDATAPROC)load(userptr, "glBufferData");
  context->BufferSubData =
      (PFNGLBUFFERSUBDATAPROC)load(userptr, "glBufferSubData");
  context->CheckFramebufferStatus = (PFNGLCHECKFRAMEBUFFERSTATUSPROC)load(
      userptr, "glCheckFramebufferStatus");
  context->Clear = (PFNGLCLEARPROC)load(userptr, "glClear");
  context->ClearColor = (PFNGLCLEARCOLORPROC)load(userptr, "glClearColor");
  context->ClearDepthf = (PFNGLCLEARDEPTHFPROC)load(userptr, "glClearDepthf");
  context->ClearStencil =
      (PFNGLCLEARSTENCILPROC)load(userptr, "glClearStencil");
  context->ColorMask = (PFNGLCOLORMASKPROC)load(userptr, "glColorMask");
  context->CompileShader =
      (PFNGLCOMPILESHADERPROC)load(userptr, "glCompileShader");
  context->CompressedTexImage2D =
      (PFNGLCOMPRESSEDTEXIMAGE2DPROC)load(userptr, "glCompressedTexImage2D");
  context->CompressedTexSubImage2D = (PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)load(
      userptr, "glCompressedTexSubImage2D");
  context->CopyTexImage2D =
      (PFNGLCOPYTEXIMAGE2DPROC)load(userptr, "glCopyTexImage2D");
  context->CopyTexSubImage2D =
      (PFNGLCOPYTEXSUBIMAGE2DPROC)load(userptr, "glCopyTexSubImage2D");
  context->CreateProgram =
      (PFNGLCREATEPROGRAMPROC)load(userptr, "glCreateProgram");
  context->CreateShader =
      (PFNGLCREATESHADERPROC)load(userptr, "glCreateShader");
  context->CullFace = (PFNGLCULLFACEPROC)load(userptr, "glCullFace");
  context->DeleteBuffers =
      (PFNGLDELETEBUFFERSPROC)load(userptr, "glDeleteBuffers");
  context->DeleteFramebuffers =
      (PFNGLDELETEFRAMEBUFFERSPROC)load(userptr, "glDeleteFramebuffers");
  context->DeleteProgram =
      (PFNGLDELETEPROGRAMPROC)load(userptr, "glDeleteProgram");
  context->DeleteRenderbuffers =
      (PFNGLDELETERENDERBUFFERSPROC)load(userptr, "glDeleteRenderbuffers");
  context->DeleteShader =
      (PFNGLDELETESHADERPROC)load(userptr, "glDeleteShader");
  context->DeleteTextures =
      (PFNGLDELETETEXTURESPROC)load(userptr, "glDeleteTextures");
  context->DepthFunc = (PFNGLDEPTHFUNCPROC)load(userptr, "glDepthFunc");
  context->DepthMask = (PFNGLDEPTHMASKPROC)load(userptr, "glDepthMask");
  context->DepthRangef = (PFNGLDEPTHRANGEFPROC)load(userptr, "glDepthRangef");
  context->DetachShader =
      (PFNGLDETACHSHADERPROC)load(userptr, "glDetachShader");
  context->Disable = (PFNGLDISABLEPROC)load(userptr, "glDisable");
  context->DisableVertexAttribArray = (PFNGLDISABLEVERTEXATTRIBARRAYPROC)load(
      userptr, "glDisableVertexAttribArray");
  context->DrawArrays = (PFNGLDRAWARRAYSPROC)load(userptr, "glDrawArrays");
  context->DrawElements =
      (PFNGLDRAWELEMENTSPROC)load(userptr, "glDrawElements");
  context->Enable = (PFNGLENABLEPROC)load(userptr, "glEnable");
  context->EnableVertexAttribArray = (PFNGLENABLEVERTEXATTRIBARRAYPROC)load(
      userptr, "glEnableVertexAttribArray");
  context->Finish = (PFNGLFINISHPROC)load(userptr, "glFinish");
  context->Flush = (PFNGLFLUSHPROC)load(userptr, "glFlush");
  context->FramebufferRenderbuffer = (PFNGLFRAMEBUFFERRENDERBUFFERPROC)load(
      userptr, "glFramebufferRenderbuffer");
  context->FramebufferTexture2D =
      (PFNGLFRAMEBUFFERTEXTURE2DPROC)load(userptr, "glFramebufferTexture2D");
  context->FrontFace = (PFNGLFRONTFACEPROC)load(userptr, "glFrontFace");
  context->GenBuffers = (PFNGLGENBUFFERSPROC)load(userptr, "glGenBuffers");
  context->GenFramebuffers =
      (PFNGLGENFRAMEBUFFERSPROC)load(userptr, "glGenFramebuffers");
  context->GenRenderbuffers =
      (PFNGLGENRENDERBUFFERSPROC)load(userptr, "glGenRenderbuffers");
  context->GenTextures = (PFNGLGENTEXTURESPROC)load(userptr, "glGenTextures");
  context->GenerateMipmap =
      (PFNGLGENERATEMIPMAPPROC)load(userptr, "glGenerateMipmap");
  context->GetActiveAttrib =
      (PFNGLGETACTIVEATTRIBPROC)load(userptr, "glGetActiveAttrib");
  context->GetActiveUniform =
      (PFNGLGETACTIVEUNIFORMPROC)load(userptr, "glGetActiveUniform");
  context->GetAttachedShaders =
      (PFNGLGETATTACHEDSHADERSPROC)load(userptr, "glGetAttachedShaders");
  context->GetAttribLocation =
      (PFNGLGETATTRIBLOCATIONPROC)load(userptr, "glGetAttribLocation");
  context->GetBooleanv = (PFNGLGETBOOLEANVPROC)load(userptr, "glGetBooleanv");
  context->GetBufferParameteriv =
      (PFNGLGETBUFFERPARAMETERIVPROC)load(userptr, "glGetBufferParameteriv");
  context->GetError = (PFNGLGETERRORPROC)load(userptr, "glGetError");
  context->GetFloatv = (PFNGLGETFLOATVPROC)load(userptr, "glGetFloatv");
  context->GetFramebufferAttachmentParameteriv =
      (PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)load(
          userptr, "glGetFramebufferAttachmentParameteriv");
  context->GetIntegerv = (PFNGLGETINTEGERVPROC)load(userptr, "glGetIntegerv");
  context->GetProgramInfoLog =
      (PFNGLGETPROGRAMINFOLOGPROC)load(userptr, "glGetProgramInfoLog");
  context->GetProgramiv =
      (PFNGLGETPROGRAMIVPROC)load(userptr, "glGetProgramiv");
  context->GetRenderbufferParameteriv =
      (PFNGLGETRENDERBUFFERPARAMETERIVPROC)load(userptr,
                                                "glGetRenderbufferParameteriv");
  context->GetShaderInfoLog =
      (PFNGLGETSHADERINFOLOGPROC)load(userptr, "glGetShaderInfoLog");
  context->GetShaderPrecisionFormat = (PFNGLGETSHADERPRECISIONFORMATPROC)load(
      userptr, "glGetShaderPrecisionFormat");
  context->GetShaderSource =
      (PFNGLGETSHADERSOURCEPROC)load(userptr, "glGetShaderSource");
  context->GetShaderiv = (PFNGLGETSHADERIVPROC)load(userptr, "glGetShaderiv");
  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  context->GetTexParameterfv =
      (PFNGLGETTEXPARAMETERFVPROC)load(userptr, "glGetTexParameterfv");
  context->GetTexParameteriv =
      (PFNGLGETTEXPARAMETERIVPROC)load(userptr, "glGetTexParameteriv");
  context->GetUniformLocation =
      (PFNGLGETUNIFORMLOCATIONPROC)load(userptr, "glGetUniformLocation");
  context->GetUniformfv =
      (PFNGLGETUNIFORMFVPROC)load(userptr, "glGetUniformfv");
  context->GetUniformiv =
      (PFNGLGETUNIFORMIVPROC)load(userptr, "glGetUniformiv");
  context->GetVertexAttribPointerv = (PFNGLGETVERTEXATTRIBPOINTERVPROC)load(
      userptr, "glGetVertexAttribPointerv");
  context->GetVertexAttribfv =
      (PFNGLGETVERTEXATTRIBFVPROC)load(userptr, "glGetVertexAttribfv");
  context->GetVertexAttribiv =
      (PFNGLGETVERTEXATTRIBIVPROC)load(userptr, "glGetVertexAttribiv");
  context->Hint = (PFNGLHINTPROC)load(userptr, "glHint");
  context->IsBuffer = (PFNGLISBUFFERPROC)load(userptr, "glIsBuffer");
  context->IsEnabled = (PFNGLISENABLEDPROC)load(userptr, "glIsEnabled");
  context->IsFramebuffer =
      (PFNGLISFRAMEBUFFERPROC)load(userptr, "glIsFramebuffer");
  context->IsProgram = (PFNGLISPROGRAMPROC)load(userptr, "glIsProgram");
  context->IsRenderbuffer =
      (PFNGLISRENDERBUFFERPROC)load(userptr, "glIsRenderbuffer");
  context->IsShader = (PFNGLISSHADERPROC)load(userptr, "glIsShader");
  context->IsTexture = (PFNGLISTEXTUREPROC)load(userptr, "glIsTexture");
  context->LineWidth = (PFNGLLINEWIDTHPROC)load(userptr, "glLineWidth");
  context->LinkProgram = (PFNGLLINKPROGRAMPROC)load(userptr, "glLinkProgram");
  context->PixelStorei = (PFNGLPIXELSTOREIPROC)load(userptr, "glPixelStorei");
  context->PolygonOffset =
      (PFNGLPOLYGONOFFSETPROC)load(userptr, "glPolygonOffset");
  context->ReadPixels = (PFNGLREADPIXELSPROC)load(userptr, "glReadPixels");
  context->ReleaseShaderCompiler =
      (PFNGLRELEASESHADERCOMPILERPROC)load(userptr, "glReleaseShaderCompiler");
  context->RenderbufferStorage =
      (PFNGLRENDERBUFFERSTORAGEPROC)load(userptr, "glRenderbufferStorage");
  context->SampleCoverage =
      (PFNGLSAMPLECOVERAGEPROC)load(userptr, "glSampleCoverage");
  context->Scissor = (PFNGLSCISSORPROC)load(userptr, "glScissor");
  context->ShaderBinary =
      (PFNGLSHADERBINARYPROC)load(userptr, "glShaderBinary");
  context->ShaderSource =
      (PFNGLSHADERSOURCEPROC)load(userptr, "glShaderSource");
  context->StencilFunc = (PFNGLSTENCILFUNCPROC)load(userptr, "glStencilFunc");
  context->StencilFuncSeparate =
      (PFNGLSTENCILFUNCSEPARATEPROC)load(userptr, "glStencilFuncSeparate");
  context->StencilMask = (PFNGLSTENCILMASKPROC)load(userptr, "glStencilMask");
  context->StencilMaskSeparate =
      (PFNGLSTENCILMASKSEPARATEPROC)load(userptr, "glStencilMaskSeparate");
  context->StencilOp = (PFNGLSTENCILOPPROC)load(userptr, "glStencilOp");
  context->StencilOpSeparate =
      (PFNGLSTENCILOPSEPARATEPROC)load(userptr, "glStencilOpSeparate");
  context->TexImage2D = (PFNGLTEXIMAGE2DPROC)load(userptr, "glTexImage2D");
  context->TexParameterf =
      (PFNGLTEXPARAMETERFPROC)load(userptr, "glTexParameterf");
  context->TexParameterfv =
      (PFNGLTEXPARAMETERFVPROC)load(userptr, "glTexParameterfv");
  context->TexParameteri =
      (PFNGLTEXPARAMETERIPROC)load(userptr, "glTexParameteri");
  context->TexParameteriv =
      (PFNGLTEXPARAMETERIVPROC)load(userptr, "glTexParameteriv");
  context->TexSubImage2D =
      (PFNGLTEXSUBIMAGE2DPROC)load(userptr, "glTexSubImage2D");
  context->Uniform1f = (PFNGLUNIFORM1FPROC)load(userptr, "glUniform1f");
  context->Uniform1fv = (PFNGLUNIFORM1FVPROC)load(userptr, "glUniform1fv");
  context->Uniform1i = (PFNGLUNIFORM1IPROC)load(userptr, "glUniform1i");
  context->Uniform1iv = (PFNGLUNIFORM1IVPROC)load(userptr, "glUniform1iv");
  context->Uniform2f = (PFNGLUNIFORM2FPROC)load(userptr, "glUniform2f");
  context->Uniform2fv = (PFNGLUNIFORM2FVPROC)load(userptr, "glUniform2fv");
  context->Uniform2i = (PFNGLUNIFORM2IPROC)load(userptr, "glUniform2i");
  context->Uniform2iv = (PFNGLUNIFORM2IVPROC)load(userptr, "glUniform2iv");
  context->Uniform3f = (PFNGLUNIFORM3FPROC)load(userptr, "glUniform3f");
  context->Uniform3fv = (PFNGLUNIFORM3FVPROC)load(userptr, "glUniform3fv");
  context->Uniform3i = (PFNGLUNIFORM3IPROC)load(userptr, "glUniform3i");
  context->Uniform3iv = (PFNGLUNIFORM3IVPROC)load(userptr, "glUniform3iv");
  context->Uniform4f = (PFNGLUNIFORM4FPROC)load(userptr, "glUniform4f");
  context->Uniform4fv = (PFNGLUNIFORM4FVPROC)load(userptr, "glUniform4fv");
  context->Uniform4i = (PFNGLUNIFORM4IPROC)load(userptr, "glUniform4i");
  context->Uniform4iv = (PFNGLUNIFORM4IVPROC)load(userptr, "glUniform4iv");
  context->UniformMatrix2fv =
      (PFNGLUNIFORMMATRIX2FVPROC)load(userptr, "glUniformMatrix2fv");
  context->UniformMatrix3fv =
      (PFNGLUNIFORMMATRIX3FVPROC)load(userptr, "glUniformMatrix3fv");
  context->UniformMatrix4fv =
      (PFNGLUNIFORMMATRIX4FVPROC)load(userptr, "glUniformMatrix4fv");
  context->UseProgram = (PFNGLUSEPROGRAMPROC)load(userptr, "glUseProgram");
  context->ValidateProgram =
      (PFNGLVALIDATEPROGRAMPROC)load(userptr, "glValidateProgram");
  context->VertexAttrib1f =
      (PFNGLVERTEXATTRIB1FPROC)load(userptr, "glVertexAttrib1f");
  context->VertexAttrib1fv =
      (PFNGLVERTEXATTRIB1FVPROC)load(userptr, "glVertexAttrib1fv");
  context->VertexAttrib2f =
      (PFNGLVERTEXATTRIB2FPROC)load(userptr, "glVertexAttrib2f");
  context->VertexAttrib2fv =
      (PFNGLVERTEXATTRIB2FVPROC)load(userptr, "glVertexAttrib2fv");
  context->VertexAttrib3f =
      (PFNGLVERTEXATTRIB3FPROC)load(userptr, "glVertexAttrib3f");
  context->VertexAttrib3fv =
      (PFNGLVERTEXATTRIB3FVPROC)load(userptr, "glVertexAttrib3fv");
  context->VertexAttrib4f =
      (PFNGLVERTEXATTRIB4FPROC)load(userptr, "glVertexAttrib4f");
  context->VertexAttrib4fv =
      (PFNGLVERTEXATTRIB4FVPROC)load(userptr, "glVertexAttrib4fv");
  context->VertexAttribPointer =
      (PFNGLVERTEXATTRIBPOINTERPROC)load(userptr, "glVertexAttribPointer");
  context->Viewport = (PFNGLVIEWPORTPROC)load(userptr, "glViewport");
}
static void glad_gl_load_GL_ES_VERSION_3_0(GladGLES2Context *context,
                                           GLADuserptrloadfunc load,
                                           void *userptr) {
  if (!context->ES_VERSION_3_0) return;
  context->BeginQuery = (PFNGLBEGINQUERYPROC)load(userptr, "glBeginQuery");
  context->BeginTransformFeedback = (PFNGLBEGINTRANSFORMFEEDBACKPROC)load(
      userptr, "glBeginTransformFeedback");
  context->BindBufferBase =
      (PFNGLBINDBUFFERBASEPROC)load(userptr, "glBindBufferBase");
  context->BindBufferRange =
      (PFNGLBINDBUFFERRANGEPROC)load(userptr, "glBindBufferRange");
  context->BindSampler = (PFNGLBINDSAMPLERPROC)load(userptr, "glBindSampler");
  context->BindTransformFeedback =
      (PFNGLBINDTRANSFORMFEEDBACKPROC)load(userptr, "glBindTransformFeedback");
  context->BindVertexArray =
      (PFNGLBINDVERTEXARRAYPROC)load(userptr, "glBindVertexArray");
  context->BlitFramebuffer =
      (PFNGLBLITFRAMEBUFFERPROC)load(userptr, "glBlitFramebuffer");
  context->ClearBufferfi =
      (PFNGLCLEARBUFFERFIPROC)load(userptr, "glClearBufferfi");
  context->ClearBufferfv =
      (PFNGLCLEARBUFFERFVPROC)load(userptr, "glClearBufferfv");
  context->ClearBufferiv =
      (PFNGLCLEARBUFFERIVPROC)load(userptr, "glClearBufferiv");
  context->ClearBufferuiv =
      (PFNGLCLEARBUFFERUIVPROC)load(userptr, "glClearBufferuiv");
  context->ClientWaitSync =
      (PFNGLCLIENTWAITSYNCPROC)load(userptr, "glClientWaitSync");
  context->CompressedTexImage3D =
      (PFNGLCOMPRESSEDTEXIMAGE3DPROC)load(userptr, "glCompressedTexImage3D");
  context->CompressedTexSubImage3D = (PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)load(
      userptr, "glCompressedTexSubImage3D");
  context->CopyBufferSubData =
      (PFNGLCOPYBUFFERSUBDATAPROC)load(userptr, "glCopyBufferSubData");
  context->CopyTexSubImage3D =
      (PFNGLCOPYTEXSUBIMAGE3DPROC)load(userptr, "glCopyTexSubImage3D");
  context->DeleteQueries =
      (PFNGLDELETEQUERIESPROC)load(userptr, "glDeleteQueries");
  context->DeleteSamplers =
      (PFNGLDELETESAMPLERSPROC)load(userptr, "glDeleteSamplers");
  context->DeleteSync = (PFNGLDELETESYNCPROC)load(userptr, "glDeleteSync");
  context->DeleteTransformFeedbacks = (PFNGLDELETETRANSFORMFEEDBACKSPROC)load(
      userptr, "glDeleteTransformFeedbacks");
  context->DeleteVertexArrays =
      (PFNGLDELETEVERTEXARRAYSPROC)load(userptr, "glDeleteVertexArrays");
  context->DrawArraysInstanced =
      (PFNGLDRAWARRAYSINSTANCEDPROC)load(userptr, "glDrawArraysInstanced");
  context->DrawBuffers = (PFNGLDRAWBUFFERSPROC)load(userptr, "glDrawBuffers");
  context->DrawElementsInstanced =
      (PFNGLDRAWELEMENTSINSTANCEDPROC)load(userptr, "glDrawElementsInstanced");
  context->DrawRangeElements =
      (PFNGLDRAWRANGEELEMENTSPROC)load(userptr, "glDrawRangeElements");
  context->EndQuery = (PFNGLENDQUERYPROC)load(userptr, "glEndQuery");
  context->EndTransformFeedback =
      (PFNGLENDTRANSFORMFEEDBACKPROC)load(userptr, "glEndTransformFeedback");
  context->FenceSync = (PFNGLFENCESYNCPROC)load(userptr, "glFenceSync");
  context->FlushMappedBufferRange = (PFNGLFLUSHMAPPEDBUFFERRANGEPROC)load(
      userptr, "glFlushMappedBufferRange");
  context->FramebufferTextureLayer = (PFNGLFRAMEBUFFERTEXTURELAYERPROC)load(
      userptr, "glFramebufferTextureLayer");
  context->GenQueries = (PFNGLGENQUERIESPROC)load(userptr, "glGenQueries");
  context->GenSamplers = (PFNGLGENSAMPLERSPROC)load(userptr, "glGenSamplers");
  context->GenTransformFeedbacks =
      (PFNGLGENTRANSFORMFEEDBACKSPROC)load(userptr, "glGenTransformFeedbacks");
  context->GenVertexArrays =
      (PFNGLGENVERTEXARRAYSPROC)load(userptr, "glGenVertexArrays");
  context->GetActiveUniformBlockName = (PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)load(
      userptr, "glGetActiveUniformBlockName");
  context->GetActiveUniformBlockiv = (PFNGLGETACTIVEUNIFORMBLOCKIVPROC)load(
      userptr, "glGetActiveUniformBlockiv");
  context->GetActiveUniformsiv =
      (PFNGLGETACTIVEUNIFORMSIVPROC)load(userptr, "glGetActiveUniformsiv");
  context->GetBufferParameteri64v = (PFNGLGETBUFFERPARAMETERI64VPROC)load(
      userptr, "glGetBufferParameteri64v");
  context->GetBufferPointerv =
      (PFNGLGETBUFFERPOINTERVPROC)load(userptr, "glGetBufferPointerv");
  context->GetFragDataLocation =
      (PFNGLGETFRAGDATALOCATIONPROC)load(userptr, "glGetFragDataLocation");
  context->GetInteger64i_v =
      (PFNGLGETINTEGER64I_VPROC)load(userptr, "glGetInteger64i_v");
  context->GetInteger64v =
      (PFNGLGETINTEGER64VPROC)load(userptr, "glGetInteger64v");
  context->GetIntegeri_v =
      (PFNGLGETINTEGERI_VPROC)load(userptr, "glGetIntegeri_v");
  context->GetInternalformativ =
      (PFNGLGETINTERNALFORMATIVPROC)load(userptr, "glGetInternalformativ");
  context->GetProgramBinary =
      (PFNGLGETPROGRAMBINARYPROC)load(userptr, "glGetProgramBinary");
  context->GetQueryObjectuiv =
      (PFNGLGETQUERYOBJECTUIVPROC)load(userptr, "glGetQueryObjectuiv");
  context->GetQueryiv = (PFNGLGETQUERYIVPROC)load(userptr, "glGetQueryiv");
  context->GetSamplerParameterfv =
      (PFNGLGETSAMPLERPARAMETERFVPROC)load(userptr, "glGetSamplerParameterfv");
  context->GetSamplerParameteriv =
      (PFNGLGETSAMPLERPARAMETERIVPROC)load(userptr, "glGetSamplerParameteriv");
  context->GetStringi = (PFNGLGETSTRINGIPROC)load(userptr, "glGetStringi");
  context->GetSynciv = (PFNGLGETSYNCIVPROC)load(userptr, "glGetSynciv");
  context->GetTransformFeedbackVarying =
      (PFNGLGETTRANSFORMFEEDBACKVARYINGPROC)load(
          userptr, "glGetTransformFeedbackVarying");
  context->GetUniformBlockIndex =
      (PFNGLGETUNIFORMBLOCKINDEXPROC)load(userptr, "glGetUniformBlockIndex");
  context->GetUniformIndices =
      (PFNGLGETUNIFORMINDICESPROC)load(userptr, "glGetUniformIndices");
  context->GetUniformuiv =
      (PFNGLGETUNIFORMUIVPROC)load(userptr, "glGetUniformuiv");
  context->GetVertexAttribIiv =
      (PFNGLGETVERTEXATTRIBIIVPROC)load(userptr, "glGetVertexAttribIiv");
  context->GetVertexAttribIuiv =
      (PFNGLGETVERTEXATTRIBIUIVPROC)load(userptr, "glGetVertexAttribIuiv");
  context->InvalidateFramebuffer =
      (PFNGLINVALIDATEFRAMEBUFFERPROC)load(userptr, "glInvalidateFramebuffer");
  context->InvalidateSubFramebuffer = (PFNGLINVALIDATESUBFRAMEBUFFERPROC)load(
      userptr, "glInvalidateSubFramebuffer");
  context->IsQuery = (PFNGLISQUERYPROC)load(userptr, "glIsQuery");
  context->IsSampler = (PFNGLISSAMPLERPROC)load(userptr, "glIsSampler");
  context->IsSync = (PFNGLISSYNCPROC)load(userptr, "glIsSync");
  context->IsTransformFeedback =
      (PFNGLISTRANSFORMFEEDBACKPROC)load(userptr, "glIsTransformFeedback");
  context->IsVertexArray =
      (PFNGLISVERTEXARRAYPROC)load(userptr, "glIsVertexArray");
  context->MapBufferRange =
      (PFNGLMAPBUFFERRANGEPROC)load(userptr, "glMapBufferRange");
  context->PauseTransformFeedback = (PFNGLPAUSETRANSFORMFEEDBACKPROC)load(
      userptr, "glPauseTransformFeedback");
  context->ProgramBinary =
      (PFNGLPROGRAMBINARYPROC)load(userptr, "glProgramBinary");
  context->ProgramParameteri =
      (PFNGLPROGRAMPARAMETERIPROC)load(userptr, "glProgramParameteri");
  context->ReadBuffer = (PFNGLREADBUFFERPROC)load(userptr, "glReadBuffer");
  context->RenderbufferStorageMultisample =
      (PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)load(
          userptr, "glRenderbufferStorageMultisample");
  context->ResumeTransformFeedback = (PFNGLRESUMETRANSFORMFEEDBACKPROC)load(
      userptr, "glResumeTransformFeedback");
  context->SamplerParameterf =
      (PFNGLSAMPLERPARAMETERFPROC)load(userptr, "glSamplerParameterf");
  context->SamplerParameterfv =
      (PFNGLSAMPLERPARAMETERFVPROC)load(userptr, "glSamplerParameterfv");
  context->SamplerParameteri =
      (PFNGLSAMPLERPARAMETERIPROC)load(userptr, "glSamplerParameteri");
  context->SamplerParameteriv =
      (PFNGLSAMPLERPARAMETERIVPROC)load(userptr, "glSamplerParameteriv");
  context->TexImage3D = (PFNGLTEXIMAGE3DPROC)load(userptr, "glTexImage3D");
  context->TexStorage2D =
      (PFNGLTEXSTORAGE2DPROC)load(userptr, "glTexStorage2D");
  context->TexStorage3D =
      (PFNGLTEXSTORAGE3DPROC)load(userptr, "glTexStorage3D");
  context->TexSubImage3D =
      (PFNGLTEXSUBIMAGE3DPROC)load(userptr, "glTexSubImage3D");
  context->TransformFeedbackVaryings = (PFNGLTRANSFORMFEEDBACKVARYINGSPROC)load(
      userptr, "glTransformFeedbackVaryings");
  context->Uniform1ui = (PFNGLUNIFORM1UIPROC)load(userptr, "glUniform1ui");
  context->Uniform1uiv = (PFNGLUNIFORM1UIVPROC)load(userptr, "glUniform1uiv");
  context->Uniform2ui = (PFNGLUNIFORM2UIPROC)load(userptr, "glUniform2ui");
  context->Uniform2uiv = (PFNGLUNIFORM2UIVPROC)load(userptr, "glUniform2uiv");
  context->Uniform3ui = (PFNGLUNIFORM3UIPROC)load(userptr, "glUniform3ui");
  context->Uniform3uiv = (PFNGLUNIFORM3UIVPROC)load(userptr, "glUniform3uiv");
  context->Uniform4ui = (PFNGLUNIFORM4UIPROC)load(userptr, "glUniform4ui");
  context->Uniform4uiv = (PFNGLUNIFORM4UIVPROC)load(userptr, "glUniform4uiv");
  context->UniformBlockBinding =
      (PFNGLUNIFORMBLOCKBINDINGPROC)load(userptr, "glUniformBlockBinding");
  context->UniformMatrix2x3fv =
      (PFNGLUNIFORMMATRIX2X3FVPROC)load(userptr, "glUniformMatrix2x3fv");
  context->UniformMatrix2x4fv =
      (PFNGLUNIFORMMATRIX2X4FVPROC)load(userptr, "glUniformMatrix2x4fv");
  context->UniformMatrix3x2fv =
      (PFNGLUNIFORMMATRIX3X2FVPROC)load(userptr, "glUniformMatrix3x2fv");
  context->UniformMatrix3x4fv =
      (PFNGLUNIFORMMATRIX3X4FVPROC)load(userptr, "glUniformMatrix3x4fv");
  context->UniformMatrix4x2fv =
      (PFNGLUNIFORMMATRIX4X2FVPROC)load(userptr, "glUniformMatrix4x2fv");
  context->UniformMatrix4x3fv =
      (PFNGLUNIFORMMATRIX4X3FVPROC)load(userptr, "glUniformMatrix4x3fv");
  context->UnmapBuffer = (PFNGLUNMAPBUFFERPROC)load(userptr, "glUnmapBuffer");
  context->VertexAttribDivisor =
      (PFNGLVERTEXATTRIBDIVISORPROC)load(userptr, "glVertexAttribDivisor");
  context->VertexAttribI4i =
      (PFNGLVERTEXATTRIBI4IPROC)load(userptr, "glVertexAttribI4i");
  context->VertexAttribI4iv =
      (PFNGLVERTEXATTRIBI4IVPROC)load(userptr, "glVertexAttribI4iv");
  context->VertexAttribI4ui =
      (PFNGLVERTEXATTRIBI4UIPROC)load(userptr, "glVertexAttribI4ui");
  context->VertexAttribI4uiv =
      (PFNGLVERTEXATTRIBI4UIVPROC)load(userptr, "glVertexAttribI4uiv");
  context->VertexAttribIPointer =
      (PFNGLVERTEXATTRIBIPOINTERPROC)load(userptr, "glVertexAttribIPointer");
  context->WaitSync = (PFNGLWAITSYNCPROC)load(userptr, "glWaitSync");
}
static void glad_gl_load_GL_ES_VERSION_3_1(GladGLES2Context *context,
                                           GLADuserptrloadfunc load,
                                           void *userptr) {
  if (!context->ES_VERSION_3_1) return;
  context->ActiveShaderProgram =
      (PFNGLACTIVESHADERPROGRAMPROC)load(userptr, "glActiveShaderProgram");
  context->BindImageTexture =
      (PFNGLBINDIMAGETEXTUREPROC)load(userptr, "glBindImageTexture");
  context->BindProgramPipeline =
      (PFNGLBINDPROGRAMPIPELINEPROC)load(userptr, "glBindProgramPipeline");
  context->BindVertexBuffer =
      (PFNGLBINDVERTEXBUFFERPROC)load(userptr, "glBindVertexBuffer");
  context->CreateShaderProgramv =
      (PFNGLCREATESHADERPROGRAMVPROC)load(userptr, "glCreateShaderProgramv");
  context->DeleteProgramPipelines = (PFNGLDELETEPROGRAMPIPELINESPROC)load(
      userptr, "glDeleteProgramPipelines");
  context->DispatchCompute =
      (PFNGLDISPATCHCOMPUTEPROC)load(userptr, "glDispatchCompute");
  context->DispatchComputeIndirect = (PFNGLDISPATCHCOMPUTEINDIRECTPROC)load(
      userptr, "glDispatchComputeIndirect");
  context->DrawArraysIndirect =
      (PFNGLDRAWARRAYSINDIRECTPROC)load(userptr, "glDrawArraysIndirect");
  context->DrawElementsIndirect =
      (PFNGLDRAWELEMENTSINDIRECTPROC)load(userptr, "glDrawElementsIndirect");
  context->FramebufferParameteri =
      (PFNGLFRAMEBUFFERPARAMETERIPROC)load(userptr, "glFramebufferParameteri");
  context->GenProgramPipelines =
      (PFNGLGENPROGRAMPIPELINESPROC)load(userptr, "glGenProgramPipelines");
  context->GetBooleani_v =
      (PFNGLGETBOOLEANI_VPROC)load(userptr, "glGetBooleani_v");
  context->GetFramebufferParameteriv = (PFNGLGETFRAMEBUFFERPARAMETERIVPROC)load(
      userptr, "glGetFramebufferParameteriv");
  context->GetMultisamplefv =
      (PFNGLGETMULTISAMPLEFVPROC)load(userptr, "glGetMultisamplefv");
  context->GetProgramInterfaceiv =
      (PFNGLGETPROGRAMINTERFACEIVPROC)load(userptr, "glGetProgramInterfaceiv");
  context->GetProgramPipelineInfoLog = (PFNGLGETPROGRAMPIPELINEINFOLOGPROC)load(
      userptr, "glGetProgramPipelineInfoLog");
  context->GetProgramPipelineiv =
      (PFNGLGETPROGRAMPIPELINEIVPROC)load(userptr, "glGetProgramPipelineiv");
  context->GetProgramResourceIndex = (PFNGLGETPROGRAMRESOURCEINDEXPROC)load(
      userptr, "glGetProgramResourceIndex");
  context->GetProgramResourceLocation =
      (PFNGLGETPROGRAMRESOURCELOCATIONPROC)load(userptr,
                                                "glGetProgramResourceLocation");
  context->GetProgramResourceName = (PFNGLGETPROGRAMRESOURCENAMEPROC)load(
      userptr, "glGetProgramResourceName");
  context->GetProgramResourceiv =
      (PFNGLGETPROGRAMRESOURCEIVPROC)load(userptr, "glGetProgramResourceiv");
  context->GetTexLevelParameterfv = (PFNGLGETTEXLEVELPARAMETERFVPROC)load(
      userptr, "glGetTexLevelParameterfv");
  context->GetTexLevelParameteriv = (PFNGLGETTEXLEVELPARAMETERIVPROC)load(
      userptr, "glGetTexLevelParameteriv");
  context->IsProgramPipeline =
      (PFNGLISPROGRAMPIPELINEPROC)load(userptr, "glIsProgramPipeline");
  context->MemoryBarrier =
      (PFNGLMEMORYBARRIERPROC)load(userptr, "glMemoryBarrier");
  context->MemoryBarrierByRegion =
      (PFNGLMEMORYBARRIERBYREGIONPROC)load(userptr, "glMemoryBarrierByRegion");
  context->ProgramUniform1f =
      (PFNGLPROGRAMUNIFORM1FPROC)load(userptr, "glProgramUniform1f");
  context->ProgramUniform1fv =
      (PFNGLPROGRAMUNIFORM1FVPROC)load(userptr, "glProgramUniform1fv");
  context->ProgramUniform1i =
      (PFNGLPROGRAMUNIFORM1IPROC)load(userptr, "glProgramUniform1i");
  context->ProgramUniform1iv =
      (PFNGLPROGRAMUNIFORM1IVPROC)load(userptr, "glProgramUniform1iv");
  context->ProgramUniform1ui =
      (PFNGLPROGRAMUNIFORM1UIPROC)load(userptr, "glProgramUniform1ui");
  context->ProgramUniform1uiv =
      (PFNGLPROGRAMUNIFORM1UIVPROC)load(userptr, "glProgramUniform1uiv");
  context->ProgramUniform2f =
      (PFNGLPROGRAMUNIFORM2FPROC)load(userptr, "glProgramUniform2f");
  context->ProgramUniform2fv =
      (PFNGLPROGRAMUNIFORM2FVPROC)load(userptr, "glProgramUniform2fv");
  context->ProgramUniform2i =
      (PFNGLPROGRAMUNIFORM2IPROC)load(userptr, "glProgramUniform2i");
  context->ProgramUniform2iv =
      (PFNGLPROGRAMUNIFORM2IVPROC)load(userptr, "glProgramUniform2iv");
  context->ProgramUniform2ui =
      (PFNGLPROGRAMUNIFORM2UIPROC)load(userptr, "glProgramUniform2ui");
  context->ProgramUniform2uiv =
      (PFNGLPROGRAMUNIFORM2UIVPROC)load(userptr, "glProgramUniform2uiv");
  context->ProgramUniform3f =
      (PFNGLPROGRAMUNIFORM3FPROC)load(userptr, "glProgramUniform3f");
  context->ProgramUniform3fv =
      (PFNGLPROGRAMUNIFORM3FVPROC)load(userptr, "glProgramUniform3fv");
  context->ProgramUniform3i =
      (PFNGLPROGRAMUNIFORM3IPROC)load(userptr, "glProgramUniform3i");
  context->ProgramUniform3iv =
      (PFNGLPROGRAMUNIFORM3IVPROC)load(userptr, "glProgramUniform3iv");
  context->ProgramUniform3ui =
      (PFNGLPROGRAMUNIFORM3UIPROC)load(userptr, "glProgramUniform3ui");
  context->ProgramUniform3uiv =
      (PFNGLPROGRAMUNIFORM3UIVPROC)load(userptr, "glProgramUniform3uiv");
  context->ProgramUniform4f =
      (PFNGLPROGRAMUNIFORM4FPROC)load(userptr, "glProgramUniform4f");
  context->ProgramUniform4fv =
      (PFNGLPROGRAMUNIFORM4FVPROC)load(userptr, "glProgramUniform4fv");
  context->ProgramUniform4i =
      (PFNGLPROGRAMUNIFORM4IPROC)load(userptr, "glProgramUniform4i");
  context->ProgramUniform4iv =
      (PFNGLPROGRAMUNIFORM4IVPROC)load(userptr, "glProgramUniform4iv");
  context->ProgramUniform4ui =
      (PFNGLPROGRAMUNIFORM4UIPROC)load(userptr, "glProgramUniform4ui");
  context->ProgramUniform4uiv =
      (PFNGLPROGRAMUNIFORM4UIVPROC)load(userptr, "glProgramUniform4uiv");
  context->ProgramUniformMatrix2fv = (PFNGLPROGRAMUNIFORMMATRIX2FVPROC)load(
      userptr, "glProgramUniformMatrix2fv");
  context->ProgramUniformMatrix2x3fv = (PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC)load(
      userptr, "glProgramUniformMatrix2x3fv");
  context->ProgramUniformMatrix2x4fv = (PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC)load(
      userptr, "glProgramUniformMatrix2x4fv");
  context->ProgramUniformMatrix3fv = (PFNGLPROGRAMUNIFORMMATRIX3FVPROC)load(
      userptr, "glProgramUniformMatrix3fv");
  context->ProgramUniformMatrix3x2fv = (PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC)load(
      userptr, "glProgramUniformMatrix3x2fv");
  context->ProgramUniformMatrix3x4fv = (PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC)load(
      userptr, "glProgramUniformMatrix3x4fv");
  context->ProgramUniformMatrix4fv = (PFNGLPROGRAMUNIFORMMATRIX4FVPROC)load(
      userptr, "glProgramUniformMatrix4fv");
  context->ProgramUniformMatrix4x2fv = (PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC)load(
      userptr, "glProgramUniformMatrix4x2fv");
  context->ProgramUniformMatrix4x3fv = (PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC)load(
      userptr, "glProgramUniformMatrix4x3fv");
  context->SampleMaski = (PFNGLSAMPLEMASKIPROC)load(userptr, "glSampleMaski");
  context->TexStorage2DMultisample = (PFNGLTEXSTORAGE2DMULTISAMPLEPROC)load(
      userptr, "glTexStorage2DMultisample");
  context->UseProgramStages =
      (PFNGLUSEPROGRAMSTAGESPROC)load(userptr, "glUseProgramStages");
  context->ValidateProgramPipeline = (PFNGLVALIDATEPROGRAMPIPELINEPROC)load(
      userptr, "glValidateProgramPipeline");
  context->VertexAttribBinding =
      (PFNGLVERTEXATTRIBBINDINGPROC)load(userptr, "glVertexAttribBinding");
  context->VertexAttribFormat =
      (PFNGLVERTEXATTRIBFORMATPROC)load(userptr, "glVertexAttribFormat");
  context->VertexAttribIFormat =
      (PFNGLVERTEXATTRIBIFORMATPROC)load(userptr, "glVertexAttribIFormat");
  context->VertexBindingDivisor =
      (PFNGLVERTEXBINDINGDIVISORPROC)load(userptr, "glVertexBindingDivisor");
}
static void glad_gl_load_GL_ES_VERSION_3_2(GladGLES2Context *context,
                                           GLADuserptrloadfunc load,
                                           void *userptr) {
  if (!context->ES_VERSION_3_2) return;
  context->BlendBarrier =
      (PFNGLBLENDBARRIERPROC)load(userptr, "glBlendBarrier");
  context->BlendEquationSeparatei = (PFNGLBLENDEQUATIONSEPARATEIPROC)load(
      userptr, "glBlendEquationSeparatei");
  context->BlendEquationi =
      (PFNGLBLENDEQUATIONIPROC)load(userptr, "glBlendEquationi");
  context->BlendFuncSeparatei =
      (PFNGLBLENDFUNCSEPARATEIPROC)load(userptr, "glBlendFuncSeparatei");
  context->BlendFunci = (PFNGLBLENDFUNCIPROC)load(userptr, "glBlendFunci");
  context->ColorMaski = (PFNGLCOLORMASKIPROC)load(userptr, "glColorMaski");
  context->CopyImageSubData =
      (PFNGLCOPYIMAGESUBDATAPROC)load(userptr, "glCopyImageSubData");
  context->DebugMessageCallback =
      (PFNGLDEBUGMESSAGECALLBACKPROC)load(userptr, "glDebugMessageCallback");
  context->DebugMessageControl =
      (PFNGLDEBUGMESSAGECONTROLPROC)load(userptr, "glDebugMessageControl");
  context->DebugMessageInsert =
      (PFNGLDEBUGMESSAGEINSERTPROC)load(userptr, "glDebugMessageInsert");
  context->Disablei = (PFNGLDISABLEIPROC)load(userptr, "glDisablei");
  context->DrawElementsBaseVertex = (PFNGLDRAWELEMENTSBASEVERTEXPROC)load(
      userptr, "glDrawElementsBaseVertex");
  context->DrawElementsInstancedBaseVertex =
      (PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)load(
          userptr, "glDrawElementsInstancedBaseVertex");
  context->DrawRangeElementsBaseVertex =
      (PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)load(
          userptr, "glDrawRangeElementsBaseVertex");
  context->Enablei = (PFNGLENABLEIPROC)load(userptr, "glEnablei");
  context->FramebufferTexture =
      (PFNGLFRAMEBUFFERTEXTUREPROC)load(userptr, "glFramebufferTexture");
  context->GetDebugMessageLog =
      (PFNGLGETDEBUGMESSAGELOGPROC)load(userptr, "glGetDebugMessageLog");
  context->GetGraphicsResetStatus = (PFNGLGETGRAPHICSRESETSTATUSPROC)load(
      userptr, "glGetGraphicsResetStatus");
  context->GetObjectLabel =
      (PFNGLGETOBJECTLABELPROC)load(userptr, "glGetObjectLabel");
  context->GetObjectPtrLabel =
      (PFNGLGETOBJECTPTRLABELPROC)load(userptr, "glGetObjectPtrLabel");
  context->GetPointerv = (PFNGLGETPOINTERVPROC)load(userptr, "glGetPointerv");
  context->GetSamplerParameterIiv = (PFNGLGETSAMPLERPARAMETERIIVPROC)load(
      userptr, "glGetSamplerParameterIiv");
  context->GetSamplerParameterIuiv = (PFNGLGETSAMPLERPARAMETERIUIVPROC)load(
      userptr, "glGetSamplerParameterIuiv");
  context->GetTexParameterIiv =
      (PFNGLGETTEXPARAMETERIIVPROC)load(userptr, "glGetTexParameterIiv");
  context->GetTexParameterIuiv =
      (PFNGLGETTEXPARAMETERIUIVPROC)load(userptr, "glGetTexParameterIuiv");
  context->GetnUniformfv =
      (PFNGLGETNUNIFORMFVPROC)load(userptr, "glGetnUniformfv");
  context->GetnUniformiv =
      (PFNGLGETNUNIFORMIVPROC)load(userptr, "glGetnUniformiv");
  context->GetnUniformuiv =
      (PFNGLGETNUNIFORMUIVPROC)load(userptr, "glGetnUniformuiv");
  context->IsEnabledi = (PFNGLISENABLEDIPROC)load(userptr, "glIsEnabledi");
  context->MinSampleShading =
      (PFNGLMINSAMPLESHADINGPROC)load(userptr, "glMinSampleShading");
  context->ObjectLabel = (PFNGLOBJECTLABELPROC)load(userptr, "glObjectLabel");
  context->ObjectPtrLabel =
      (PFNGLOBJECTPTRLABELPROC)load(userptr, "glObjectPtrLabel");
  context->PatchParameteri =
      (PFNGLPATCHPARAMETERIPROC)load(userptr, "glPatchParameteri");
  context->PopDebugGroup =
      (PFNGLPOPDEBUGGROUPPROC)load(userptr, "glPopDebugGroup");
  context->PrimitiveBoundingBox =
      (PFNGLPRIMITIVEBOUNDINGBOXPROC)load(userptr, "glPrimitiveBoundingBox");
  context->PushDebugGroup =
      (PFNGLPUSHDEBUGGROUPPROC)load(userptr, "glPushDebugGroup");
  context->ReadnPixels = (PFNGLREADNPIXELSPROC)load(userptr, "glReadnPixels");
  context->SamplerParameterIiv =
      (PFNGLSAMPLERPARAMETERIIVPROC)load(userptr, "glSamplerParameterIiv");
  context->SamplerParameterIuiv =
      (PFNGLSAMPLERPARAMETERIUIVPROC)load(userptr, "glSamplerParameterIuiv");
  context->TexBuffer = (PFNGLTEXBUFFERPROC)load(userptr, "glTexBuffer");
  context->TexBufferRange =
      (PFNGLTEXBUFFERRANGEPROC)load(userptr, "glTexBufferRange");
  context->TexParameterIiv =
      (PFNGLTEXPARAMETERIIVPROC)load(userptr, "glTexParameterIiv");
  context->TexParameterIuiv =
      (PFNGLTEXPARAMETERIUIVPROC)load(userptr, "glTexParameterIuiv");
  context->TexStorage3DMultisample = (PFNGLTEXSTORAGE3DMULTISAMPLEPROC)load(
      userptr, "glTexStorage3DMultisample");
}

#if defined(GL_ES_VERSION_3_0) || defined(GL_VERSION_3_0)
#define GLAD_GL_IS_SOME_NEW_VERSION 1
#else
#define GLAD_GL_IS_SOME_NEW_VERSION 0
#endif

static int glad_gl_get_extensions(GladGLES2Context *context, int version,
                                  const char **out_exts,
                                  unsigned int *out_num_exts_i,
                                  char ***out_exts_i) {
#if GLAD_GL_IS_SOME_NEW_VERSION
  if (GLAD_VERSION_MAJOR(version) < 3) {
#else
  (void)version;
  (void)out_num_exts_i;
  (void)out_exts_i;
#endif
    if (context->GetString == NULL) {
      return 0;
    }
    *out_exts = (const char *)context->GetString(GL_EXTENSIONS);
#if GLAD_GL_IS_SOME_NEW_VERSION
  } else {
    unsigned int index = 0;
    unsigned int num_exts_i = 0;
    char **exts_i = NULL;
    if (context->GetStringi == NULL || context->GetIntegerv == NULL) {
      return 0;
    }
    context->GetIntegerv(GL_NUM_EXTENSIONS, (int *)&num_exts_i);
    if (num_exts_i > 0) {
      exts_i = (char **)malloc(num_exts_i * (sizeof *exts_i));
    }
    if (exts_i == NULL) {
      return 0;
    }
    for (index = 0; index < num_exts_i; index++) {
      const char *gl_str_tmp =
          (const char *)context->GetStringi(GL_EXTENSIONS, index);
      size_t len = strlen(gl_str_tmp) + 1;

      char *local_str = (char *)malloc(len * sizeof(char));
      if (local_str != NULL) {
        memcpy(local_str, gl_str_tmp, len * sizeof(char));
      }

      exts_i[index] = local_str;
    }

    *out_num_exts_i = num_exts_i;
    *out_exts_i = exts_i;
  }
#endif
  return 1;
}
static void glad_gl_free_extensions(char **exts_i, unsigned int num_exts_i) {
  if (exts_i != NULL) {
    unsigned int index;
    for (index = 0; index < num_exts_i; index++) {
      free((void *)(exts_i[index]));
    }
    free((void *)exts_i);
    exts_i = NULL;
  }
}
static int glad_gl_has_extension(int version, const char *exts,
                                 unsigned int num_exts_i, char **exts_i,
                                 const char *ext) {
  if (GLAD_VERSION_MAJOR(version) < 3 || !GLAD_GL_IS_SOME_NEW_VERSION) {
    const char *extensions;
    const char *loc;
    const char *terminator;
    extensions = exts;
    if (extensions == NULL || ext == NULL) {
      return 0;
    }
    while (1) {
      loc = strstr(extensions, ext);
      if (loc == NULL) {
        return 0;
      }
      terminator = loc + strlen(ext);
      if ((loc == extensions || *(loc - 1) == ' ') &&
          (*terminator == ' ' || *terminator == '\0')) {
        return 1;
      }
      extensions = terminator;
    }
  } else {
    unsigned int index;
    for (index = 0; index < num_exts_i; index++) {
      const char *e = exts_i[index];
      if (strcmp(e, ext) == 0) {
        return 1;
      }
    }
  }
  return 0;
}

static GLADapiproc glad_gl_get_proc_from_userptr(void *userptr,
                                                 const char *name) {
  return (GLAD_GNUC_EXTENSION(GLADapiproc(*)(const char *name)) userptr)(name);
}

static int glad_gl_find_extensions_gles2(GladGLES2Context *context,
                                         int version) {
  const char *exts = NULL;
  unsigned int num_exts_i = 0;
  char **exts_i = NULL;
  if (!glad_gl_get_extensions(context, version, &exts, &num_exts_i, &exts_i))
    return 0;

  (void)glad_gl_has_extension;

  glad_gl_free_extensions(exts_i, num_exts_i);

  return 1;
}

static int glad_gl_find_core_gles2(GladGLES2Context *context) {
  int i, major, minor;
  const char *version;
  const char *prefixes[] = {"OpenGL ES-CM ", "OpenGL ES-CL ", "OpenGL ES ",
                            NULL};
  version = (const char *)context->GetString(GL_VERSION);
  if (!version) return 0;
  for (i = 0; prefixes[i]; i++) {
    const size_t length = strlen(prefixes[i]);
    if (strncmp(version, prefixes[i], length) == 0) {
      version += length;
      break;
    }
  }

  GLAD_IMPL_UTIL_SSCANF(version, "%d.%d", &major, &minor);

  context->ES_VERSION_2_0 = (major == 2 && minor >= 0) || major > 2;
  context->ES_VERSION_3_0 = (major == 3 && minor >= 0) || major > 3;
  context->ES_VERSION_3_1 = (major == 3 && minor >= 1) || major > 3;
  context->ES_VERSION_3_2 = (major == 3 && minor >= 2) || major > 3;

  return GLAD_MAKE_VERSION(major, minor);
}

int gladLoadGLES2ContextUserPtr(GladGLES2Context *context,
                                GLADuserptrloadfunc load, void *userptr) {
  int version;

  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  if (context->GetString == NULL) return 0;
  if (context->GetString(GL_VERSION) == NULL) return 0;
  version = glad_gl_find_core_gles2(context);

  glad_gl_load_GL_ES_VERSION_2_0(context, load, userptr);
  glad_gl_load_GL_ES_VERSION_3_0(context, load, userptr);
  glad_gl_load_GL_ES_VERSION_3_1(context, load, userptr);
  glad_gl_load_GL_ES_VERSION_3_2(context, load, userptr);

  if (!glad_gl_find_extensions_gles2(context, version)) return 0;

  gladSetGLES2Context(context);

  return version;
}

int gladLoadGLES2UserPtr(GLADuserptrloadfunc load, void *userptr) {
  return gladLoadGLES2ContextUserPtr(gladGetGLES2Context(), load, userptr);
}

int gladLoadGLES2Context(GladGLES2Context *context, GLADloadfunc load) {
  return gladLoadGLES2ContextUserPtr(context, glad_gl_get_proc_from_userptr,
                                     GLAD_GNUC_EXTENSION(void *) load);
}

int gladLoadGLES2(GLADloadfunc load) {
  return gladLoadGLES2Context(gladGetGLES2Context(), load);
}

GladGLES2Context *gladGetGLES2Context() { return &glad_gles2_context; }

void gladSetGLES2Context(GladGLES2Context *context) {
  glad_gles2_context = *context;
}

#ifdef GLAD_GLES2

#ifndef GLAD_LOADER_LIBRARY_C_
#define GLAD_LOADER_LIBRARY_C_

#include <stddef.h>
#include <stdlib.h>

#if GLAD_PLATFORM_WIN32
#include <windows.h>
#else
#include <dlfcn.h>
#endif

static void *glad_get_dlopen_handle(const char *lib_names[], int length) {
  void *handle = NULL;
  int i;

  for (i = 0; i < length; ++i) {
#if GLAD_PLATFORM_WIN32
#if GLAD_PLATFORM_UWP
    size_t buffer_size = (strlen(lib_names[i]) + 1) * sizeof(WCHAR);
    LPWSTR buffer = (LPWSTR)malloc(buffer_size);
    if (buffer != NULL) {
      int ret =
          MultiByteToWideChar(CP_ACP, 0, lib_names[i], -1, buffer, buffer_size);
      if (ret != 0) {
        handle = (void *)LoadPackagedLibrary(buffer, 0);
      }
      free((void *)buffer);
    }
#else
    handle = (void *)LoadLibraryA(lib_names[i]);
#endif
#else
    handle = dlopen(lib_names[i], RTLD_LAZY | RTLD_LOCAL);
#endif
    if (handle != NULL) {
      return handle;
    }
  }

  return NULL;
}

static void glad_close_dlopen_handle(void *handle) {
  if (handle != NULL) {
#if GLAD_PLATFORM_WIN32
    FreeLibrary((HMODULE)handle);
#else
    dlclose(handle);
#endif
  }
}

static GLADapiproc glad_dlsym_handle(void *handle, const char *name) {
  if (handle == NULL) {
    return NULL;
  }

#if GLAD_PLATFORM_WIN32
  return (GLADapiproc)GetProcAddress((HMODULE)handle, name);
#else
  return GLAD_GNUC_EXTENSION(GLADapiproc) dlsym(handle, name);
#endif
}

#endif /* GLAD_LOADER_LIBRARY_C_ */

#if GLAD_PLATFORM_EMSCRIPTEN
typedef void *(GLAD_API_PTR *PFNEGLGETPROCADDRESSPROC)(const char *name);
extern void *emscripten_GetProcAddress(const char *name);
#else
#include <glad/egl.h>
#endif

struct _glad_gles2_userptr {
  void *handle;
  PFNEGLGETPROCADDRESSPROC get_proc_address_ptr;
};

static GLADapiproc glad_gles2_get_proc(void *vuserptr, const char *name) {
  struct _glad_gles2_userptr userptr = *(struct _glad_gles2_userptr *)vuserptr;
  GLADapiproc result = NULL;

#if !GLAD_PLATFORM_EMSCRIPTEN
  result = glad_dlsym_handle(userptr.handle, name);
#endif
  if (result == NULL) {
    result = userptr.get_proc_address_ptr(name);
  }

  return result;
}

static void *_gles2_handle = NULL;

static void *glad_gles2_dlopen_handle(void) {
#if GLAD_PLATFORM_EMSCRIPTEN
#elif GLAD_PLATFORM_APPLE
  static const char *NAMES[] = {"libGLESv2.dylib"};
#elif GLAD_PLATFORM_WIN32
  static const char *NAMES[] = {"GLESv2.dll", "libGLESv2.dll"};
#else
  static const char *NAMES[] = {"libGLESv2.so.2", "libGLESv2.so"};
#endif

#if GLAD_PLATFORM_EMSCRIPTEN
  return NULL;
#else
  if (_gles2_handle == NULL) {
    _gles2_handle =
        glad_get_dlopen_handle(NAMES, sizeof(NAMES) / sizeof(NAMES[0]));
  }

  return _gles2_handle;
#endif
}

static struct _glad_gles2_userptr glad_gles2_build_userptr(void *handle) {
  struct _glad_gles2_userptr userptr;
#if GLAD_PLATFORM_EMSCRIPTEN
  userptr.get_proc_address_ptr = emscripten_GetProcAddress;
#else
  userptr.handle = handle;
  userptr.get_proc_address_ptr = eglGetProcAddress;
#endif
  return userptr;
}

int gladLoaderLoadGLES2Context(GladGLES2Context *context) {
  int version = 0;
  void *handle = NULL;
  int did_load = 0;
  struct _glad_gles2_userptr userptr;

#if GLAD_PLATFORM_EMSCRIPTEN
  userptr.get_proc_address_ptr = emscripten_GetProcAddress;
  version = gladLoadGLES2ContextUserPtr(context, glad_gles2_get_proc, &userptr);
#else
  if (eglGetProcAddress == NULL) {
    return 0;
  }

  did_load = _gles2_handle == NULL;
  handle = glad_gles2_dlopen_handle();
  if (handle != NULL) {
    userptr = glad_gles2_build_userptr(handle);

    version =
        gladLoadGLES2ContextUserPtr(context, glad_gles2_get_proc, &userptr);

    if (!version && did_load) {
      gladLoaderUnloadGLES2();
    }
  }
#endif

  return version;
}

int gladLoaderLoadGLES2(void) {
  return gladLoaderLoadGLES2Context(gladGetGLES2Context());
}

void gladLoaderUnloadGLES2(void) {
  if (_gles2_handle != NULL) {
    glad_close_dlopen_handle(_gles2_handle);
    _gles2_handle = NULL;
  }
}

#endif /* GLAD_GLES2 */
