function openDialog(url, width, height) {
    var RadNum = Math.random();
    if (url.indexOf("?") > 0) {
        url += "&Radstr=" + RadNum;
    }
    else {
        url += "?Radstr=" + RadNum;
    }
    dialog = $("<div ><iframe frameborder='0' scrolling='no' height='100%' width='100%' src='" + url + "'/></div>").dialog({
        autoOpen: false,
        height: height,
        width: width,
        modal: true,
        resizable: true,
        close: function () {

        }
    });
    dialog.dialog("open");
}