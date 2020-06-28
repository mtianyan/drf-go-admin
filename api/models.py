# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class CasbinRule(models.Model):
    p_type = models.CharField(max_length=100, blank=True, null=True)
    v0 = models.CharField(max_length=100, blank=True, null=True)
    v1 = models.CharField(max_length=100, blank=True, null=True)
    v2 = models.CharField(max_length=100, blank=True, null=True)
    v3 = models.CharField(max_length=100, blank=True, null=True)
    v4 = models.CharField(max_length=100, blank=True, null=True)
    v5 = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'casbin_rule'
        ordering = ['pk']


class SysColumns(models.Model):
    column_id = models.AutoField(primary_key=True)
    table_id = models.IntegerField(blank=True, null=True)
    column_name = models.CharField(max_length=128, blank=True, null=True)
    column_comment = models.CharField(max_length=128, blank=True, null=True)
    column_type = models.CharField(max_length=128, blank=True, null=True)
    go_type = models.CharField(max_length=128, blank=True, null=True)
    go_field = models.CharField(max_length=128, blank=True, null=True)
    json_field = models.CharField(max_length=128, blank=True, null=True)
    is_pk = models.CharField(max_length=4, blank=True, null=True)
    is_increment = models.CharField(max_length=4, blank=True, null=True)
    is_required = models.CharField(max_length=4, blank=True, null=True)
    is_insert = models.CharField(max_length=4, blank=True, null=True)
    is_edit = models.CharField(max_length=4, blank=True, null=True)
    is_list = models.CharField(max_length=4, blank=True, null=True)
    is_query = models.CharField(max_length=4, blank=True, null=True)
    query_type = models.CharField(max_length=128, blank=True, null=True)
    html_type = models.CharField(max_length=128, blank=True, null=True)
    dict_type = models.CharField(max_length=128, blank=True, null=True)
    sort = models.IntegerField(blank=True, null=True)
    list = models.CharField(max_length=1, blank=True, null=True)
    m_pk = models.CharField(max_length=1, blank=True, null=True, db_column="pk")
    required = models.CharField(max_length=1, blank=True, null=True)
    super_column = models.CharField(max_length=1, blank=True, null=True)
    usable_column = models.CharField(max_length=1, blank=True, null=True)
    increment = models.CharField(max_length=1, blank=True, null=True)
    insert = models.CharField(max_length=1, blank=True, null=True)
    edit = models.CharField(max_length=1, blank=True, null=True)
    query = models.CharField(max_length=1, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(db_column='update_By', max_length=128, blank=True, null=True)  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_columns'
        ordering = ['pk']


class SysConfig(models.Model):
    config_id = models.AutoField(primary_key=True)
    config_name = models.CharField(max_length=128, blank=True, null=True)
    config_key = models.CharField(max_length=128, blank=True, null=True)
    config_value = models.CharField(max_length=255, blank=True, null=True)
    config_type = models.CharField(max_length=64, blank=True, null=True)
    remark = models.CharField(max_length=128, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_config'
        ordering = ['config_id']


class SysDept(models.Model):
    dept_id = models.AutoField(primary_key=True)
    parent_id = models.IntegerField(blank=True, null=True)
    dept_path = models.CharField(max_length=255, blank=True, null=True)
    dept_name = models.CharField(max_length=128, blank=True, null=True)
    sort = models.IntegerField(blank=True, null=True)
    leader = models.CharField(max_length=128, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, null=True)
    email = models.CharField(max_length=64, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    create_by = models.CharField(max_length=64, blank=True, null=True)
    update_by = models.CharField(max_length=64, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_dept'
        ordering = ['pk']


class SysDictData(models.Model):
    dict_code = models.AutoField(primary_key=True)
    dict_sort = models.IntegerField(blank=True, null=True)
    dict_label = models.CharField(max_length=128, blank=True, null=True)
    dict_value = models.CharField(max_length=255, blank=True, null=True)
    dict_type = models.CharField(max_length=64, blank=True, null=True)
    css_class = models.CharField(max_length=128, blank=True, null=True)
    list_class = models.CharField(max_length=128, blank=True, null=True)
    is_default = models.CharField(max_length=8, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    default = models.CharField(max_length=8, blank=True, null=True)
    create_by = models.CharField(max_length=64, blank=True, null=True)
    update_by = models.CharField(max_length=64, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_dict_data'
        ordering = ['pk']


class SysDictType(models.Model):
    dict_id = models.AutoField(primary_key=True)
    dict_name = models.CharField(max_length=128, blank=True, null=True)
    dict_type = models.CharField(max_length=128, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    create_by = models.CharField(max_length=11, blank=True, null=True)
    update_by = models.CharField(max_length=11, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_dict_type'
        ordering = ['pk']


class SysLoginlog(models.Model):
    info_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=128, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    ipaddr = models.CharField(max_length=255, blank=True, null=True)
    login_location = models.CharField(max_length=255, blank=True, null=True)
    browser = models.CharField(max_length=255, blank=True, null=True)
    os = models.CharField(max_length=255, blank=True, null=True)
    platform = models.CharField(max_length=255, blank=True, null=True)
    login_time = models.DateTimeField(blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    msg = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_loginlog'
        ordering = ['pk']


class SysMenu(models.Model):
    menu_id = models.AutoField(primary_key=True)
    menu_name = models.CharField(max_length=128, blank=True, null=True)
    title = models.CharField(max_length=64, blank=True, null=True)
    icon = models.CharField(max_length=128, blank=True, null=True)
    path = models.CharField(max_length=128, blank=True, null=True)
    paths = models.CharField(max_length=128, blank=True, null=True)
    menu_type = models.CharField(max_length=1, blank=True, null=True)
    action = models.CharField(max_length=16, blank=True, null=True)
    permission = models.CharField(max_length=32, blank=True, null=True)
    parent_id = models.IntegerField(blank=True, null=True)
    no_cache = models.CharField(max_length=1, blank=True, null=True)
    breadcrumb = models.CharField(max_length=255, blank=True, null=True)
    component = models.CharField(max_length=255, blank=True, null=True)
    sort = models.IntegerField(blank=True, null=True)
    visible = models.CharField(max_length=1, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    is_frame = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_menu'


class SysOperlog(models.Model):
    oper_id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    business_type = models.CharField(max_length=128, blank=True, null=True)
    business_types = models.CharField(max_length=128, blank=True, null=True)
    method = models.CharField(max_length=128, blank=True, null=True)
    request_method = models.CharField(max_length=128, blank=True, null=True)
    operator_type = models.CharField(max_length=128, blank=True, null=True)
    oper_name = models.CharField(max_length=128, blank=True, null=True)
    dept_name = models.CharField(max_length=128, blank=True, null=True)
    oper_url = models.CharField(max_length=255, blank=True, null=True)
    oper_ip = models.CharField(max_length=128, blank=True, null=True)
    oper_location = models.CharField(max_length=128, blank=True, null=True)
    oper_param = models.CharField(max_length=255, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    oper_time = models.DateTimeField(blank=True, null=True)
    json_result = models.CharField(max_length=255, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    latency_time = models.CharField(max_length=128, blank=True, null=True)
    user_agent = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_operlog'


class SysPost(models.Model):
    post_id = models.AutoField(primary_key=True)
    post_name = models.CharField(max_length=128, blank=True, null=True)
    post_code = models.CharField(max_length=128, blank=True, null=True)
    sort = models.IntegerField(blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_post'
        ordering = ['pk']


class SysRole(models.Model):
    role_id = models.AutoField(primary_key=True)
    role_name = models.CharField(max_length=128, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    role_key = models.CharField(max_length=128, blank=True, null=True)
    role_sort = models.IntegerField(blank=True, null=True)
    flag = models.CharField(max_length=128, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    admin = models.CharField(max_length=1, blank=True, null=True)
    data_scope = models.CharField(max_length=128, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_role'
        ordering = ['pk']


class SysRoleDept(models.Model):
    role_id = models.IntegerField(blank=True, null=True)
    dept_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_role_dept'


class SysRoleMenu(models.Model):
    role_id = models.IntegerField(blank=True, null=True)
    menu_id = models.IntegerField(blank=True, null=True)
    role_name = models.CharField(max_length=128, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_role_menu'


class SysTables(models.Model):
    table_id = models.AutoField(primary_key=True)
    table_name = models.CharField(max_length=255, blank=True, null=True)
    table_comment = models.CharField(max_length=255, blank=True, null=True)
    class_name = models.CharField(max_length=255, blank=True, null=True)
    tpl_category = models.CharField(max_length=255, blank=True, null=True)
    package_name = models.CharField(max_length=255, blank=True, null=True)
    module_name = models.CharField(max_length=255, blank=True, null=True)
    business_name = models.CharField(max_length=255, blank=True, null=True)
    function_name = models.CharField(max_length=255, blank=True, null=True)
    function_author = models.CharField(max_length=255, blank=True, null=True)
    pk_column = models.CharField(max_length=255, blank=True, null=True)
    pk_go_field = models.CharField(max_length=255, blank=True, null=True)
    pk_json_field = models.CharField(max_length=255, blank=True, null=True)
    options = models.CharField(max_length=255, blank=True, null=True)
    tree_code = models.CharField(max_length=255, blank=True, null=True)
    tree_parent_code = models.CharField(max_length=255, blank=True, null=True)
    tree_name = models.CharField(max_length=255, blank=True, null=True)
    tree = models.CharField(max_length=1, blank=True, null=True)
    crud = models.CharField(max_length=1, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    is_logical_delete = models.CharField(max_length=1, blank=True, null=True)
    logical_delete = models.CharField(max_length=1, blank=True, null=True)
    logical_delete_column = models.CharField(max_length=128, blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_tables'
        ordering = ['pk']


class SysUser(models.Model):
    user_id = models.AutoField(primary_key=True)
    nick_name = models.CharField(max_length=128, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, null=True)
    role_id = models.IntegerField(blank=True, null=True)
    salt = models.CharField(max_length=255, blank=True, null=True)
    avatar = models.CharField(max_length=255, blank=True, null=True)
    sex = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=128, blank=True, null=True)
    dept_id = models.IntegerField(blank=True, null=True)
    post_id = models.IntegerField(blank=True, null=True)
    create_by = models.CharField(max_length=128, blank=True, null=True)
    update_by = models.CharField(max_length=128, blank=True, null=True)
    remark = models.CharField(max_length=255, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    deleted_at = models.DateTimeField(blank=True, null=True)
    username = models.CharField(max_length=64, blank=True, null=True)
    password = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sys_user'
        ordering = ['pk']
