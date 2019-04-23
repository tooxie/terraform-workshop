import os
from datetime import datetime
from urllib.request import Request, urlopen

# URL of the site to check, stored in the site environment variable
SITE = os.environ['SITE']
# String expected to be on the page, stored in the expected environment
# variable
EXPECTED = os.environ['EXPECTED']


def validate(res):
    '''Return False to trigger the canary

    Currently this simply checks whether the EXPECTED string is present.
    However, you could modify this to perform any number of arbitrary
    checks on the contents of SITE.
    '''
    return EXPECTED in res


def handler(event, context):
    print('Checking {} at {}...'.format(SITE, event['time']))
    try:
        req = Request(SITE, headers={'User-Agent': 'AWS Lambda'})
        res = str(urlopen(req).read())
        if not validate(res):
            raise Exception('Validation failed')
    except:
        print('Check failed!')
        raise
    else:
        print('"{}" found in {}'.format(EXPECTED, SITE))
        return event['time']
    finally:
        print('Check complete at {}'.format(str(datetime.now())))

