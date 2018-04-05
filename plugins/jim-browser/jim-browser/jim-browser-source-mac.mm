#include "jim-browser-source.hpp"
#include "cef-headers.hpp"
#include <util/threading.h>
#include <thread>
#include <mutex>

#include <Foundation/Foundation.h>

using namespace std;

/* ========================================================================= */

struct BrowserSource_Mac : BrowserSource {
	virtual ~BrowserSource_Mac()
	{
		DestroyBrowser();
	}

	virtual void CreateBrowser() override;
	virtual void DestroyBrowser() override;
	virtual void SendMouseClick(
			const struct obs_mouse_event *event,
			int32_t type,
			bool mouse_up,
			uint32_t click_count) override;
	virtual void SendMouseMove(
			const struct obs_mouse_event *event,
			bool mouse_leave) override;
	virtual void SendMouseWheel(
			const struct obs_mouse_event *event,
			int x_delta,
			int y_delta) override;
	virtual void SendFocus(bool focus) override;
	virtual void SendKeyClick(
			const struct obs_key_event *event,
			bool key_up) override;
	virtual void SetShowing(bool showing) override;
	virtual void SetActive(bool active) override;
	virtual void Refresh() override;
};

/* ========================================================================= */

static os_event_t *connect_event = nullptr;

static void BrowserManagerThread(void)
{
	[[NSThread currentThread] setName: @"CEF Isolation IO Thread"];

	@autoreleasepool {
		os_event_wait(connect_event);

		
	}
}

void InitBrowserManager()
{
}
