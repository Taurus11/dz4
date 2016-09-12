<?php

$map = Array (
	'category' => Array (
		'id' => 'ID',
		'title' => 'Имя раздела товара',
		'status' => 'Статус'
	),
	'products' => Array (
		'id' => 'ID',
		'id_catalog' => 'Категория',
		'title' => 'Название',
		'mark' => 'Марка',
		'count' => 'Кол-во',
		'price' => 'Цена',
		'description' => 'Описание',
		'status' => 'Статус',
		'img' => 'Картинка'
	),
	'users' => Array (
		'id' => 'ID',
		'name' => 'Имя',
		'lastname' => 'Фамилия',
		'birthday' => 'Дата рождения',
		'email' => 'Электронная почта',
		'password' => 'Пароль',
		'is_active' => 'Состояние',
		'reg_date' => 'Дата регистрации',
		'last_update' => 'Дата обновления',
		'status' => 'Статус'
	),
	'orders' => Array (
		'id' => 'ID',
		'id_user' => 'Заказчик',
		'date_order' => 'Дата заказа',
		'status' => 'Статус'
	),
	'order_items' => Array (
		'id' => 'ID',
		'id_order' => 'Номер заказа',
		'id_product' => 'Товар',
		'price' => 'Цена',
		'count' => 'Кол-во'
	)
);

$mainmenu = Array (
	'Главная' => '/',
	'Категории' => 'category.php',
	'Товары' => 'products.php',
	'Пользователи' => 'users.php',
	'Заказы' => 'orders.php',
	'Состав заказов' => 'order_items.php'
);
