from testmoduleconfig.check_config import printtestvalue
from testmoduleconfig import __config__


printtestvalue()

__config__["test"] = "cipa"

printtestvalue()