#include <glad/gles1.h>
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
GladGLES1Context glad_gles1_context = {};
#else
GladGLES1Context glad_gles1_context = {0};
#endif

static void glad_gl_load_GL_VERSION_ES_CM_1_0(GladGLES1Context *context,
                                              GLADuserptrloadfunc load,
                                              void *userptr) {
  if (!context->VERSION_ES_CM_1_0) return;
  context->ActiveTexture =
      (PFNGLACTIVETEXTUREPROC)load(userptr, "glActiveTexture");
  context->AlphaFunc = (PFNGLALPHAFUNCPROC)load(userptr, "glAlphaFunc");
  context->AlphaFuncx = (PFNGLALPHAFUNCXPROC)load(userptr, "glAlphaFuncx");
  context->BindBuffer = (PFNGLBINDBUFFERPROC)load(userptr, "glBindBuffer");
  context->BindTexture = (PFNGLBINDTEXTUREPROC)load(userptr, "glBindTexture");
  context->BlendFunc = (PFNGLBLENDFUNCPROC)load(userptr, "glBlendFunc");
  context->BufferData = (PFNGLBUFFERDATAPROC)load(userptr, "glBufferData");
  context->BufferSubData =
      (PFNGLBUFFERSUBDATAPROC)load(userptr, "glBufferSubData");
  context->Clear = (PFNGLCLEARPROC)load(userptr, "glClear");
  context->ClearColor = (PFNGLCLEARCOLORPROC)load(userptr, "glClearColor");
  context->ClearColorx = (PFNGLCLEARCOLORXPROC)load(userptr, "glClearColorx");
  context->ClearDepthf = (PFNGLCLEARDEPTHFPROC)load(userptr, "glClearDepthf");
  context->ClearDepthx = (PFNGLCLEARDEPTHXPROC)load(userptr, "glClearDepthx");
  context->ClearStencil =
      (PFNGLCLEARSTENCILPROC)load(userptr, "glClearStencil");
  context->ClientActiveTexture =
      (PFNGLCLIENTACTIVETEXTUREPROC)load(userptr, "glClientActiveTexture");
  context->ClipPlanef = (PFNGLCLIPPLANEFPROC)load(userptr, "glClipPlanef");
  context->ClipPlanex = (PFNGLCLIPPLANEXPROC)load(userptr, "glClipPlanex");
  context->Color4f = (PFNGLCOLOR4FPROC)load(userptr, "glColor4f");
  context->Color4ub = (PFNGLCOLOR4UBPROC)load(userptr, "glColor4ub");
  context->Color4x = (PFNGLCOLOR4XPROC)load(userptr, "glColor4x");
  context->ColorMask = (PFNGLCOLORMASKPROC)load(userptr, "glColorMask");
  context->ColorPointer =
      (PFNGLCOLORPOINTERPROC)load(userptr, "glColorPointer");
  context->CompressedTexImage2D =
      (PFNGLCOMPRESSEDTEXIMAGE2DPROC)load(userptr, "glCompressedTexImage2D");
  context->CompressedTexSubImage2D = (PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)load(
      userptr, "glCompressedTexSubImage2D");
  context->CopyTexImage2D =
      (PFNGLCOPYTEXIMAGE2DPROC)load(userptr, "glCopyTexImage2D");
  context->CopyTexSubImage2D =
      (PFNGLCOPYTEXSUBIMAGE2DPROC)load(userptr, "glCopyTexSubImage2D");
  context->CullFace = (PFNGLCULLFACEPROC)load(userptr, "glCullFace");
  context->DeleteBuffers =
      (PFNGLDELETEBUFFERSPROC)load(userptr, "glDeleteBuffers");
  context->DeleteTextures =
      (PFNGLDELETETEXTURESPROC)load(userptr, "glDeleteTextures");
  context->DepthFunc = (PFNGLDEPTHFUNCPROC)load(userptr, "glDepthFunc");
  context->DepthMask = (PFNGLDEPTHMASKPROC)load(userptr, "glDepthMask");
  context->DepthRangef = (PFNGLDEPTHRANGEFPROC)load(userptr, "glDepthRangef");
  context->DepthRangex = (PFNGLDEPTHRANGEXPROC)load(userptr, "glDepthRangex");
  context->Disable = (PFNGLDISABLEPROC)load(userptr, "glDisable");
  context->DisableClientState =
      (PFNGLDISABLECLIENTSTATEPROC)load(userptr, "glDisableClientState");
  context->DrawArrays = (PFNGLDRAWARRAYSPROC)load(userptr, "glDrawArrays");
  context->DrawElements =
      (PFNGLDRAWELEMENTSPROC)load(userptr, "glDrawElements");
  context->Enable = (PFNGLENABLEPROC)load(userptr, "glEnable");
  context->EnableClientState =
      (PFNGLENABLECLIENTSTATEPROC)load(userptr, "glEnableClientState");
  context->Finish = (PFNGLFINISHPROC)load(userptr, "glFinish");
  context->Flush = (PFNGLFLUSHPROC)load(userptr, "glFlush");
  context->Fogf = (PFNGLFOGFPROC)load(userptr, "glFogf");
  context->Fogfv = (PFNGLFOGFVPROC)load(userptr, "glFogfv");
  context->Fogx = (PFNGLFOGXPROC)load(userptr, "glFogx");
  context->Fogxv = (PFNGLFOGXVPROC)load(userptr, "glFogxv");
  context->FrontFace = (PFNGLFRONTFACEPROC)load(userptr, "glFrontFace");
  context->Frustumf = (PFNGLFRUSTUMFPROC)load(userptr, "glFrustumf");
  context->Frustumx = (PFNGLFRUSTUMXPROC)load(userptr, "glFrustumx");
  context->GenBuffers = (PFNGLGENBUFFERSPROC)load(userptr, "glGenBuffers");
  context->GenTextures = (PFNGLGENTEXTURESPROC)load(userptr, "glGenTextures");
  context->GetBooleanv = (PFNGLGETBOOLEANVPROC)load(userptr, "glGetBooleanv");
  context->GetBufferParameteriv =
      (PFNGLGETBUFFERPARAMETERIVPROC)load(userptr, "glGetBufferParameteriv");
  context->GetClipPlanef =
      (PFNGLGETCLIPPLANEFPROC)load(userptr, "glGetClipPlanef");
  context->GetClipPlanex =
      (PFNGLGETCLIPPLANEXPROC)load(userptr, "glGetClipPlanex");
  context->GetError = (PFNGLGETERRORPROC)load(userptr, "glGetError");
  context->GetFixedv = (PFNGLGETFIXEDVPROC)load(userptr, "glGetFixedv");
  context->GetFloatv = (PFNGLGETFLOATVPROC)load(userptr, "glGetFloatv");
  context->GetIntegerv = (PFNGLGETINTEGERVPROC)load(userptr, "glGetIntegerv");
  context->GetLightfv = (PFNGLGETLIGHTFVPROC)load(userptr, "glGetLightfv");
  context->GetLightxv = (PFNGLGETLIGHTXVPROC)load(userptr, "glGetLightxv");
  context->GetMaterialfv =
      (PFNGLGETMATERIALFVPROC)load(userptr, "glGetMaterialfv");
  context->GetMaterialxv =
      (PFNGLGETMATERIALXVPROC)load(userptr, "glGetMaterialxv");
  context->GetPointerv = (PFNGLGETPOINTERVPROC)load(userptr, "glGetPointerv");
  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  context->GetTexEnvfv = (PFNGLGETTEXENVFVPROC)load(userptr, "glGetTexEnvfv");
  context->GetTexEnviv = (PFNGLGETTEXENVIVPROC)load(userptr, "glGetTexEnviv");
  context->GetTexEnvxv = (PFNGLGETTEXENVXVPROC)load(userptr, "glGetTexEnvxv");
  context->GetTexParameterfv =
      (PFNGLGETTEXPARAMETERFVPROC)load(userptr, "glGetTexParameterfv");
  context->GetTexParameteriv =
      (PFNGLGETTEXPARAMETERIVPROC)load(userptr, "glGetTexParameteriv");
  context->GetTexParameterxv =
      (PFNGLGETTEXPARAMETERXVPROC)load(userptr, "glGetTexParameterxv");
  context->Hint = (PFNGLHINTPROC)load(userptr, "glHint");
  context->IsBuffer = (PFNGLISBUFFERPROC)load(userptr, "glIsBuffer");
  context->IsEnabled = (PFNGLISENABLEDPROC)load(userptr, "glIsEnabled");
  context->IsTexture = (PFNGLISTEXTUREPROC)load(userptr, "glIsTexture");
  context->LightModelf = (PFNGLLIGHTMODELFPROC)load(userptr, "glLightModelf");
  context->LightModelfv =
      (PFNGLLIGHTMODELFVPROC)load(userptr, "glLightModelfv");
  context->LightModelx = (PFNGLLIGHTMODELXPROC)load(userptr, "glLightModelx");
  context->LightModelxv =
      (PFNGLLIGHTMODELXVPROC)load(userptr, "glLightModelxv");
  context->Lightf = (PFNGLLIGHTFPROC)load(userptr, "glLightf");
  context->Lightfv = (PFNGLLIGHTFVPROC)load(userptr, "glLightfv");
  context->Lightx = (PFNGLLIGHTXPROC)load(userptr, "glLightx");
  context->Lightxv = (PFNGLLIGHTXVPROC)load(userptr, "glLightxv");
  context->LineWidth = (PFNGLLINEWIDTHPROC)load(userptr, "glLineWidth");
  context->LineWidthx = (PFNGLLINEWIDTHXPROC)load(userptr, "glLineWidthx");
  context->LoadIdentity =
      (PFNGLLOADIDENTITYPROC)load(userptr, "glLoadIdentity");
  context->LoadMatrixf = (PFNGLLOADMATRIXFPROC)load(userptr, "glLoadMatrixf");
  context->LoadMatrixx = (PFNGLLOADMATRIXXPROC)load(userptr, "glLoadMatrixx");
  context->LogicOp = (PFNGLLOGICOPPROC)load(userptr, "glLogicOp");
  context->Materialf = (PFNGLMATERIALFPROC)load(userptr, "glMaterialf");
  context->Materialfv = (PFNGLMATERIALFVPROC)load(userptr, "glMaterialfv");
  context->Materialx = (PFNGLMATERIALXPROC)load(userptr, "glMaterialx");
  context->Materialxv = (PFNGLMATERIALXVPROC)load(userptr, "glMaterialxv");
  context->MatrixMode = (PFNGLMATRIXMODEPROC)load(userptr, "glMatrixMode");
  context->MultMatrixf = (PFNGLMULTMATRIXFPROC)load(userptr, "glMultMatrixf");
  context->MultMatrixx = (PFNGLMULTMATRIXXPROC)load(userptr, "glMultMatrixx");
  context->MultiTexCoord4f =
      (PFNGLMULTITEXCOORD4FPROC)load(userptr, "glMultiTexCoord4f");
  context->MultiTexCoord4x =
      (PFNGLMULTITEXCOORD4XPROC)load(userptr, "glMultiTexCoord4x");
  context->Normal3f = (PFNGLNORMAL3FPROC)load(userptr, "glNormal3f");
  context->Normal3x = (PFNGLNORMAL3XPROC)load(userptr, "glNormal3x");
  context->NormalPointer =
      (PFNGLNORMALPOINTERPROC)load(userptr, "glNormalPointer");
  context->Orthof = (PFNGLORTHOFPROC)load(userptr, "glOrthof");
  context->Orthox = (PFNGLORTHOXPROC)load(userptr, "glOrthox");
  context->PixelStorei = (PFNGLPIXELSTOREIPROC)load(userptr, "glPixelStorei");
  context->PointParameterf =
      (PFNGLPOINTPARAMETERFPROC)load(userptr, "glPointParameterf");
  context->PointParameterfv =
      (PFNGLPOINTPARAMETERFVPROC)load(userptr, "glPointParameterfv");
  context->PointParameterx =
      (PFNGLPOINTPARAMETERXPROC)load(userptr, "glPointParameterx");
  context->PointParameterxv =
      (PFNGLPOINTPARAMETERXVPROC)load(userptr, "glPointParameterxv");
  context->PointSize = (PFNGLPOINTSIZEPROC)load(userptr, "glPointSize");
  context->PointSizex = (PFNGLPOINTSIZEXPROC)load(userptr, "glPointSizex");
  context->PolygonOffset =
      (PFNGLPOLYGONOFFSETPROC)load(userptr, "glPolygonOffset");
  context->PolygonOffsetx =
      (PFNGLPOLYGONOFFSETXPROC)load(userptr, "glPolygonOffsetx");
  context->PopMatrix = (PFNGLPOPMATRIXPROC)load(userptr, "glPopMatrix");
  context->PushMatrix = (PFNGLPUSHMATRIXPROC)load(userptr, "glPushMatrix");
  context->ReadPixels = (PFNGLREADPIXELSPROC)load(userptr, "glReadPixels");
  context->Rotatef = (PFNGLROTATEFPROC)load(userptr, "glRotatef");
  context->Rotatex = (PFNGLROTATEXPROC)load(userptr, "glRotatex");
  context->SampleCoverage =
      (PFNGLSAMPLECOVERAGEPROC)load(userptr, "glSampleCoverage");
  context->SampleCoveragex =
      (PFNGLSAMPLECOVERAGEXPROC)load(userptr, "glSampleCoveragex");
  context->Scalef = (PFNGLSCALEFPROC)load(userptr, "glScalef");
  context->Scalex = (PFNGLSCALEXPROC)load(userptr, "glScalex");
  context->Scissor = (PFNGLSCISSORPROC)load(userptr, "glScissor");
  context->ShadeModel = (PFNGLSHADEMODELPROC)load(userptr, "glShadeModel");
  context->StencilFunc = (PFNGLSTENCILFUNCPROC)load(userptr, "glStencilFunc");
  context->StencilMask = (PFNGLSTENCILMASKPROC)load(userptr, "glStencilMask");
  context->StencilOp = (PFNGLSTENCILOPPROC)load(userptr, "glStencilOp");
  context->TexCoordPointer =
      (PFNGLTEXCOORDPOINTERPROC)load(userptr, "glTexCoordPointer");
  context->TexEnvf = (PFNGLTEXENVFPROC)load(userptr, "glTexEnvf");
  context->TexEnvfv = (PFNGLTEXENVFVPROC)load(userptr, "glTexEnvfv");
  context->TexEnvi = (PFNGLTEXENVIPROC)load(userptr, "glTexEnvi");
  context->TexEnviv = (PFNGLTEXENVIVPROC)load(userptr, "glTexEnviv");
  context->TexEnvx = (PFNGLTEXENVXPROC)load(userptr, "glTexEnvx");
  context->TexEnvxv = (PFNGLTEXENVXVPROC)load(userptr, "glTexEnvxv");
  context->TexImage2D = (PFNGLTEXIMAGE2DPROC)load(userptr, "glTexImage2D");
  context->TexParameterf =
      (PFNGLTEXPARAMETERFPROC)load(userptr, "glTexParameterf");
  context->TexParameterfv =
      (PFNGLTEXPARAMETERFVPROC)load(userptr, "glTexParameterfv");
  context->TexParameteri =
      (PFNGLTEXPARAMETERIPROC)load(userptr, "glTexParameteri");
  context->TexParameteriv =
      (PFNGLTEXPARAMETERIVPROC)load(userptr, "glTexParameteriv");
  context->TexParameterx =
      (PFNGLTEXPARAMETERXPROC)load(userptr, "glTexParameterx");
  context->TexParameterxv =
      (PFNGLTEXPARAMETERXVPROC)load(userptr, "glTexParameterxv");
  context->TexSubImage2D =
      (PFNGLTEXSUBIMAGE2DPROC)load(userptr, "glTexSubImage2D");
  context->Translatef = (PFNGLTRANSLATEFPROC)load(userptr, "glTranslatef");
  context->Translatex = (PFNGLTRANSLATEXPROC)load(userptr, "glTranslatex");
  context->VertexPointer =
      (PFNGLVERTEXPOINTERPROC)load(userptr, "glVertexPointer");
  context->Viewport = (PFNGLVIEWPORTPROC)load(userptr, "glViewport");
}

#if defined(GL_ES_VERSION_3_0) || defined(GL_VERSION_3_0)
#define GLAD_GL_IS_SOME_NEW_VERSION 1
#else
#define GLAD_GL_IS_SOME_NEW_VERSION 0
#endif

static int glad_gl_get_extensions(GladGLES1Context *context, int version,
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

static int glad_gl_find_extensions_gles1(GladGLES1Context *context,
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

static int glad_gl_find_core_gles1(GladGLES1Context *context) {
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

  context->VERSION_ES_CM_1_0 = (major == 1 && minor >= 0) || major > 1;

  return GLAD_MAKE_VERSION(major, minor);
}

int gladLoadGLES1ContextUserPtr(GladGLES1Context *context,
                                GLADuserptrloadfunc load, void *userptr) {
  int version;

  context->GetString = (PFNGLGETSTRINGPROC)load(userptr, "glGetString");
  if (context->GetString == NULL) return 0;
  if (context->GetString(GL_VERSION) == NULL) return 0;
  version = glad_gl_find_core_gles1(context);

  glad_gl_load_GL_VERSION_ES_CM_1_0(context, load, userptr);

  if (!glad_gl_find_extensions_gles1(context, version)) return 0;

  gladSetGLES1Context(context);

  return version;
}

int gladLoadGLES1UserPtr(GLADuserptrloadfunc load, void *userptr) {
  return gladLoadGLES1ContextUserPtr(gladGetGLES1Context(), load, userptr);
}

int gladLoadGLES1Context(GladGLES1Context *context, GLADloadfunc load) {
  return gladLoadGLES1ContextUserPtr(context, glad_gl_get_proc_from_userptr,
                                     GLAD_GNUC_EXTENSION(void *) load);
}

int gladLoadGLES1(GLADloadfunc load) {
  return gladLoadGLES1Context(gladGetGLES1Context(), load);
}

GladGLES1Context *gladGetGLES1Context() { return &glad_gles1_context; }

void gladSetGLES1Context(GladGLES1Context *context) {
  glad_gles1_context = *context;
}

#ifdef GLAD_GLES1

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

#include <glad/egl.h>

struct _glad_gles1_userptr {
  void *handle;
  PFNEGLGETPROCADDRESSPROC get_proc_address_ptr;
};

static GLADapiproc glad_gles1_get_proc(void *vuserptr, const char *name) {
  struct _glad_gles1_userptr userptr = *(struct _glad_gles1_userptr *)vuserptr;
  GLADapiproc result = NULL;

  result = glad_dlsym_handle(userptr.handle, name);
  if (result == NULL) {
    result = userptr.get_proc_address_ptr(name);
  }

  return result;
}

static void *_gles1_handle = NULL;

static void *glad_gles1_dlopen_handle(void) {
#if GLAD_PLATFORM_APPLE
  static const char *NAMES[] = {"libGLESv1_CM.dylib"};
#elif GLAD_PLATFORM_WIN32
  static const char *NAMES[] = {"GLESv1_CM.dll", "libGLESv1_CM",
                                "libGLES_CM.dll"};
#else
  static const char *NAMES[] = {"libGLESv1_CM.so.1", "libGLESv1_CM.so",
                                "libGLES_CM.so.1"};
#endif

  if (_gles1_handle == NULL) {
    _gles1_handle =
        glad_get_dlopen_handle(NAMES, sizeof(NAMES) / sizeof(NAMES[0]));
  }

  return _gles1_handle;
}

static struct _glad_gles1_userptr glad_gles1_build_userptr(void *handle) {
  struct _glad_gles1_userptr userptr;
  userptr.handle = handle;
  userptr.get_proc_address_ptr = eglGetProcAddress;
  return userptr;
}

int gladLoaderLoadGLES1Context(GladGLES1Context *context) {
  int version = 0;
  void *handle = NULL;
  int did_load = 0;
  struct _glad_gles1_userptr userptr;

  if (eglGetProcAddress == NULL) {
    return 0;
  }

  did_load = _gles1_handle == NULL;
  handle = glad_gles1_dlopen_handle();
  if (handle != NULL) {
    userptr = glad_gles1_build_userptr(handle);

    version =
        gladLoadGLES1ContextUserPtr(context, glad_gles1_get_proc, &userptr);

    if (!version && did_load) {
      gladLoaderUnloadGLES1();
    }
  }

  return version;
}

int gladLoaderLoadGLES1(void) {
  return gladLoaderLoadGLES1Context(gladGetGLES1Context());
}

void gladLoaderUnloadGLES1(void) {
  if (_gles1_handle != NULL) {
    glad_close_dlopen_handle(_gles1_handle);
    _gles1_handle = NULL;
  }
}

#endif /* GLAD_GLES1 */
