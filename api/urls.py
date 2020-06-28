from api import views
from django.urls import re_path, include, path
from rest_framework.routers import DefaultRouter

from api.views import GetinfoView, MenuroleView, DepttreeView, ConfigkeySysUserInitpasswordView, RoleListView, RoledatascopeView

router = DefaultRouter(trailing_slash=False)

router.register('casbin_rule/?', views.CasbinRuleViewSet)

router.register('sys_columns/?', views.SysColumnsViewSet)

router.register('configList/?', views.SysConfigViewSet)
router.register('config/?', views.SysConfigViewSet)

router.register('deptList/?', views.SysDeptViewSet)
router.register('dept/?', views.SysDeptViewSet)

router.register('dict/databytype/?', views.SysDictDataViewSet)

router.register('dict/typelist/?', views.SysDictTypeViewSet)
router.register('dict/type/?', views.SysDictTypeViewSet)

router.register('loginloglist/?', views.SysLoginlogViewSet)

router.register('menulist/?', views.SysMenuViewSet)
router.register('menu/?', views.SysMenuViewSet)

router.register('operloglist/?', views.SysOperlogViewSet)

router.register('postlist/?', views.SysPostViewSet)
router.register('post/?', views.SysPostViewSet)

router.register('rolelist/?', views.SysRoleViewSet)
router.register('role/?', views.SysRoleViewSet)

router.register('roleDeptTreeselect/?', views.SysRoleDeptViewSet)

router.register('menuTreeselect/?', views.SysRoleMenuViewSet)
router.register('roleMenuTreeselect/?', views.SysRoleMenuViewSet)

router.register('sys/tables/page/?', views.SysTablesViewSet)

router.register('sysUserList/?', views.SysUserViewSet)
router.register('sysUser/?', views.SysUserViewSet)

urlpatterns = [
    re_path('^', include(router.urls)),
    path('getinfo', GetinfoView.as_view()),
    path('menurole', MenuroleView.as_view()),
    path('deptTree', DepttreeView.as_view()),
    path('configKey/sys.user.initPassword', ConfigkeySysUserInitpasswordView.as_view()),
    path('roledatascope', RoledatascopeView.as_view()),
]
