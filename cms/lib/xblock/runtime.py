"""
XBlock runtime implementations for edX Studio
"""

from django.core.urlresolvers import reverse
from xblock.runtime import UIBlockRuntime


class CmsUIBlockRuntime(UIBlockRuntime):
    """
    A CMS-specific implementation of a UIBlockRuntime.
    """

    def __init__(self, services=None, default_class=None, select=None):
        # TODO: instantiate the default set of services
        super(CmsUIBlockRuntime, self).__init__(services, default_class, select)


def handler_url(block, handler_name, suffix='', query='', thirdparty=False):
    """
    Handler URL function for Studio
    """

    if thirdparty:
        raise NotImplementedError("edX Studio doesn't support third-party xblock handler urls")

    url = reverse('component_handler', kwargs={
        'usage_key_string': unicode(block.scope_ids.usage_id).encode('utf-8'),
        'handler': handler_name,
        'suffix': suffix,
    }).rstrip('/')

    if query:
        url += '?' + query

    return url
