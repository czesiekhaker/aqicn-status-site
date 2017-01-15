#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2017 Michał "czesiek" Czyżewski <me@czesiek.net>
#
# Distributed under terms of the MIT license.

from bottle import route, view, run
import subprocess
import json

@route('/')
@route('/<place>')
@view('main')
def main(place='zakopane'):
    p = subprocess.run(['../aqicn-status/air_quality', '--type', 'json', place], stdout=subprocess.PIPE)
    aq_json = json.loads(p.stdout.decode('utf-8'))
    return aq_json

run(host='localhost', port=8080, debug=True)
