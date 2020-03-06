
const core = require('@actions/core');
import * as exec from '@actions/exec';
const wait = require('./wait');


// most @actions toolkit packages have async methods
async function run() {
    try {
        const ms = core.getInput('milliseconds');
        console.log(`Waiting ${ms} milliseconds ...`)

        core.debug((new Date()).toTimeString())
        await exec.exec('ll');
        await exec.exec('docker run -v $(pwd):/zap/wrk/:rw  -t owasp/zap2docker-stable zap-baseline.py  -t https://www.example.com -g gen.conf -J report_json.json');
        await exec.exec('ll');
        await wait('');
        core.debug((new Date()).toTimeString())

        core.setOutput('time', new Date().toTimeString());
    }
    catch (error) {
        core.setFailed(error.message);
    }
}

run();
