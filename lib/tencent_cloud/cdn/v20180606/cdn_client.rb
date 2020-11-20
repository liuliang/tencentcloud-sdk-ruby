# frozen_string_literal: true

require 'tencent_cloud/common/base_client'
module TencentCloud
  class CdnClient < Common::BaseClient
    API_VERSION = '2018-06-06'
    ENDPOINT = 'cdn.tencentcloudapi.com'
    SERVICE_NAME = 'cdn'
    APIS = {
      #################### 内容分发网络相关接口
      ## IP 归属查询
      ## https://cloud.tencent.com/document/api/228/37868
      describe_cdn_ip: 'DescribeCdnIp',

      ## 获取SSL证书中的可用域名
      ## https://cloud.tencent.com/document/api/228/42491
      describe_cert_domains: 'DescribeCertDomains',

      ## 查询域名节点状态
      ## https://cloud.tencent.com/document/api/228/41954
      describe_ip_status: 'DescribeIpStatus',

      ## 省份运营商映射查询
      ## https://cloud.tencent.com/document/api/228/31296
      describe_map_info: 'DescribeMapInfo',

      ## 查询计费方式
      ## https://cloud.tencent.com/document/api/228/31295
      describe_pay_type: 'DescribePayType',

      ## 中国境内流量包查询
      ## https://cloud.tencent.com/document/api/228/39230
      describe_traffic_packages: 'DescribeTrafficPackages',

      ## 获取诊断任务列表
      ## https://cloud.tencent.com/document/api/228/49324
      list_diagnose_report: 'ListDiagnoseReport',

      ## 删除SCDN域名
      ## https://cloud.tencent.com/document/api/228/49013
      delete_scdn_domain: 'DeleteScdnDomain',

      ## 创建事件日志任务
      ## https://cloud.tencent.com/document/api/228/47941
      create_scdn_log_task: 'CreateScdnLogTask',

      ## 查询SCDN日志下载任务列表
      ## https://cloud.tencent.com/document/api/228/49012
      list_scdn_log_tasks: 'ListScdnLogTasks',

      ## 获取SCDN的Top数据
      ## https://cloud.tencent.com/document/api/228/47940
      describe_scdn_top_data: 'DescribeScdnTopData',

      ## 添加诊断URL
      ## https://cloud.tencent.com/document/api/228/49326
      create_diagnose_url: 'CreateDiagnoseUrl',

      ## 生成解析记录
      ## https://cloud.tencent.com/document/api/228/48118
      create_verify_record: 'CreateVerifyRecord',

      ## 获取诊断报告
      ## https://cloud.tencent.com/document/api/228/49325
      describe_diagnose_report: 'DescribeDiagnoseReport',

      ## 查询刷新用量配额
      ## https://cloud.tencent.com/document/api/228/41956
      describe_purge_quota: 'DescribePurgeQuota',

      ## 刷新历史查询
      ## https://cloud.tencent.com/document/api/228/37873
      describe_purge_tasks: 'DescribePurgeTasks',

      ## 查询预热用量配额
      ## https://cloud.tencent.com/document/api/228/41955
      describe_push_quota: 'DescribePushQuota',

      ## 预热历史查询
      ## https://cloud.tencent.com/document/api/228/37872
      describe_push_tasks: 'DescribePushTasks',

      ## 违规历史查询
      ## https://cloud.tencent.com/document/api/228/41131
      describe_url_violations: 'DescribeUrlViolations',

      ## 禁用 URL
      ## https://cloud.tencent.com/document/api/228/33541
      disable_caches: 'DisableCaches',

      ## 解禁 URL
      ## https://cloud.tencent.com/document/api/228/33540
      enable_caches: 'EnableCaches',

      ## 禁用历史查询
      ## https://cloud.tencent.com/document/api/228/33539
      get_disable_records: 'GetDisableRecords',

      ## 刷新目录
      ## https://cloud.tencent.com/document/api/228/37871
      purge_path_cache: 'PurgePathCache',

      ## 刷新 URL
      ## https://cloud.tencent.com/document/api/228/37870
      purge_urls_cache: 'PurgeUrlsCache',

      ## 预热 URL
      ## https://cloud.tencent.com/document/api/228/37869
      push_urls_cache: 'PushUrlsCache',

      ## 验证域名解析
      ## https://cloud.tencent.com/document/api/228/48117
      verify_domain_record: 'VerifyDomainRecord',

      ## 动态打包任务提交
      ## https://cloud.tencent.com/document/api/228/49977
      create_edge_pack_task: 'CreateEdgePackTask',

      ## 修改计费类型
      ## https://cloud.tencent.com/document/api/228/41135
      update_pay_type: 'UpdatePayType',

      ## 新增加速域名
      ## https://cloud.tencent.com/document/api/228/41123
      add_cdn_domain: 'AddCdnDomain',

      ## 删除加速域名
      ## https://cloud.tencent.com/document/api/228/41122
      delete_cdn_domain: 'DeleteCdnDomain',

      ## 拷贝域名
      ## https://cloud.tencent.com/document/api/228/49592
      duplicate_domain_config: 'DuplicateDomainConfig',

      ## 启用加速域名
      ## https://cloud.tencent.com/document/api/228/41121
      start_cdn_domain: 'StartCdnDomain',

      ## 停用加速域名
      ## https://cloud.tencent.com/document/api/228/41120
      stop_cdn_domain: 'StopCdnDomain',

      ## 创建日志主题
      ## https://cloud.tencent.com/document/api/228/42198
      create_cls_log_topic: 'CreateClsLogTopic',

      ## 删除日志主题
      ## https://cloud.tencent.com/document/api/228/42197
      delete_cls_log_topic: 'DeleteClsLogTopic',

      ## 停止日志主题投递
      ## https://cloud.tencent.com/document/api/228/42196
      disable_cls_log_topic: 'DisableClsLogTopic',

      ## 启动日志主题投递
      ## https://cloud.tencent.com/document/api/228/42195
      enable_cls_log_topic: 'EnableClsLogTopic',

      ## 显示日志主题列表
      ## https://cloud.tencent.com/document/api/228/42194
      list_cls_log_topics: 'ListClsLogTopics',

      ## 获取日志主题下绑定的域名
      ## https://cloud.tencent.com/document/api/228/42193
      list_cls_topic_domains: 'ListClsTopicDomains',

      ## 管理日志主题下绑定的域名
      ## https://cloud.tencent.com/document/api/228/42192
      manage_cls_topic_domains: 'ManageClsTopicDomains',

      ## 搜索CLS日志
      ## https://cloud.tencent.com/document/api/228/42191
      search_cls_log: 'SearchClsLog',

      ## 计费数据查询
      ## https://cloud.tencent.com/document/api/228/41237
      describe_billing_data: 'DescribeBillingData',

      ## 访问数据查询
      ## https://cloud.tencent.com/document/api/228/30986
      describe_cdn_data: 'DescribeCdnData',

      ## 地区运营商明细查询
      ## https://cloud.tencent.com/document/api/228/47395
      describe_district_isp_data: 'DescribeDistrictIspData',

      ## 活跃用户查询
      ## https://cloud.tencent.com/document/api/228/30985
      describe_ip_visit: 'DescribeIpVisit',

      ## 回源数据查询
      ## https://cloud.tencent.com/document/api/228/30984
      describe_origin_data: 'DescribeOriginData',

      ## 查询报表数据
      ## https://cloud.tencent.com/document/api/228/43367
      describe_report_data: 'DescribeReportData',

      ## TOP 数据查询
      ## https://cloud.tencent.com/document/api/228/30983
      list_top_data: 'ListTopData',

      ## 日志下载链接查询
      ## https://cloud.tencent.com/document/api/228/39232
      describe_cdn_domain_logs: 'DescribeCdnDomainLogs',

      ## 查询域名基本信息
      ## https://cloud.tencent.com/document/api/228/41118
      describe_domains: 'DescribeDomains',

      ## 查询域名详细配置
      ## https://cloud.tencent.com/document/api/228/41117
      describe_domains_config: 'DescribeDomainsConfig',

      ## 获取图片优化的配置
      ## https://cloud.tencent.com/document/api/228/43844
      describe_image_config: 'DescribeImageConfig',

      ## 更新域名配置
      ## https://cloud.tencent.com/document/api/228/41116
      update_domain_config: 'UpdateDomainConfig',

      ## 更新图片优化配置
      ## https://cloud.tencent.com/document/api/228/43843
      update_image_config: 'UpdateImageConfig',
    }.freeze
  end
end