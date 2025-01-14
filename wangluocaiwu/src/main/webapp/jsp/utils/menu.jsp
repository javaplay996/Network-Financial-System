<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"员工管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"员工管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"薪资管理",
                        "menuJump":"列表",
                        "tableName":"xinzi"
                    }
                ],
                "menu":"薪资管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"报销管理",
                        "menuJump":"列表",
                        "tableName":"baoxiao"
                    }
                ],
                "menu":"报销管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "报表"
                        ],
                        "menu":"收支管理",
                        "menuJump":"列表",
                        "tableName":"shouzhi"
                    }
                ],
                "menu":"收支管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"新闻公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"报销类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryBaoxiao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"收支类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryShouzhiLeixing"
                    }

                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"薪资管理",
                        "menuJump":"列表",
                        "tableName":"xinzi"
                    }
                ],
                "menu":"薪资管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增"
                        ],
                        "menu":"报销管理",
                        "menuJump":"列表",
                        "tableName":"baoxiao"
                    }
                ],
                "menu":"报销管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"新闻公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"新闻公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"员工",
        "tableName":"yonghu"
    }
];

var hasMessage = '';
