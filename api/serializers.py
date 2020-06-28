from rest_framework import serializers

from drf_go_admin.rename_serializer import RenameRuleSerializer

from api.models import CasbinRule, SysColumns, SysConfig, SysDept, SysDictData, SysDictType, SysLoginlog, SysMenu, SysOperlog, SysPost, SysRole, \
    SysRoleDept, SysRoleMenu, SysTables, SysUser
from utils import str2Hump


class CasbinRuleSerializer(RenameRuleSerializer):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for old_name in list(self.fields.keys()):
            new_name = str2Hump(old_name)
            if new_name != old_name:
                field = self.fields.pop(old_name)
                self.fields[new_name] = field

    class Meta:
        model = CasbinRule
        fields = "__all__"


class SysColumnsSerializer(RenameRuleSerializer):
    class Meta:
        model = SysColumns
        fields = "__all__"


class SysConfigSerializer(RenameRuleSerializer):
    class Meta:
        model = SysConfig
        fields = "__all__"


class SysDeptSerializer(RenameRuleSerializer):
    children = serializers.SerializerMethodField()

    @staticmethod
    def get_children(obj):
        children_serializer = SysDeptSerializer(SysDept.objects.filter(parent_id=obj.dept_id), many=True)
        return children_serializer.data

    class Meta:
        model = SysDept
        fields = "__all__"


class SysDeptSimpleSerializer(RenameRuleSerializer):
    id = serializers.IntegerField(source="dept_id")
    label = serializers.CharField(source="dept_name")
    children = serializers.SerializerMethodField()

    @staticmethod
    def get_children(obj):
        children_serializer = SysDeptSimpleSerializer(SysDept.objects.filter(parent_id=obj.dept_id), many=True)
        return children_serializer.data

    class Meta:
        model = SysDept
        fields = ["id", "label", "children"]


class SysDictDataSerializer(RenameRuleSerializer):
    class Meta:
        model = SysDictData
        fields = "__all__"


class SysDictTypeSerializer(RenameRuleSerializer):
    class Meta:
        model = SysDictType
        fields = "__all__"


class SysLoginlogSerializer(RenameRuleSerializer):
    class Meta:
        model = SysLoginlog
        fields = "__all__"


class SysMenuSerializer(RenameRuleSerializer):
    children = serializers.SerializerMethodField()

    @staticmethod
    def get_children(obj):
        children_serializer = SysMenuSerializer(SysMenu.objects.filter(parent_id=obj.menu_id), many=True)
        return children_serializer.data

    class Meta:
        model = SysMenu
        fields = "__all__"


class SysMenuSimpleSerializer(RenameRuleSerializer):
    id = serializers.IntegerField(source="menu_id")
    label = serializers.CharField(source="title")
    children = serializers.SerializerMethodField()

    @staticmethod
    def get_children(obj):
        children_serializer = SysMenuSimpleSerializer(SysMenu.objects.filter(parent_id=obj.menu_id), many=True)
        return children_serializer.data

    class Meta:
        model = SysMenu
        fields = ["id", "label", "children"]


class SysOperlogSerializer(RenameRuleSerializer):
    class Meta:
        model = SysOperlog
        fields = "__all__"


class SysPostSerializer(RenameRuleSerializer):
    class Meta:
        model = SysPost
        fields = "__all__"


class SysRoleSerializer(RenameRuleSerializer):
    status = serializers.CharField()

    class Meta:
        model = SysRole
        fields = "__all__"


class SysRoleDeptSerializer(RenameRuleSerializer):
    class Meta:
        model = SysRoleDept
        fields = "__all__"


class SysRoleMenuSerializer(RenameRuleSerializer):
    class Meta:
        model = SysRoleMenu
        fields = "__all__"


class SysTablesSerializer(RenameRuleSerializer):
    class Meta:
        model = SysTables
        fields = "__all__"


class SysUserSerializer(RenameRuleSerializer):
    dept_name = serializers.SerializerMethodField()
    status = serializers.CharField()

    @staticmethod
    def get_dept_name(obj):
        return SysDept.objects.get(dept_id=obj.dept_id).dept_name

    class Meta:
        model = SysUser
        fields = "__all__"
