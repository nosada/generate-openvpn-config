"""Define logger instance"""

from logging import getLogger, StreamHandler
from logging import INFO


def return_logger():
    """Generate and return logger instance"""
    logger = getLogger(__name__)
    handler = StreamHandler()
    handler.setLevel(INFO)
    logger.setLevel(INFO)
    logger.addHandler(handler)
    logger.propagate = False
    return logger
