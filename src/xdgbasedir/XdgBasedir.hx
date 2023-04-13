package xdgbasedir;

import Sys;
import haxe.io.Path;

// TODO: Sys.getEnv() is better?
private final envMap: Map<String, String> = Sys.environment();

final homedir = envMap.get("HOME");

final xdgData = envMap.get("XDG_DATA_HOME") ??
    (homedir != null ? Path.join([homedir, '.local', 'share']) : null);

final xdgConfig = envMap.get("XDG_CONFIG_HOME") ??
    (homedir != null ? Path.join([homedir, '.config']) : null);

final xdgState = envMap.get("XDG_STATE_HOME") ??
    (homedir != null ? Path.join([homedir, '.local', 'state']) : null);

final xdgCache = envMap.get("XDG_CACHE_HOME") ??
    (homedir != null ? Path.join([homedir, '.cache']) : null);

final xdgRuntime = envMap.get("XDG_RUNTIME_DIR");

@:nullSafety(Strict)
final xdgDataDirectories = (() -> {
    final dirs = (envMap.get("XDG_DATA_DIRS") ?? '/usr/local/share/:/usr/share/').split(':');
    if (xdgData != null) {
        return [xdgData].concat(dirs);
    } else {
        return dirs;
    }
})();

@:nullSafety(Strict)
final xdgConfigDirectories = (() -> {
    final dirs = (envMap.get("XDG_CONFIG_DIRS") ?? '/etc/xdg').split(':');
    if (xdgConfig != null) {
        return [xdgConfig].concat(dirs);
    } else {
        return dirs;
    }
})();

