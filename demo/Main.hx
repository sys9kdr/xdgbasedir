import xdgbasedir.XdgBasedir;

class Main{
    public static function main(){
        trace('Cache dir is ' + xdgCache);
        trace('Runtime dir is ' + xdgRuntime);
    }
}
