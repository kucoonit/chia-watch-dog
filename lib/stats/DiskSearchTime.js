const { logger } = require('../utils/logger');
const { CWDEvent, TYPE_DAILY_STATS, PRIORITY_LOW, SERVICE_DAILY, EVT_DAILY_DISK_SEARCH } = require('../utils/event');

class DiskSearchTime {
  constructor() {
    this.numMeasurements = 0;
    this.totalTimeSeconds = 0;
    this.over5Seconds = 0;
    this.over15Seconds = 0;
  }

  reset() {
    this.numMeasurements = 0;
    this.totalTimeSeconds = 0;
    this.over5Seconds = 0;
    this.over15Seconds = 0;
  }

  consume(message) {
    const { searchTimeSeconds } = message;
    this.numMeasurements += 1;
    this.totalTimeSeconds += searchTimeSeconds;

    if (searchTimeSeconds > 5) {
      this.over5Seconds += 1;
    }
    if (searchTimeSeconds > 15) {
      this.over15Seconds += 1;
    }
  }

  getSummary() {
    if (this.numMeasurements === 0) return [];

    const data = {
      avgTimeSeconds: this.totalTimeSeconds / this.numMeasurements,
      pctOver5Seconds: this.over5Seconds / this.numMeasurements * 100,
      pctOver15Seconds: this.over15Seconds / this.numMeasurements * 100,
    };
    Object.assign(data, {
      type: EVT_DAILY_DISK_SEARCH,
      msg: `Search 🔍:\n- average: ${data.avgTimeSeconds}s\n- over 5s: ${data.pctOver5Seconds}% occasions\n- over 15s: ${data.pctOver15Seconds}% occasions`,
    });
    return [new CWDEvent(TYPE_DAILY_STATS, PRIORITY_LOW, SERVICE_DAILY, data)];
  }

}

module.exports = DiskSearchTime;