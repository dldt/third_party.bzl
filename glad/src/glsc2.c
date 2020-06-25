#include <glad/glsc2.h>
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
GladGLSC2Context glad_glsc2_context = {};
#else
GladGLSC2Context glad_glsc2_context = {0};
#endif

static void glad_gl_load_GL_SC_VERSION_2_0(GladGLSC2Context *context,
                                           GLADuserptrloadfunc load,
                                           void *userptr) {
  if (!context->SC_VERSION_2_0) return;
  context->ActiveTexture =
      (PFNGLACTIVETEXTUREPROC)load(userptr, "glActiveTexture");
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
  context->CompressedTexSubImage2D = (PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)load(
      userptr, "glCompressedTexSubImage2D");
  context->CreateProgram =
      (PFNGLCREATEPROGRAMPROC)load(userptr, "glCreateProgram");
  context->CullFace = (PFNGLCULLFACEPROC)load(userptr, "glCullFace");
  context->DepthFunc = (PFNGLDEPTHFUNCPROC)load(userptr, "glDepthFunc");
  context->DepthMask = (PFNGLDEPTHMASKPROC)load(userptr, "glDepthMask");
  context->DepthRangef = (PFNGLDEPTHRANGEFPROC)load(userptr, "glDepthRangef");
  context->Disable = (PFNGLDISABLEPROC)load(userptr, "glDisable");
  context->DisableVertexAttribArray = (PFNGLDISABLEVERTEXATTRIBARRAYPROC)load(
      userptr, "glDisableVertexAttribArray");
  context->DrawArrays = (PFNGLDRAWARRAYSPROC)load(userptr, "glDrawArrays");
  context->DrawRangeElements =
      (PFNGLDRAWRANGEELEMENTSPROC)load(userptr, "glDrawRangeElements");
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
  context->GetGraphicsResetStatus = (PFNGLGETGRAPHICSRESETSTATUSPROC)load(
      userptr, "glGetGraphicsResetStatus");
  context->GetIntegerv = (PFNGLGETINTEGERVPROC)load(userptr, "glGetIntegerv");
  context->GetProgramiv =
      (PFNGLGETPROGRAMIVPROC)load(userptr, "glGetProgramiv");
  context->GetRenderbufferParameteriv =
      (PFNGLGETRENDERBUFFERPARAMETERIVPROC)load(userptr,
                                                "glGetRenderbufferParameteriv");
  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  context->GetTexParameterfv =
      (PFNGLGETTEXPARAMETERFVPROC)load(userptr, "glGetTexParameterfv");
  context->GetTexParameteriv =
      (PFNGLGETTEXPARAMETERIVPROC)load(userptr, "glGetTexParameteriv");
  context->GetUniformLocation =
      (PFNGLGETUNIFORMLOCATIONPROC)load(userptr, "glGetUniformLocation");
  context->GetVertexAttribPointerv = (PFNGLGETVERTEXATTRIBPOINTERVPROC)load(
      userptr, "glGetVertexAttribPointerv");
  context->GetVertexAttribfv =
      (PFNGLGETVERTEXATTRIBFVPROC)load(userptr, "glGetVertexAttribfv");
  context->GetVertexAttribiv =
      (PFNGLGETVERTEXATTRIBIVPROC)load(userptr, "glGetVertexAttribiv");
  context->GetnUniformfv =
      (PFNGLGETNUNIFORMFVPROC)load(userptr, "glGetnUniformfv");
  context->GetnUniformiv =
      (PFNGLGETNUNIFORMIVPROC)load(userptr, "glGetnUniformiv");
  context->Hint = (PFNGLHINTPROC)load(userptr, "glHint");
  context->IsEnabled = (PFNGLISENABLEDPROC)load(userptr, "glIsEnabled");
  context->LineWidth = (PFNGLLINEWIDTHPROC)load(userptr, "glLineWidth");
  context->PixelStorei = (PFNGLPIXELSTOREIPROC)load(userptr, "glPixelStorei");
  context->PolygonOffset =
      (PFNGLPOLYGONOFFSETPROC)load(userptr, "glPolygonOffset");
  context->ProgramBinary =
      (PFNGLPROGRAMBINARYPROC)load(userptr, "glProgramBinary");
  context->ReadnPixels = (PFNGLREADNPIXELSPROC)load(userptr, "glReadnPixels");
  context->RenderbufferStorage =
      (PFNGLRENDERBUFFERSTORAGEPROC)load(userptr, "glRenderbufferStorage");
  context->SampleCoverage =
      (PFNGLSAMPLECOVERAGEPROC)load(userptr, "glSampleCoverage");
  context->Scissor = (PFNGLSCISSORPROC)load(userptr, "glScissor");
  context->StencilFunc = (PFNGLSTENCILFUNCPROC)load(userptr, "glStencilFunc");
  context->StencilFuncSeparate =
      (PFNGLSTENCILFUNCSEPARATEPROC)load(userptr, "glStencilFuncSeparate");
  context->StencilMask = (PFNGLSTENCILMASKPROC)load(userptr, "glStencilMask");
  context->StencilMaskSeparate =
      (PFNGLSTENCILMASKSEPARATEPROC)load(userptr, "glStencilMaskSeparate");
  context->StencilOp = (PFNGLSTENCILOPPROC)load(userptr, "glStencilOp");
  context->StencilOpSeparate =
      (PFNGLSTENCILOPSEPARATEPROC)load(userptr, "glStencilOpSeparate");
  context->TexParameterf =
      (PFNGLTEXPARAMETERFPROC)load(userptr, "glTexParameterf");
  context->TexParameterfv =
      (PFNGLTEXPARAMETERFVPROC)load(userptr, "glTexParameterfv");
  context->TexParameteri =
      (PFNGLTEXPARAMETERIPROC)load(userptr, "glTexParameteri");
  context->TexParameteriv =
      (PFNGLTEXPARAMETERIVPROC)load(userptr, "glTexParameteriv");
  context->TexStorage2D =
      (PFNGLTEXSTORAGE2DPROC)load(userptr, "glTexStorage2D");
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

#if defined(GL_ES_VERSION_3_0) || defined(GL_VERSION_3_0)
#define GLAD_GL_IS_SOME_NEW_VERSION 1
#else
#define GLAD_GL_IS_SOME_NEW_VERSION 0
#endif

static int glad_gl_get_extensions(GladGLSC2Context *context, int version,
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

static int glad_gl_find_extensions_glsc2(GladGLSC2Context *context,
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

static int glad_gl_find_core_glsc2(GladGLSC2Context *context) {
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

  context->SC_VERSION_2_0 = (major == 2 && minor >= 0) || major > 2;

  return GLAD_MAKE_VERSION(major, minor);
}

int gladLoadGLSC2ContextUserPtr(GladGLSC2Context *context,
                                GLADuserptrloadfunc load, void *userptr) {
  int version;

  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  if (context->GetString == NULL) return 0;
  if (context->GetString(GL_VERSION) == NULL) return 0;
  version = glad_gl_find_core_glsc2(context);

  glad_gl_load_GL_SC_VERSION_2_0(context, load, userptr);

  if (!glad_gl_find_extensions_glsc2(context, version)) return 0;

  gladSetGLSC2Context(context);

  return version;
}

int gladLoadGLSC2UserPtr(GLADuserptrloadfunc load, void *userptr) {
  return gladLoadGLSC2ContextUserPtr(gladGetGLSC2Context(), load, userptr);
}

int gladLoadGLSC2Context(GladGLSC2Context *context, GLADloadfunc load) {
  return gladLoadGLSC2ContextUserPtr(context, glad_gl_get_proc_from_userptr,
                                     GLAD_GNUC_EXTENSION(void *) load);
}

int gladLoadGLSC2(GLADloadfunc load) {
  return gladLoadGLSC2Context(gladGetGLSC2Context(), load);
}

GladGLSC2Context *gladGetGLSC2Context() { return &glad_glsc2_context; }

void gladSetGLSC2Context(GladGLSC2Context *context) {
  glad_glsc2_context = *context;
}
