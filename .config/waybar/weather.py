#!/usr/bin/env python3

import os
import sys
import time
import requests
import json


def fetch_weather(location: str) -> str:
    """
    Fetches the weather from wttr.in
    
    Args:
        location (str): Weather location

    Returns:
        str: The weather if the request was successful, otherwise an empty string
    """
    URL = f"https://wttr.in/{location}?format=%c%f"
    resp = requests.get(URL)

    return resp.text.replace(" +", "").replace("C", "") if resp.ok else ""


def load_cache(path: str) -> tuple[str, int]:
    """ 
    Loads the weather cache.

    Args:
        path (str): Path to cache file

    Returns:
        tuple[str, int]: The cached weather and the last time it was updated
    """
    if not os.path.exists(path):
        return ("", 0)

    with open(path, "r") as file:
        cache = file.readline()
        weather, last_updated = cache.split(":")
        last_updated = int(last_updated)

        return (weather, last_updated)


def write_cache(weather: str, path: str) -> None:
    """
    Writes the weather cache in the format "{weather}:{last_updated}" to `path`
    
    Args:
        weather (str): Weather data to be cached
        path (str): Cache file path

    Returns:
        None
    """
    with open(path, "w") as file:
        now = int(time.time())
        file.write(f"{weather}:{now}")


def print_formatted(text: str) -> None:
    """
    Prints `text` according to waybar json format

    Args:
        text (str): Lable text

    Returns:
        None
    """
    output = {
            "text": text
            }

    print(json.dumps(output), end="")


UPDATE_INTERVAL = 60 * 30 # Upate every 30mins
CACHE_PATH = "/home/ahmed/.cache/.waybar_weather_cache"

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print_formatted("Missing Location")
        exit(0)

    location = sys.argv[1]
    cached_weather, last_updated = load_cache(CACHE_PATH)
    now = int(time.time())

    if now - last_updated > UPDATE_INTERVAL:
        weather = fetch_weather(location)
        write_cache(weather, CACHE_PATH)

        print_formatted(weather)
    else:
        print_formatted(cached_weather)
