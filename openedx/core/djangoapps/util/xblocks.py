"""
Useful utilities for dealing with XBlocks
"""

from django.conf import settings
from django.core.files.storage import get_storage_class

import request_cache


def get_ui_block_runtime():
    """
    Returns the UI runtime for use with the current request.
    """
    request_cache_dict = request_cache.get_cache('edxmako')
    cache_key = "ui_block_runtime"
    runtime = request_cache_dict.get(cache_key, None)
    if not runtime:
        runtime = get_storage_class(settings.UI_BLOCK_RUNTIME)()
        request_cache_dict[cache_key] = runtime
    return runtime
