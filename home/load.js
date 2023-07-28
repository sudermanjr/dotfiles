import http from "k6/http";
import { check, fail } from "k6";


export const options = {
    thresholds: {
        http_req_failed: ['rate<0.01'], // http errors should be less than 1%
        http_req_duration: ['p(95)<200'], // 95% of requests should be below 200ms
    },
    scenarios: {
      //ramping_vu_scenario: {
      //  executor: "ramping-vus",
      //  startVUs: 1,
      //  stages: [
      //    { duration: '3m', target: 20 },
      //    { duration: '1m', target: 2 },
      //  ],
      //  gracefulRampDown: '10s',
      //},
      ramping_arrival_scenario: {
        executor: 'ramping-arrival-rate',
        // Start iterations per `timeUnit`
        startRate: 300,
        // Start `startRate` iterations per minute
        timeUnit: '1m',
        // Pre-allocate necessary VUs.
        preAllocatedVUs: 50,
        stages: [
          // Start 300 iterations per `timeUnit` for the first minute.
          { target: 600, duration: '1h' },

          // Linearly ramp-up to starting 600 iterations per `timeUnit` over the following two minutes.
          { target: 1800, duration: '3h' },

          // Cntinue starting 600 iterations per `timeUnit` for the following four minutes.
          { target: 600, duration: '4h' },

          // Linearly ramp-down to starting 60 iterations per `timeUnit` over the last two minute.
          { target: 60, duration: '2h' },
        ],
      },
  },
};

export default function() {
    let res = http.get(`${__ENV.TARGET}`);

    check(res, {
        "Status 200": (r) => r.status === 200
    });
};
