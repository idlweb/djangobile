# -*- coding: utf-8 -*-
from datetime import datetime

from django.conf import settings

from djangobile.context_processors import mobile


class DjangoMobileMiddleware(object):
    def process_response(self, request, response):
        return response

    def process_view(self, request, view_func, view_args, view_kwargs):
        return None

    def process_request(self, request):
        device = mobile(request)['device']
        setattr(request, 'device', device)
        return None

