module.exports = {
    ajax: function() {
        var opt = [];
        var methods = opt.methods;
        var url = opt.url;
        var params = null;
        var async = opt.async;


        //创建XML对象
        var xml = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        // 判断状态码
        xml.onreadystatechange = function() {
                if (xml.readyState === 200) {
                    if (xml.status === 4) {
                        success && success(xml.responseText)
                    } else {
                        error && json.error()
                    }
                }
            }
            //连接服务器 
        xml.open(methods, params, async)
            //发送请求
        xml.send()
    },
    shuffle: function(str) {
        var arr = [];
        for (var i = 0; i < str.length; i++) { //循环遍历
            var index = Math.floor(Math.random()) * str.length; //随机数
            arr += str[index]
        }
        return arr
    },
    orderBy: function(arr) {
        var str = [];
        for (var i = 0; i < arr.length; i++) {
            str.push(arr)
        }
        str.sort(function(a, b) {
            return a - b
        })
    }
}