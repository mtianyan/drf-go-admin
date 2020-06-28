from django_filters import rest_framework as filters

from api.models import SysConfig, SysLoginlog, SysDictData, SysDictType, SysOperlog, SysPost, SysDept, SysMenu, SysRole, SysUser


class SysConfigFilter(filters.FilterSet):
    configName = filters.CharFilter(field_name="config_name", lookup_expr='icontains')
    configKey = filters.CharFilter(field_name="config_key", lookup_expr='icontains')
    configType = filters.CharFilter(field_name="config_type")

    class Meta:
        model = SysConfig
        fields = ["configName", "configKey", "configType"]


class SysLoginlogFilter(filters.FilterSet):
    userName = filters.CharFilter(field_name="username", lookup_expr='icontains')
    ipaddr = filters.CharFilter(field_name="ipaddr", lookup_expr='icontains')

    class Meta:
        model = SysLoginlog
        fields = ['ipaddr', 'userName', 'status']


class SysDictTypeFilter(filters.FilterSet):
    dictName = filters.CharFilter(field_name="dict_name", lookup_expr='icontains')
    dictType = filters.CharFilter(field_name="dict_type", lookup_expr='icontains')

    class Meta:
        model = SysDictType
        fields = ['dictName', 'dictType', 'status']


class SysOperlogFilter(filters.FilterSet):
    title = filters.CharFilter(field_name="title", lookup_expr='icontains')
    operName = filters.CharFilter(field_name="oper_name", lookup_expr='icontains')
    businessType = filters.CharFilter(field_name="business_type")
    status = filters.CharFilter(field_name="status")

    class Meta:
        model = SysOperlog
        fields = ['title', 'operName', 'businessType', 'status']


class SysPostFilter(filters.FilterSet):
    postCode = filters.CharFilter(field_name="post_code", lookup_expr='icontains')
    postName = filters.CharFilter(field_name="post_name", lookup_expr='icontains')

    class Meta:
        model = SysPost
        fields = ['postCode', 'postName', 'status']


class SysDeptFilter(filters.FilterSet):
    deptName = filters.CharFilter(field_name="dept_name", lookup_expr='icontains')

    class Meta:
        model = SysDept
        fields = ['deptName', 'status']


class SysMenuFilter(filters.FilterSet):
    title = filters.CharFilter(field_name="title", lookup_expr='icontains')

    class Meta:
        model = SysMenu
        fields = ['title', 'visible']


class SysRoleFilter(filters.FilterSet):
    roleName = filters.CharFilter(field_name="role_name", lookup_expr='icontains')
    roleKey = filters.CharFilter(field_name="role_key", lookup_expr='icontains')

    class Meta:
        model = SysRole
        fields = ['roleName', 'roleKey', 'status']


class SysUserFilter(filters.FilterSet):
    username = filters.CharFilter(field_name="username", lookup_expr='icontains')
    phone = filters.CharFilter(field_name="phone", lookup_expr='icontains')
    deptId = filters.CharFilter(method="choose_dept_children")

    def choose_dept_children(self, queryset, name, value):
        dept_id_list = SysDept.objects.filter(dept_path__contains=value).values_list("dept_id", flat=True)
        print(dept_id_list)
        return queryset.filter(dept_id__in=dept_id_list)

    class Meta:
        model = SysUser
        fields = ['username', 'phone', 'status']
