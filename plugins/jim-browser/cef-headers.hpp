#pragma once

#ifdef _MSC_VER
# pragma warning(push)
# pragma warning(disable : 4100)
#elif __APPLE__
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include <include/cef_app.h>
#include <include/cef_base.h>
#include <include/cef_task.h>
#include <include/cef_client.h>
#include <include/cef_parser.h>
#include <include/cef_scheme.h>
#include <include/cef_version.h>
#include <include/cef_render_process_handler.h>

#ifdef _MSC_VER
# pragma warning(pop)
#elif __APPLE__
# pragma GCC diagnostic pop
#endif
