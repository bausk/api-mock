# aiohttp_example.py
import argparse
from aiohttp import web


parser = argparse.ArgumentParser(description="aiohttp server example")
parser.add_argument('--path')
parser.add_argument('--port')


async def index(request):
    return web.Response(text="Welcome home!")


if __name__ == '__main__':
    app = web.Application()
    # configure app
    app.router.add_get('/', index)
    args = parser.parse_args()
    web.run_app(app, path=args.path, port=args.port)
