<?php

interface IDate {
    public function getDays(): int;
    public function getHours(): int;
    public function getMinutes(): int;
    public function getSeconds(): int;
}

class Date implements IDate {
    private $days;
    private $hours;
    private $minutes;
    private $seconds;

    public function __construct(int $days, int $hours, int $minutes, int $seconds) {
        $this->days = $days;
        $this->hours = $hours;
        $this->minutes = $minutes;
        $this->seconds = $seconds;
    }

    public function getDays(): int {
        return $this->days;
    }

    public function getHours(): int {
        return $this->hours;
    }

    public function getMinutes(): int {
        return $this->minutes;
    }

    public function getSeconds(): int {
        return $this->seconds;
    }
}

function secondToDate(int $second): IDate {
    $days = floor($second / 86400);
    $hours = floor(($second / 3600) - ($days * 24));
    $minutes = floor(($second / 60) - ($days * 24 * 60) - ($hours * 60));
    $seconds = floor($second - ($days * 86400) - ($hours * 3600) - ($minutes * 60));

    return new Date($days, $hours, $minutes, $seconds);
}

