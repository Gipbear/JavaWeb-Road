// 封装一个代替getElementById()方法
function byId(id) {
	return typeof(id) === "string" ? document.getElementById(id) : id;
}

// 全局变量，围绕index索引进行设计
var index = 0,
	timer = null,
	pics = byId("banner").getElementsByTagName("div"),
	dots = byId("dots").getElementsByTagName("span"),
	prev = byId("prev"),
	next = byId("next"),
	len = pics.length, // pics的个数和dots的个数一定是一样的
	menu = byId("menu-content"),
	subMenu = byId("sub-menu"),
	innerBox = subMenu.getElementsByClassName("inner-box"),
	menuItems = menu.getElementsByClassName("menu-item");

function slideImg() {
	var main = byId("main");
	// 划过清除定时器，离开继续
	main.onmouseover = function() {
		// 划过清除定时器
		if (timer) {
			clearInterval(timer);
		}
	}
	// 调用onmouseout事件
	main.onmouseout = function() {
		// 定时调用
		timer = setInterval(function() {
			index++;
			if (index >= len) {
				index = 0;
			}
			// 切换图片
			changeImg();
		}, 3000)
	}
	// 调用onmouseout方法，自动在main上调用触发鼠标离开的事件
	main.onmouseout();
	// 点击圆点切换，且绑定点击事件，点击圆点切换图片
	for (var d = 0; d < len; d++) {
		// 给所有的span添加一个id的属性，值为d，作为当前span的索引，id最好不要设置为数字
		dots[d].id = d;
		dots[d].onclick = function() {
			// function中的d代表的是d最后的值
			// 改变index为当前索引
			index = this.id;

			changeImg();
		}
	}
	// 下一张
	next.onclick = function() {
		index++;
		if (index >= len) {
			index = 0;
		}
		changeImg();
	}
	// 上一张
	prev.onclick = function() {
		index--;
		if (index < 0) {
			index = len - 1;
		}
		changeImg();
	}

	// 导航菜单
	// 遍历主菜单，且绑定事件
	for (var m = 0; m < menuItems.length; m++) {
		// 给每一个menu-item定义一个data-index属性，作为索引
		menuItems[m].setAttribute("data-index", m);
		menuItems[m].onmouseover = function() {
			subMenu.className = 'sub-menu';
			var idx = this.getAttribute("data-index");
			// 遍历所有子菜单，将每一个都隐藏
			for (var i = 0; i < innerBox.length; i++) {
				innerBox[i].style.display = 'none';
				menuItems[i].style.background = 'none';
			}
			menuItems[idx].style.background = 'rgba(0,0,0,0.1)';
			innerBox[idx].style.display = 'block';
		}
	}

	// 离开菜单
	menu.onmouseout = function() {
		subMenu.className = 'sub-menu hide';
	}
	// 进入子菜单
	subMenu.onmouseover = function() {
		this.className = "sub-menu";
	}
	//离开子菜单
	subMenu.onmouseout = function() {
		subMenu.className = 'sub-menu hide';
	}

}

// 切换图片
function changeImg() {
	// 遍历banner下所有的div及dots下的span，将div隐藏，span清除
	for (var i = 0; i < len; i++) {
		pics[i].style.display = "none";
		dots[i].className = "";
	}
	// 不管元素上有没有类，className属性设置的类会完全重写元素上的类
	// pics[index].className = 'slide-active';
	// 根据index索引找到当前div和当前span，将其显示出来和设为当前
	pics[index].style.display = 'block';
	dots[index].className = 'active';
}



slideImg();

