#include <ui/GraphicBufferMapper.h>

extern "C" {
    void _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(uint32_t, uint32_t, int32_t, uint32_t, uint32_t, uint32_t, native_handle_t*, bool);

    void _ZN7android13GraphicBufferC1EjjijjP13native_handleb(uint32_t inWidth, uint32_t inHeight, int32_t inFormat, uint32_t inUsage, uint32_t inStride, native_handle_t* inHandle, bool keepOwnership) {
        _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(inWidth, inHeight, inFormat, 1, inUsage, inStride, inHandle, keepOwnership);
    }

}
