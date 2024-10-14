from typing import Dict

def second_to_date(second: int) -> Dict[str, int]:
    days = second // 86400
    hours = (second // 3600) - (days * 24)
    minutes = (second // 60) - (days * 24 * 60) - (hours * 60)
    seconds = second - (days * 86400) - (hours * 3600) - (minutes * 60)

    export = {
        'Days': days,
        'Hours': hours,
        'Minutes': minutes,
        'Seconds': seconds,
    }
    return export

