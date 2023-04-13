// runs from test.sh that set environment variable.
import utest.Assert;
import utest.ITest;
import utest.Runner;
import utest.ui.Report;

import xdgbasedir.XdgBasedir;

class Test {
    static function main() {
        var tests:Array<ITest> = [new MyTests()];
        var runner:Runner = new Runner();

        Report.create(runner);
        for (test in tests) {
            runner.addCase(test);
        }
        runner.run();
    }
}


class MyTests implements ITest {

    public function new() {}

    public function setup() {
        final xdgData = xdgData;
        final xdgConfig = xdgConfig;
        final xdgState = xdgState;
        final xdgCache = xdgCache;
        final xdgRuntime = xdgRuntime;
        final xdgDataDirectories = xdgDataDirectories;
        final xdgConfigDirectories = xdgConfigDirectories;
    }

    /* Every test function name has to start with 'test' */
    public function testXdgData() {
        Assert.equals(xdgData, "data");
    }

    public function testXdgConfig() {
        Assert.equals(xdgConfig, "config");
    }
    public function testXdgState(){
        Assert.equals(xdgState, "state");
    }
    public function testXdgCache(){
        Assert.equals(xdgCache, "cache");
    }
    public function testXdgRuntime(){
        Assert.equals(xdgRuntime, "runtime");
    }
    public function testXdgDataDirectories(){
        Assert.equals(xdgDataDirectories[0], "data");
        Assert.equals(xdgDataDirectories[1], "dirs");
        Assert.equals(xdgDataDirectories[2], "data_dirs");
    }
    public function testXdgConfigDirectories(){
        Assert.equals(xdgConfigDirectories[0], "config");
        Assert.equals(xdgConfigDirectories[1], "dirs");
        Assert.equals(xdgConfigDirectories[2], "config_dirs");
    }
}
