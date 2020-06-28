from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.views import APIView

from api.filters import SysConfigFilter, SysLoginlogFilter, SysDictTypeFilter, SysOperlogFilter, SysPostFilter, SysDeptFilter, SysMenuFilter, \
    SysRoleFilter, SysUserFilter
from api.models import CasbinRule, SysColumns, SysConfig, SysDept, SysDictData, SysDictType, SysLoginlog, SysMenu, SysOperlog, SysPost, SysRole, \
    SysRoleDept, SysRoleMenu, SysTables, SysUser
from api.serializers import CasbinRuleSerializer, SysColumnsSerializer, SysConfigSerializer, SysDeptSerializer, SysDictDataSerializer, \
    SysDictTypeSerializer, SysLoginlogSerializer, SysMenuSerializer, SysOperlogSerializer, SysPostSerializer, SysRoleSerializer, \
    SysRoleDeptSerializer, SysRoleMenuSerializer, SysTablesSerializer, SysUserSerializer, SysMenuSimpleSerializer, SysDeptSimpleSerializer
from drf_go_admin.custom_viewset import CustomViewSet
from drf_go_admin.pagination import TreePagination, CustomPageNumberPagination
from utils import get_lower_case_name, change_key


class CasbinRuleViewSet(viewsets.ModelViewSet):
    serializer_class = CasbinRuleSerializer
    queryset = CasbinRule.objects.all()


class SysColumnsViewSet(viewsets.ModelViewSet):
    serializer_class = SysColumnsSerializer
    queryset = SysColumns.objects.all()


class SysConfigViewSet(viewsets.ModelViewSet):
    serializer_class = SysConfigSerializer
    queryset = SysConfig.objects.all()
    filter_class = SysConfigFilter

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        return Response({
            "code": 200,
            "data": serializer.data
        })

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response({'code': 200}, status=status.HTTP_201_CREATED, headers=headers)

    def put(self, request):
        serializer = self.get_serializer(instance=self.serializer_class.Meta.model(config_id=request.data["configId"]), data=request.data,
                                         partial=True)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({'code': 200, 'msg': '修改成功'})

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response({'code': 200}, status=status.HTTP_200_OK)


class ConfigkeySysUserInitpasswordView(APIView):
    def get(self, request):
        return Response({'code': 200,
                         'data': {'configId': 2, 'configName': '用户管理-账号初始密码', 'configKey': 'sys.user.initPassword', 'configValue': '123456',
                                  'configType': 'Y', 'remark': '初始化密码 123456', 'createBy': '1', 'updateBy': '1', 'dataScope': '', 'params': '',
                                  'createdAt': '2020-02-29T10:38:23+08:00', 'updatedAt': '2020-03-11T00:35:28+08:00', 'deletedAt': None},
                         'msg': '123456'})


# class SysUserListView(APIView):
#     def get(self, request):
#         queryset = SysUser.objects.all()
#         pagetor = CustomPageNumberPagination()
#         page = pagetor.paginate_queryset(queryset, request)
#         if page is not None:
#             serializer = SysUserSerializer(page, many=True)
#             return pagetor.get_paginated_response(serializer.data)
#         else:
#             return Response(SysUserSerializer(queryset).data)


class RoleListView(APIView):
    def get(self, request):
        queryset = SysRole.objects.all()
        pagetor = CustomPageNumberPagination()
        page = pagetor.paginate_queryset(queryset, request)
        if page is not None:
            serializer = SysRoleSerializer(page, many=True)
            return pagetor.get_paginated_response(serializer.data)
        else:
            return Response(SysRoleSerializer(queryset).data)


class SysDeptViewSet(CustomViewSet):
    serializer_class = SysDeptSerializer
    queryset = SysDept.objects.all()
    pagination_class = TreePagination
    filter_class = SysDeptFilter

    def get_queryset(self):
        if self.action == "list" and "deptName" not in self.request.query_params.keys():
            queryset = SysDept.objects.filter(parent_id=0)
        elif self.action == "retrieve":
            queryset = SysDept.objects.all()
        else:
            queryset = SysDept.objects.all()
        return queryset

    def put(self, request, *args, **kwargs):
        change_key(request)
        del request.data["children"]
        self.serializer_class.Meta.model(**request.data).save()
        return Response({'code': 200, 'msg': '修改成功'})


class SysDictDataViewSet(viewsets.ModelViewSet):
    serializer_class = SysDictDataSerializer
    queryset = SysDictData.objects.all()

    # lookup_field = 'dict_type'

    def retrieve(self, request, *args, **kwargs):
        dict_type = kwargs["pk"]
        query_dict = SysDictData.objects.filter(dict_type=dict_type)
        return Response({
            "code": 200,
            "data": SysDictDataSerializer(query_dict, many=True).data
        })

    # @action(methods=['get'], detail=False, url_path="sys_normal_disable/?")
    # def sys_normal_disable(self, request, pk=None):
    #     return Response({'code': 200, 'data': []


class SysDictTypeViewSet(CustomViewSet):
    serializer_class = SysDictTypeSerializer
    queryset = SysDictType.objects.all()
    filter_class = SysDictTypeFilter

    # def create(self, request, *args, **kwargs):
    #     serializer = self.get_serializer(data=request.data)
    #     serializer.is_valid(raise_exception=True)
    #     self.perform_create(serializer)
    #     headers = self.get_success_headers(serializer.data)
    #     return Response({'code': 200}, status=status.HTTP_201_CREATED, headers=headers)

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        res = serializer.data
        res["status"] = str(res["status"])
        return Response({
            "code": 200,
            "data": res
        })

    # def put(self, request, *args, **kwargs):
    #     change_key(request)
    #     SysDictType(**request.data).save()
    #     return Response({'code': 200, 'msg': '修改成功'})
    #
    # def destroy(self, request, *args, **kwargs):
    #     instance = self.get_object()
    #     self.perform_destroy(instance)
    #     return Response({'code': 200}, status=status.HTTP_200_OK)


class SysLoginlogViewSet(viewsets.ModelViewSet):
    serializer_class = SysLoginlogSerializer
    queryset = SysLoginlog.objects.all()
    filter_class = SysLoginlogFilter


class SysMenuViewSet(CustomViewSet):
    pagination_class = TreePagination
    serializer_class = SysMenuSerializer
    queryset = SysMenu.objects.all()
    filter_class = SysMenuFilter

    def get_queryset(self):
        if self.action == "list" and "title" not in self.request.query_params:
            queryset = SysMenu.objects.filter(parent_id=0)
        elif self.action == "retrieve":
            queryset = SysMenu.objects.all()
        else:
            queryset = SysMenu.objects.all()
        return queryset

    def put(self, request, *args, **kwargs):
        change_key(request)
        del request.data["children"]
        self.serializer_class.Meta.model(**request.data).save()
        return Response({'code': 200, 'msg': '修改成功'})


class SysOperlogViewSet(viewsets.ModelViewSet):
    serializer_class = SysOperlogSerializer
    queryset = SysOperlog.objects.all()
    filter_class = SysOperlogFilter


class SysPostViewSet(CustomViewSet):
    serializer_class = SysPostSerializer
    queryset = SysPost.objects.all()
    filter_class = SysPostFilter

    def retrieve(self, request, *args, **kwargs):
        post_id = kwargs["pk"]
        post = SysPost.objects.get(post_id=post_id)
        res = SysPostSerializer(post).data
        res["status"] = str(res["status"])
        return Response({
            "code": 200,
            "data": res
        })

    def destroy(self, request, *args, **kwargs):
        ids = kwargs["pk"].split(",")
        SysPost.objects.filter(post_id__in=ids).delete()
        return Response({
            "code": 200
        })


class SysRoleViewSet(CustomViewSet):
    serializer_class = SysRoleSerializer
    queryset = SysRole.objects.all()
    filter_class = SysRoleFilter

    def retrieve(self, request, *args, **kwargs):
        role_id = kwargs["pk"]
        role = SysRole.objects.get(role_id=role_id)
        res = SysRoleSerializer(role).data
        res["menuIds"] = SysMenu.objects.all().values_list("menu_id", flat=True)
        res["admin"] = True if role.admin == "1" else False
        res["status"] = str(res["status"])
        res["dataScope"] = 3
        return Response({
            "code": 200,
            "data": res
        })


class SysRoleDeptViewSet(viewsets.ModelViewSet):
    serializer_class = SysRoleDeptSerializer
    queryset = SysRoleDept.objects.all()

    def retrieve(self, request, *args, **kwargs):
        role_id = kwargs["pk"]
        query_result = SysRoleDept.objects.filter(role_id=role_id)

        return Response({
            "checkedKeys": query_result.values_list("dept_id", flat=True),
            "code": 200,
            "depts": SysDeptSimpleSerializer(SysDept.objects.filter(parent_id=0), many=True).data
        })


class SysRoleMenuViewSet(viewsets.ModelViewSet):
    serializer_class = SysRoleMenuSerializer
    queryset = SysRoleMenu.objects.all()

    def retrieve(self, request, *args, **kwargs):
        role_id = kwargs["pk"]
        query_result = SysRoleMenu.objects.filter(role_id=role_id)

        return Response({
            "checkedKeys": query_result.values_list("menu_id", flat=True),
            "code": 200,
            "menus": SysMenuSimpleSerializer(SysMenu.objects.filter(parent_id=0), many=True).data
        })

    def list(self, request, *args, **kwargs):
        queryset = SysMenu.objects.filter(parent_id=0)
        serializer = SysMenuSimpleSerializer(queryset, many=True)
        return Response({
            "code": 200,
            "data": serializer.data
        })


class SysTablesViewSet(viewsets.ModelViewSet):
    serializer_class = SysTablesSerializer
    queryset = SysTables.objects.all()


class SysUserViewSet(CustomViewSet):
    serializer_class = SysUserSerializer
    queryset = SysUser.objects.all()
    filter_class = SysUserFilter

    def retrieve(self, request, *args, **kwargs):
        pk = kwargs["pk"]
        user = SysUser.objects.get(user_id=pk)
        data = SysUserSerializer(user).data
        postIds = [user.post_id]
        roleIds = [user.role_id]
        return Response({
            "code": 200,
            "data": data,
            "postIds": postIds,
            "roleIds": roleIds,
            "posts": SysPostSerializer(SysPost.objects.all(), many=True).data,
            "roles": SysRoleSerializer(SysRole.objects.all(), many=True).data,
        })

    def list(self, request, *args, **kwargs):
        print(request.path_info)
        if "sysUserList" not in request.path_info:
            return Response({'code': 200, "data": {
                "posts": SysPostSerializer(SysPost.objects.all(), many=True).data,
                "roles": SysRoleSerializer(SysRole.objects.all(), many=True).data,
            }, "msg": ""})
        else:
            # sysUserList
            return super(SysUserViewSet, self).list(request, *args, **kwargs)

    def put(self, request, *args, **kwargs):
        change_key(request)
        if "post_ids" in request.data.keys():
            request.data["post_id"] = request.data.pop("post_ids")
        if "role_ids" in request.data.keys():
            request.data["role_id"] = request.data.pop("role_ids")
        update_fields = [one for one in request.data.keys() if one != self.serializer_class.Meta.model._meta.pk.name]
        self.serializer_class.Meta.model(**request.data).save(update_fields=update_fields)
        return Response({'code': 200, 'msg': '修改成功'})


class LoginView(APIView):
    def post(self, request):
        return Response({
            "code": 200,
            "expire": "2020-06-28T01:07:23+08:00",
            "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhc2NvcGUiOiIiLCJleHAiOjE1OTMyNzc2NDMsImlkZW50aXR5IjoxLCJuaWNlIjoiYWRtaW4iLCJvcmlnX2lhdCI6MTU5MzI3NDA0Mywicm9sZWlkIjoxLCJyb2xla2V5IjoiYWRtaW4iLCJyb2xlbmFtZSI6Iuezu-e7n-euoeeQhuWRmCJ9._8gIv32Z6fz1dhlltTvC_bxLtKnbKDlNj6h8bXtPAhk"
        })


class ApiV1GetcaptchaView(APIView):
    def get(self, request):
        return Response({'code': 200,
                         'data': 'data:image/png;base64,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',
                         'id': 'Ce2N3arXxeE0oqYGZUeX', 'msg': 'success'})


class MenuroleView(APIView):
    def get(self, request):
        return Response({'code': 200, 'data': [
            {'menuId': 2, 'menuName': 'Upms', 'title': '系统管理', 'icon': 'example', 'path': '/upms', 'paths': '/0/2', 'menuType': 'M', 'action': '无',
             'permission': '', 'parentId': 0, 'noCache': True, 'breadcrumb': '', 'component': 'Layout', 'sort': 1, 'visible': '0', 'createBy': '1',
             'updateBy': '1', 'isFrame': '0', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                {'menuId': 3, 'menuName': 'Sysuser', 'title': '用户管理', 'icon': 'user', 'path': 'sysuser', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysuser:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/sysuser/index', 'sort': 1,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 52, 'menuName': 'Role', 'title': '角色管理', 'icon': 'peoples', 'path': 'role', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysrole:list', 'parentId': 2, 'noCache': True, 'breadcrumb': '', 'component': '/role/index', 'sort': 2,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 51, 'menuName': 'Menu', 'title': '菜单管理', 'icon': 'tree-table', 'path': 'menu', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysmenu:list', 'parentId': 2, 'noCache': True, 'breadcrumb': '', 'component': '/menu/index', 'sort': 3,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 56, 'menuName': 'Dept', 'title': '部门管理', 'icon': 'tree', 'path': 'dept', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysdept:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/dept/index', 'sort': 4,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 57, 'menuName': 'post', 'title': '岗位管理', 'icon': 'pass', 'path': 'post', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:syspost:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/post/index', 'sort': 5,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 58, 'menuName': 'Dict', 'title': '字典管理', 'icon': 'education', 'path': 'dict', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysdicttype:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/dict/index', 'sort': 6,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 62, 'menuName': 'Config', 'title': '参数设置', 'icon': 'list', 'path': '/config', 'paths': '', 'menuType': 'C', 'action': '无',
                 'permission': 'system:sysconfig:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/config/index', 'sort': 7,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 211, 'menuName': 'Log', 'title': '日志管理', 'icon': 'log', 'path': '/log', 'paths': '', 'menuType': 'M', 'action': '',
                 'permission': '', 'parentId': 2, 'noCache': False, 'breadcrumb': '', 'component': '/log/index', 'sort': 8, 'visible': '0',
                 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                    {'menuId': 212, 'menuName': 'LoginLog', 'title': '登录日志', 'icon': 'logininfor', 'path': '/loginlog', 'paths': '', 'menuType': 'C',
                     'action': '', 'permission': 'system:sysloginlog:list', 'parentId': 211, 'noCache': False, 'breadcrumb': '',
                     'component': '/loginlog/index', 'sort': 1, 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '',
                     'params': '', 'RoleId': 0, 'children': [], 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z',
                     'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                    {'menuId': 216, 'menuName': 'OperLog', 'title': '操作日志', 'icon': 'skill', 'path': '/operlog', 'paths': '', 'menuType': 'C',
                     'action': '', 'permission': 'system:sysoperlog:list', 'parentId': 211, 'noCache': False, 'breadcrumb': '',
                     'component': '/operlog/index', 'sort': 1, 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '',
                     'params': '', 'RoleId': 0, 'children': [], 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z',
                     'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}], 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z',
                 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 59, 'menuName': 'DictData', 'title': '字典数据', 'icon': 'education', 'path': 'dict/data/:dictId', 'paths': '',
                 'menuType': 'C', 'action': '无', 'permission': 'system:sysdictdata:list', 'parentId': 2, 'noCache': False, 'breadcrumb': '',
                 'component': '/dict/data', 'sort': 100, 'visible': '1', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '',
                 'RoleId': 0, 'children': [], 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z',
                 'deletedAt': None}], 'is_select': False, 'createdAt': '2020-04-11T15:52:48+08:00', 'updatedAt': '0001-01-01T00:00:00Z',
             'deletedAt': None},
            {'menuId': 60, 'menuName': 'Tools', 'title': '系统工具', 'icon': 'component', 'path': '/tools', 'paths': '/0/60', 'menuType': 'M',
             'action': '无', 'permission': '', 'parentId': 0, 'noCache': False, 'breadcrumb': '', 'component': 'Layout', 'sort': 3, 'visible': '0',
             'createBy': '1', 'updateBy': '1', 'isFrame': '0', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                {'menuId': 264, 'menuName': 'Build', 'title': '表单构建', 'icon': 'build', 'path': 'build', 'paths': '', 'menuType': 'C', 'action': '',
                 'permission': '', 'parentId': 60, 'noCache': False, 'breadcrumb': '', 'component': '/tools/build/index', 'sort': 1, 'visible': '0',
                 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 61, 'menuName': 'Swagger', 'title': '系统接口', 'icon': 'guide', 'path': 'swagger', 'paths': '', 'menuType': 'C',
                 'action': '无', 'permission': '', 'parentId': 60, 'noCache': False, 'breadcrumb': '', 'component': '/tools/swagger/index', 'sort': 1,
                 'visible': '0', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 261, 'menuName': 'Gen', 'title': '代码生成', 'icon': 'code', 'path': 'gen', 'paths': '', 'menuType': 'C', 'action': '',
                 'permission': '', 'parentId': 60, 'noCache': False, 'breadcrumb': '', 'component': '/tools/gen/index', 'sort': 2, 'visible': '0',
                 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 262, 'menuName': 'EditTable', 'title': '代码生成修改', 'icon': 'build', 'path': 'editTable', 'paths': '', 'menuType': 'C',
                 'action': '', 'permission': '', 'parentId': 60, 'noCache': False, 'breadcrumb': '', 'component': '/tools/gen/editTable', 'sort': 100,
                 'visible': '1', 'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [],
                 'is_select': False, 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}],
             'is_select': False, 'createdAt': '2020-04-11T15:52:48+08:00', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
            {'menuId': 63, 'menuName': '', 'title': '接口权限', 'icon': 'bug', 'path': '', 'paths': '/0/63', 'menuType': 'M', 'action': '',
             'permission': '', 'parentId': 0, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 99, 'visible': '1', 'createBy': '1',
             'updateBy': '1', 'isFrame': '0', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                {'menuId': 256, 'menuName': '', 'title': '必开接口', 'icon': '', 'path': '', 'paths': '', 'menuType': 'M', 'action': 'GET',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 0, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                    {'menuId': 267, 'menuName': '', 'title': '个人中心', 'icon': '', 'path': '', 'paths': '', 'menuType': 'M', 'action': '',
                     'permission': '', 'parentId': 256, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 0, 'visible': '1',
                     'createBy': '', 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                     'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 64, 'menuName': '', 'title': '用户管理', 'icon': 'user', 'path': '', 'paths': '', 'menuType': 'M', 'action': '',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 205, 'menuName': '', 'title': '角色菜单管理', 'icon': 'nested', 'path': '', 'paths': '', 'menuType': 'C', 'action': '',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 66, 'menuName': '', 'title': '菜单管理', 'icon': 'tree-table', 'path': '', 'paths': '', 'menuType': 'C', 'action': '',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 69, 'menuName': '', 'title': '字典', 'icon': 'dict', 'path': '', 'paths': '', 'menuType': 'M', 'action': '',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [
                    {'menuId': 70, 'menuName': '', 'title': '类型', 'icon': 'dict', 'path': '', 'paths': '', 'menuType': 'C', 'action': '',
                     'permission': '', 'parentId': 69, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                     'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                     'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                    {'menuId': 206, 'menuName': '', 'title': '数据', 'icon': '', 'path': '', 'paths': '', 'menuType': 'C', 'action': 'PUT',
                     'permission': '', 'parentId': 69, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 2, 'visible': '1', 'createBy': '',
                     'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                     'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 201, 'menuName': '', 'title': '角色管理', 'icon': 'peoples', 'path': '', 'paths': '', 'menuType': 'C', 'action': 'GET',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 214, 'menuName': '', 'title': '日志管理', 'icon': 'log', 'path': '', 'paths': '', 'menuType': 'M', 'action': 'GET',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 202, 'menuName': '', 'title': '参数设置', 'icon': 'list', 'path': '', 'paths': '', 'menuType': 'C', 'action': 'DELETE',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 203, 'menuName': '', 'title': '部门管理', 'icon': 'tree', 'path': '', 'paths': '', 'menuType': 'C', 'action': 'POST',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'menuId': 204, 'menuName': '', 'title': '岗位管理', 'icon': 'pass', 'path': '', 'paths': '', 'menuType': 'C', 'action': '',
                 'permission': '', 'parentId': 63, 'noCache': False, 'breadcrumb': '', 'component': '', 'sort': 1, 'visible': '1', 'createBy': '',
                 'updateBy': '', 'isFrame': '', 'dataScope': '', 'params': '', 'RoleId': 0, 'children': [], 'is_select': False,
                 'createdAt': '0001-01-01T00:00:00Z', 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}], 'is_select': False,
             'createdAt': '2020-04-11T15:52:48+08:00', 'updatedAt': '2020-04-12T16:39:32+08:00', 'deletedAt': None}], 'msg': ''})


class DepttreeView(APIView):
    def get(self, request):
        return Response({'code': 200, 'data': [
            {'deptId': 1, 'parentId': 0, 'deptPath': '/0/1', 'deptName': '爱拓科技', 'sort': 0, 'leader': 'aituo', 'phone': '13782218188',
             'email': 'atuo@aituo.com', 'status': '0', 'createBy': '1', 'updateBy': '1', 'dataScope': '', 'params': '', 'children': [
                {'deptId': 8, 'parentId': 1, 'deptPath': '/0/1/8', 'deptName': '运维部', 'sort': 0, 'leader': '', 'phone': '', 'email': '',
                 'status': '0', 'createBy': '', 'updateBy': '', 'dataScope': '', 'params': '', 'children': [], 'createdAt': '0001-01-01T00:00:00Z',
                 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'deptId': 9, 'parentId': 1, 'deptPath': '/0/1/9', 'deptName': '客服部', 'sort': 0, 'leader': '', 'phone': '', 'email': '',
                 'status': '0', 'createBy': '', 'updateBy': '', 'dataScope': '', 'params': '', 'children': [], 'createdAt': '0001-01-01T00:00:00Z',
                 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'deptId': 7, 'parentId': 1, 'deptPath': '/0/1/7', 'deptName': '研发部', 'sort': 1, 'leader': '', 'phone': '', 'email': '',
                 'status': '0', 'createBy': '', 'updateBy': '', 'dataScope': '', 'params': '', 'children': [], 'createdAt': '0001-01-01T00:00:00Z',
                 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None},
                {'deptId': 10, 'parentId': 1, 'deptPath': '/0/1/10', 'deptName': '人力资源', 'sort': 3, 'leader': '张三', 'phone': '', 'email': '',
                 'status': '1', 'createBy': '', 'updateBy': '', 'dataScope': '', 'params': '', 'children': [], 'createdAt': '0001-01-01T00:00:00Z',
                 'updatedAt': '0001-01-01T00:00:00Z', 'deletedAt': None}], 'createdAt': '2020-02-27T15:30:19+08:00',
             'updatedAt': '2020-03-10T21:09:21+08:00', 'deletedAt': None}], 'msg': ''})


class GetinfoView(APIView):
    def get(self, request):
        return Response({'code': 200,
                         'data': {'avatar': 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 'buttons': ['*:*:*'], 'deptId': 1,
                                  'introduction': ' am a super administrator', 'name': 'zhangwj', 'permissions': ['*:*:*'], 'roles': ['admin'],
                                  'userId': 1, 'userName': 'zhangwj'}, 'msg': ''})


class RoledatascopeView(APIView):
    def put(self, request):
        status = request.data["status"]
        flag = request.data["flag"]
        remark = request.data["remark"]
        admin = request.data["admin"]
        roleId = request.data["roleId"]
        roleName = request.data["roleName"]
        roleKey = request.data["roleKey"]
        roleSort = request.data["roleSort"]
        createBy = request.data["createBy"]
        updateBy = request.data["updateBy"]
        dataScope = request.data["dataScope"]
        createdAt = request.data["createdAt"]
        updatedAt = request.data["updatedAt"]
        deletedAt = request.data["deletedAt"]
        menuIds = request.data["menuIds"]
        deptIds = request.data["deptIds"]

        return Response({"code": 200, "msg": "谢谢您的参与，但为了大家更好的体验，所以本次提交就算了吧！😀😀😀"})
