{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Container.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Container.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * CloudRunConfig_LoadBalancerType
    CloudRunConfig_LoadBalancerType
      (
        CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEUNSPECIFIED,
        CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEEXTERNAL,
        CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEINTERNAL,
        ..
      ),

    -- * Cluster_Status
    Cluster_Status
      (
        Cluster_Status_STATUSUNSPECIFIED,
        Cluster_Status_Provisioning,
        Cluster_Status_Running,
        Cluster_Status_Reconciling,
        Cluster_Status_Stopping,
        Cluster_Status_Error',
        Cluster_Status_Degraded,
        ..
      ),

    -- * ClusterAutoscaling_AutoscalingProfile
    ClusterAutoscaling_AutoscalingProfile
      (
        ClusterAutoscaling_AutoscalingProfile_PROFILEUNSPECIFIED,
        ClusterAutoscaling_AutoscalingProfile_OPTIMIZEUTILIZATION,
        ClusterAutoscaling_AutoscalingProfile_Balanced,
        ..
      ),

    -- * ClusterUpdate_DesiredDatapathProvider
    ClusterUpdate_DesiredDatapathProvider
      (
        ClusterUpdate_DesiredDatapathProvider_DATAPATHPROVIDERUNSPECIFIED,
        ClusterUpdate_DesiredDatapathProvider_LEGACYDATAPATH,
        ClusterUpdate_DesiredDatapathProvider_ADVANCEDDATAPATH,
        ..
      ),

    -- * ClusterUpdate_DesiredPrivateIpv6GoogleAccess
    ClusterUpdate_DesiredPrivateIpv6GoogleAccess
      (
        ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
        ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED,
        ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE,
        ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL,
        ..
      ),

    -- * DNSConfig_ClusterDns
    DNSConfig_ClusterDns
      (
        DNSConfig_ClusterDns_PROVIDERUNSPECIFIED,
        DNSConfig_ClusterDns_PLATFORMDEFAULT,
        DNSConfig_ClusterDns_CLOUDDNS,
        ..
      ),

    -- * DNSConfig_ClusterDnsScope
    DNSConfig_ClusterDnsScope
      (
        DNSConfig_ClusterDnsScope_DNSSCOPEUNSPECIFIED,
        DNSConfig_ClusterDnsScope_VPCSCOPE,
        ..
      ),

    -- * DatabaseEncryption_State
    DatabaseEncryption_State
      (
        DatabaseEncryption_State_Unknown,
        DatabaseEncryption_State_Encrypted,
        DatabaseEncryption_State_Decrypted,
        ..
      ),

    -- * Filter_EventTypeItem
    Filter_EventTypeItem
      (
        Filter_EventTypeItem_EVENTTYPEUNSPECIFIED,
        Filter_EventTypeItem_UPGRADEAVAILABLEEVENT,
        Filter_EventTypeItem_UPGRADEEVENT,
        Filter_EventTypeItem_SECURITYBULLETINEVENT,
        ..
      ),

    -- * LoggingComponentConfig_EnableComponentsItem
    LoggingComponentConfig_EnableComponentsItem
      (
        LoggingComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED,
        LoggingComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS,
        LoggingComponentConfig_EnableComponentsItem_Workloads,
        ..
      ),

    -- * MaintenanceExclusionOptions_Scope
    MaintenanceExclusionOptions_Scope
      (
        MaintenanceExclusionOptions_Scope_NOUPGRADES,
        MaintenanceExclusionOptions_Scope_NOMINORUPGRADES,
        MaintenanceExclusionOptions_Scope_NOMINORORNODEUPGRADES,
        ..
      ),

    -- * MonitoringComponentConfig_EnableComponentsItem
    MonitoringComponentConfig_EnableComponentsItem
      (
        MonitoringComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED,
        MonitoringComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS,
        ..
      ),

    -- * NetworkConfig_DatapathProvider
    NetworkConfig_DatapathProvider
      (
        NetworkConfig_DatapathProvider_DATAPATHPROVIDERUNSPECIFIED,
        NetworkConfig_DatapathProvider_LEGACYDATAPATH,
        NetworkConfig_DatapathProvider_ADVANCEDDATAPATH,
        ..
      ),

    -- * NetworkConfig_PrivateIpv6GoogleAccess
    NetworkConfig_PrivateIpv6GoogleAccess
      (
        NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
        NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED,
        NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE,
        NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL,
        ..
      ),

    -- * NetworkPolicy_Provider
    NetworkPolicy_Provider
      (
        NetworkPolicy_Provider_PROVIDERUNSPECIFIED,
        NetworkPolicy_Provider_Calico,
        ..
      ),

    -- * NodePool_Status
    NodePool_Status
      (
        NodePool_Status_STATUSUNSPECIFIED,
        NodePool_Status_Provisioning,
        NodePool_Status_Running,
        NodePool_Status_RUNNINGWITHERROR,
        NodePool_Status_Reconciling,
        NodePool_Status_Stopping,
        NodePool_Status_Error',
        ..
      ),

    -- * NodeTaint_Effect
    NodeTaint_Effect
      (
        NodeTaint_Effect_EFFECTUNSPECIFIED,
        NodeTaint_Effect_NOSCHEDULE,
        NodeTaint_Effect_PREFERNOSCHEDULE,
        NodeTaint_Effect_NOEXECUTE,
        ..
      ),

    -- * Operation_OperationType
    Operation_OperationType
      (
        Operation_OperationType_TYPEUNSPECIFIED,
        Operation_OperationType_CREATECLUSTER,
        Operation_OperationType_DELETECLUSTER,
        Operation_OperationType_UPGRADEMASTER,
        Operation_OperationType_UPGRADENODES,
        Operation_OperationType_REPAIRCLUSTER,
        Operation_OperationType_UPDATECLUSTER,
        Operation_OperationType_CREATENODEPOOL,
        Operation_OperationType_DELETENODEPOOL,
        Operation_OperationType_SETNODEPOOLMANAGEMENT,
        Operation_OperationType_AUTOREPAIRNODES,
        Operation_OperationType_AUTOUPGRADENODES,
        Operation_OperationType_SETLABELS,
        Operation_OperationType_SETMASTERAUTH,
        Operation_OperationType_SETNODEPOOLSIZE,
        Operation_OperationType_SETNETWORKPOLICY,
        Operation_OperationType_SETMAINTENANCEPOLICY,
        ..
      ),

    -- * Operation_Status
    Operation_Status
      (
        Operation_Status_STATUSUNSPECIFIED,
        Operation_Status_Pending,
        Operation_Status_Running,
        Operation_Status_Done,
        Operation_Status_Aborting,
        ..
      ),

    -- * OperationProgress_Status
    OperationProgress_Status
      (
        OperationProgress_Status_STATUSUNSPECIFIED,
        OperationProgress_Status_Pending,
        OperationProgress_Status_Running,
        OperationProgress_Status_Done,
        OperationProgress_Status_Aborting,
        ..
      ),

    -- * ReleaseChannel_Channel
    ReleaseChannel_Channel
      (
        ReleaseChannel_Channel_Unspecified,
        ReleaseChannel_Channel_Rapid,
        ReleaseChannel_Channel_Regular,
        ReleaseChannel_Channel_Stable,
        ..
      ),

    -- * ReleaseChannelConfig_Channel
    ReleaseChannelConfig_Channel
      (
        ReleaseChannelConfig_Channel_Unspecified,
        ReleaseChannelConfig_Channel_Rapid,
        ReleaseChannelConfig_Channel_Regular,
        ReleaseChannelConfig_Channel_Stable,
        ..
      ),

    -- * ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType
      (
        ReservationAffinity_ConsumeReservationType_Unspecified,
        ReservationAffinity_ConsumeReservationType_NORESERVATION,
        ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
        ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
        ..
      ),

    -- * SandboxConfig_Type
    SandboxConfig_Type
      (
        SandboxConfig_Type_Unspecified,
        SandboxConfig_Type_Gvisor,
        ..
      ),

    -- * SetMasterAuthRequest_Action
    SetMasterAuthRequest_Action
      (
        SetMasterAuthRequest_Action_Unknown,
        SetMasterAuthRequest_Action_SETPASSWORD,
        SetMasterAuthRequest_Action_GENERATEPASSWORD,
        SetMasterAuthRequest_Action_SETUSERNAME,
        ..
      ),

    -- * StatusCondition_CanonicalCode
    StatusCondition_CanonicalCode
      (
        StatusCondition_CanonicalCode_OK,
        StatusCondition_CanonicalCode_Cancelled,
        StatusCondition_CanonicalCode_Unknown,
        StatusCondition_CanonicalCode_INVALIDARGUMENT,
        StatusCondition_CanonicalCode_DEADLINEEXCEEDED,
        StatusCondition_CanonicalCode_NOTFOUND,
        StatusCondition_CanonicalCode_ALREADYEXISTS,
        StatusCondition_CanonicalCode_PERMISSIONDENIED,
        StatusCondition_CanonicalCode_Unauthenticated,
        StatusCondition_CanonicalCode_RESOURCEEXHAUSTED,
        StatusCondition_CanonicalCode_FAILEDPRECONDITION,
        StatusCondition_CanonicalCode_Aborted,
        StatusCondition_CanonicalCode_OUTOFRANGE,
        StatusCondition_CanonicalCode_Unimplemented,
        StatusCondition_CanonicalCode_Internal,
        StatusCondition_CanonicalCode_Unavailable,
        StatusCondition_CanonicalCode_DATALOSS,
        ..
      ),

    -- * StatusCondition_Code
    StatusCondition_Code
      (
        StatusCondition_Code_Unknown,
        StatusCondition_Code_GCESTOCKOUT,
        StatusCondition_Code_GKESERVICEACCOUNTDELETED,
        StatusCondition_Code_GCEQUOTAEXCEEDED,
        StatusCondition_Code_SETBYOPERATOR,
        StatusCondition_Code_CLOUDKMSKEYERROR,
        StatusCondition_Code_CAEXPIRING,
        ..
      ),

    -- * UpgradeAvailableEvent_ResourceType
    UpgradeAvailableEvent_ResourceType
      (
        UpgradeAvailableEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED,
        UpgradeAvailableEvent_ResourceType_Master,
        UpgradeAvailableEvent_ResourceType_NODEPOOL,
        ..
      ),

    -- * UpgradeEvent_ResourceType
    UpgradeEvent_ResourceType
      (
        UpgradeEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED,
        UpgradeEvent_ResourceType_Master,
        UpgradeEvent_ResourceType_NODEPOOL,
        ..
      ),

    -- * UsableSubnetworkSecondaryRange_Status
    UsableSubnetworkSecondaryRange_Status
      (
        UsableSubnetworkSecondaryRange_Status_Unknown,
        UsableSubnetworkSecondaryRange_Status_Unused,
        UsableSubnetworkSecondaryRange_Status_INUSESERVICE,
        UsableSubnetworkSecondaryRange_Status_INUSESHAREABLEPOD,
        UsableSubnetworkSecondaryRange_Status_INUSEMANAGEDPOD,
        ..
      ),

    -- * WorkloadMetadataConfig_Mode
    WorkloadMetadataConfig_Mode
      (
        WorkloadMetadataConfig_Mode_MODEUNSPECIFIED,
        WorkloadMetadataConfig_Mode_GCEMETADATA,
        WorkloadMetadataConfig_Mode_GKEMETADATA,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Which load balancer type is installed for Cloud Run.
newtype CloudRunConfig_LoadBalancerType = CloudRunConfig_LoadBalancerType { fromCloudRunConfig_LoadBalancerType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Load balancer type for Cloud Run is unspecified.
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEUNSPECIFIED :: CloudRunConfig_LoadBalancerType
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEUNSPECIFIED = CloudRunConfig_LoadBalancerType "LOAD_BALANCER_TYPE_UNSPECIFIED"

-- | Install external load balancer for Cloud Run.
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEEXTERNAL :: CloudRunConfig_LoadBalancerType
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEEXTERNAL = CloudRunConfig_LoadBalancerType "LOAD_BALANCER_TYPE_EXTERNAL"

-- | Install internal load balancer for Cloud Run.
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEINTERNAL :: CloudRunConfig_LoadBalancerType
pattern CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEINTERNAL = CloudRunConfig_LoadBalancerType "LOAD_BALANCER_TYPE_INTERNAL"

{-# COMPLETE
  CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEUNSPECIFIED,
  CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEEXTERNAL,
  CloudRunConfig_LoadBalancerType_LOADBALANCERTYPEINTERNAL,
  CloudRunConfig_LoadBalancerType #-}

-- | [Output only] The current status of this cluster.
newtype Cluster_Status = Cluster_Status { fromCluster_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Cluster_Status_STATUSUNSPECIFIED :: Cluster_Status
pattern Cluster_Status_STATUSUNSPECIFIED = Cluster_Status "STATUS_UNSPECIFIED"

-- | The PROVISIONING state indicates the cluster is being created.
pattern Cluster_Status_Provisioning :: Cluster_Status
pattern Cluster_Status_Provisioning = Cluster_Status "PROVISIONING"

-- | The RUNNING state indicates the cluster has been created and is fully usable.
pattern Cluster_Status_Running :: Cluster_Status
pattern Cluster_Status_Running = Cluster_Status "RUNNING"

-- | The RECONCILING state indicates that some work is actively being done on the cluster, such as upgrading the master or node software. Details can be found in the @statusMessage@ field.
pattern Cluster_Status_Reconciling :: Cluster_Status
pattern Cluster_Status_Reconciling = Cluster_Status "RECONCILING"

-- | The STOPPING state indicates the cluster is being deleted.
pattern Cluster_Status_Stopping :: Cluster_Status
pattern Cluster_Status_Stopping = Cluster_Status "STOPPING"

-- | The ERROR state indicates the cluster is unusable. It will be automatically deleted. Details can be found in the @statusMessage@ field.
pattern Cluster_Status_Error' :: Cluster_Status
pattern Cluster_Status_Error' = Cluster_Status "ERROR"

-- | The DEGRADED state indicates the cluster requires user action to restore full functionality. Details can be found in the @statusMessage@ field.
pattern Cluster_Status_Degraded :: Cluster_Status
pattern Cluster_Status_Degraded = Cluster_Status "DEGRADED"

{-# COMPLETE
  Cluster_Status_STATUSUNSPECIFIED,
  Cluster_Status_Provisioning,
  Cluster_Status_Running,
  Cluster_Status_Reconciling,
  Cluster_Status_Stopping,
  Cluster_Status_Error',
  Cluster_Status_Degraded,
  Cluster_Status #-}

-- | Defines autoscaling behaviour.
newtype ClusterAutoscaling_AutoscalingProfile = ClusterAutoscaling_AutoscalingProfile { fromClusterAutoscaling_AutoscalingProfile :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No change to autoscaling configuration.
pattern ClusterAutoscaling_AutoscalingProfile_PROFILEUNSPECIFIED :: ClusterAutoscaling_AutoscalingProfile
pattern ClusterAutoscaling_AutoscalingProfile_PROFILEUNSPECIFIED = ClusterAutoscaling_AutoscalingProfile "PROFILE_UNSPECIFIED"

-- | Prioritize optimizing utilization of resources.
pattern ClusterAutoscaling_AutoscalingProfile_OPTIMIZEUTILIZATION :: ClusterAutoscaling_AutoscalingProfile
pattern ClusterAutoscaling_AutoscalingProfile_OPTIMIZEUTILIZATION = ClusterAutoscaling_AutoscalingProfile "OPTIMIZE_UTILIZATION"

-- | Use default (balanced) autoscaling configuration.
pattern ClusterAutoscaling_AutoscalingProfile_Balanced :: ClusterAutoscaling_AutoscalingProfile
pattern ClusterAutoscaling_AutoscalingProfile_Balanced = ClusterAutoscaling_AutoscalingProfile "BALANCED"

{-# COMPLETE
  ClusterAutoscaling_AutoscalingProfile_PROFILEUNSPECIFIED,
  ClusterAutoscaling_AutoscalingProfile_OPTIMIZEUTILIZATION,
  ClusterAutoscaling_AutoscalingProfile_Balanced,
  ClusterAutoscaling_AutoscalingProfile #-}

-- | The desired datapath provider for the cluster.
newtype ClusterUpdate_DesiredDatapathProvider = ClusterUpdate_DesiredDatapathProvider { fromClusterUpdate_DesiredDatapathProvider :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value.
pattern ClusterUpdate_DesiredDatapathProvider_DATAPATHPROVIDERUNSPECIFIED :: ClusterUpdate_DesiredDatapathProvider
pattern ClusterUpdate_DesiredDatapathProvider_DATAPATHPROVIDERUNSPECIFIED = ClusterUpdate_DesiredDatapathProvider "DATAPATH_PROVIDER_UNSPECIFIED"

-- | Use the IPTables implementation based on kube-proxy.
pattern ClusterUpdate_DesiredDatapathProvider_LEGACYDATAPATH :: ClusterUpdate_DesiredDatapathProvider
pattern ClusterUpdate_DesiredDatapathProvider_LEGACYDATAPATH = ClusterUpdate_DesiredDatapathProvider "LEGACY_DATAPATH"

-- | Use the eBPF based GKE Dataplane V2 with additional features. See the <https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2 GKE Dataplane V2 documentation> for more.
pattern ClusterUpdate_DesiredDatapathProvider_ADVANCEDDATAPATH :: ClusterUpdate_DesiredDatapathProvider
pattern ClusterUpdate_DesiredDatapathProvider_ADVANCEDDATAPATH = ClusterUpdate_DesiredDatapathProvider "ADVANCED_DATAPATH"

{-# COMPLETE
  ClusterUpdate_DesiredDatapathProvider_DATAPATHPROVIDERUNSPECIFIED,
  ClusterUpdate_DesiredDatapathProvider_LEGACYDATAPATH,
  ClusterUpdate_DesiredDatapathProvider_ADVANCEDDATAPATH,
  ClusterUpdate_DesiredDatapathProvider #-}

-- | The desired state of IPv6 connectivity to Google Services.
newtype ClusterUpdate_DesiredPrivateIpv6GoogleAccess = ClusterUpdate_DesiredPrivateIpv6GoogleAccess { fromClusterUpdate_DesiredPrivateIpv6GoogleAccess :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. Same as DISABLED
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED :: ClusterUpdate_DesiredPrivateIpv6GoogleAccess
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED = ClusterUpdate_DesiredPrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"

-- | No private access to or from Google Services
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED :: ClusterUpdate_DesiredPrivateIpv6GoogleAccess
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED = ClusterUpdate_DesiredPrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"

-- | Enables private IPv6 access to Google Services from GKE
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE :: ClusterUpdate_DesiredPrivateIpv6GoogleAccess
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE = ClusterUpdate_DesiredPrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"

-- | Enables priate IPv6 access to and from Google Services
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL :: ClusterUpdate_DesiredPrivateIpv6GoogleAccess
pattern ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL = ClusterUpdate_DesiredPrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL"

{-# COMPLETE
  ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
  ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED,
  ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE,
  ClusterUpdate_DesiredPrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL,
  ClusterUpdate_DesiredPrivateIpv6GoogleAccess #-}

-- | cluster_dns indicates which in-cluster DNS provider should be used.
newtype DNSConfig_ClusterDns = DNSConfig_ClusterDns { fromDNSConfig_ClusterDns :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value
pattern DNSConfig_ClusterDns_PROVIDERUNSPECIFIED :: DNSConfig_ClusterDns
pattern DNSConfig_ClusterDns_PROVIDERUNSPECIFIED = DNSConfig_ClusterDns "PROVIDER_UNSPECIFIED"

-- | Use GKE default DNS provider(kube-dns) for DNS resolution.
pattern DNSConfig_ClusterDns_PLATFORMDEFAULT :: DNSConfig_ClusterDns
pattern DNSConfig_ClusterDns_PLATFORMDEFAULT = DNSConfig_ClusterDns "PLATFORM_DEFAULT"

-- | Use CloudDNS for DNS resolution.
pattern DNSConfig_ClusterDns_CLOUDDNS :: DNSConfig_ClusterDns
pattern DNSConfig_ClusterDns_CLOUDDNS = DNSConfig_ClusterDns "CLOUD_DNS"

{-# COMPLETE
  DNSConfig_ClusterDns_PROVIDERUNSPECIFIED,
  DNSConfig_ClusterDns_PLATFORMDEFAULT,
  DNSConfig_ClusterDns_CLOUDDNS,
  DNSConfig_ClusterDns #-}

-- | cluster/dns/scope indicates the scope of access to cluster DNS records.
newtype DNSConfig_ClusterDnsScope = DNSConfig_ClusterDnsScope { fromDNSConfig_ClusterDnsScope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value, will be inferred as cluster scope.
pattern DNSConfig_ClusterDnsScope_DNSSCOPEUNSPECIFIED :: DNSConfig_ClusterDnsScope
pattern DNSConfig_ClusterDnsScope_DNSSCOPEUNSPECIFIED = DNSConfig_ClusterDnsScope "DNS_SCOPE_UNSPECIFIED"

-- | DNS records are accessible from within the VPC.
pattern DNSConfig_ClusterDnsScope_VPCSCOPE :: DNSConfig_ClusterDnsScope
pattern DNSConfig_ClusterDnsScope_VPCSCOPE = DNSConfig_ClusterDnsScope "VPC_SCOPE"

{-# COMPLETE
  DNSConfig_ClusterDnsScope_DNSSCOPEUNSPECIFIED,
  DNSConfig_ClusterDnsScope_VPCSCOPE,
  DNSConfig_ClusterDnsScope #-}

-- | Denotes the state of etcd encryption.
newtype DatabaseEncryption_State = DatabaseEncryption_State { fromDatabaseEncryption_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never be set
pattern DatabaseEncryption_State_Unknown :: DatabaseEncryption_State
pattern DatabaseEncryption_State_Unknown = DatabaseEncryption_State "UNKNOWN"

-- | Secrets in etcd are encrypted.
pattern DatabaseEncryption_State_Encrypted :: DatabaseEncryption_State
pattern DatabaseEncryption_State_Encrypted = DatabaseEncryption_State "ENCRYPTED"

-- | Secrets in etcd are stored in plain text (at etcd level) - this is unrelated to Compute Engine level full disk encryption.
pattern DatabaseEncryption_State_Decrypted :: DatabaseEncryption_State
pattern DatabaseEncryption_State_Decrypted = DatabaseEncryption_State "DECRYPTED"

{-# COMPLETE
  DatabaseEncryption_State_Unknown,
  DatabaseEncryption_State_Encrypted,
  DatabaseEncryption_State_Decrypted,
  DatabaseEncryption_State #-}

newtype Filter_EventTypeItem = Filter_EventTypeItem { fromFilter_EventTypeItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set, will be ignored.
pattern Filter_EventTypeItem_EVENTTYPEUNSPECIFIED :: Filter_EventTypeItem
pattern Filter_EventTypeItem_EVENTTYPEUNSPECIFIED = Filter_EventTypeItem "EVENT_TYPE_UNSPECIFIED"

-- | Corresponds with UpgradeAvailableEvent.
pattern Filter_EventTypeItem_UPGRADEAVAILABLEEVENT :: Filter_EventTypeItem
pattern Filter_EventTypeItem_UPGRADEAVAILABLEEVENT = Filter_EventTypeItem "UPGRADE_AVAILABLE_EVENT"

-- | Corresponds with UpgradeEvent.
pattern Filter_EventTypeItem_UPGRADEEVENT :: Filter_EventTypeItem
pattern Filter_EventTypeItem_UPGRADEEVENT = Filter_EventTypeItem "UPGRADE_EVENT"

-- | Corresponds with SecurityBulletinEvent.
pattern Filter_EventTypeItem_SECURITYBULLETINEVENT :: Filter_EventTypeItem
pattern Filter_EventTypeItem_SECURITYBULLETINEVENT = Filter_EventTypeItem "SECURITY_BULLETIN_EVENT"

{-# COMPLETE
  Filter_EventTypeItem_EVENTTYPEUNSPECIFIED,
  Filter_EventTypeItem_UPGRADEAVAILABLEEVENT,
  Filter_EventTypeItem_UPGRADEEVENT,
  Filter_EventTypeItem_SECURITYBULLETINEVENT,
  Filter_EventTypeItem #-}

newtype LoggingComponentConfig_EnableComponentsItem = LoggingComponentConfig_EnableComponentsItem { fromLoggingComponentConfig_EnableComponentsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This shouldn\'t be used.
pattern LoggingComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED :: LoggingComponentConfig_EnableComponentsItem
pattern LoggingComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED = LoggingComponentConfig_EnableComponentsItem "COMPONENT_UNSPECIFIED"

-- | system components
pattern LoggingComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS :: LoggingComponentConfig_EnableComponentsItem
pattern LoggingComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS = LoggingComponentConfig_EnableComponentsItem "SYSTEM_COMPONENTS"

-- | workloads
pattern LoggingComponentConfig_EnableComponentsItem_Workloads :: LoggingComponentConfig_EnableComponentsItem
pattern LoggingComponentConfig_EnableComponentsItem_Workloads = LoggingComponentConfig_EnableComponentsItem "WORKLOADS"

{-# COMPLETE
  LoggingComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED,
  LoggingComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS,
  LoggingComponentConfig_EnableComponentsItem_Workloads,
  LoggingComponentConfig_EnableComponentsItem #-}

-- | Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
newtype MaintenanceExclusionOptions_Scope = MaintenanceExclusionOptions_Scope { fromMaintenanceExclusionOptions_Scope :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | NO_UPGRADES excludes all upgrades, including patch upgrades and minor upgrades across control planes and nodes. This is the default exclusion behavior.
pattern MaintenanceExclusionOptions_Scope_NOUPGRADES :: MaintenanceExclusionOptions_Scope
pattern MaintenanceExclusionOptions_Scope_NOUPGRADES = MaintenanceExclusionOptions_Scope "NO_UPGRADES"

-- | NO/MINOR/UPGRADES excludes all minor upgrades for the cluster, only patches are allowed.
pattern MaintenanceExclusionOptions_Scope_NOMINORUPGRADES :: MaintenanceExclusionOptions_Scope
pattern MaintenanceExclusionOptions_Scope_NOMINORUPGRADES = MaintenanceExclusionOptions_Scope "NO_MINOR_UPGRADES"

-- | NO/MINOR/OR/NODE/UPGRADES excludes all minor upgrades for the cluster, and also exclude all node pool upgrades. Only control plane patches are allowed.
pattern MaintenanceExclusionOptions_Scope_NOMINORORNODEUPGRADES :: MaintenanceExclusionOptions_Scope
pattern MaintenanceExclusionOptions_Scope_NOMINORORNODEUPGRADES = MaintenanceExclusionOptions_Scope "NO_MINOR_OR_NODE_UPGRADES"

{-# COMPLETE
  MaintenanceExclusionOptions_Scope_NOUPGRADES,
  MaintenanceExclusionOptions_Scope_NOMINORUPGRADES,
  MaintenanceExclusionOptions_Scope_NOMINORORNODEUPGRADES,
  MaintenanceExclusionOptions_Scope #-}

newtype MonitoringComponentConfig_EnableComponentsItem = MonitoringComponentConfig_EnableComponentsItem { fromMonitoringComponentConfig_EnableComponentsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This shouldn\'t be used.
pattern MonitoringComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED :: MonitoringComponentConfig_EnableComponentsItem
pattern MonitoringComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED = MonitoringComponentConfig_EnableComponentsItem "COMPONENT_UNSPECIFIED"

-- | system components
pattern MonitoringComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS :: MonitoringComponentConfig_EnableComponentsItem
pattern MonitoringComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS = MonitoringComponentConfig_EnableComponentsItem "SYSTEM_COMPONENTS"

{-# COMPLETE
  MonitoringComponentConfig_EnableComponentsItem_COMPONENTUNSPECIFIED,
  MonitoringComponentConfig_EnableComponentsItem_SYSTEMCOMPONENTS,
  MonitoringComponentConfig_EnableComponentsItem #-}

-- | The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
newtype NetworkConfig_DatapathProvider = NetworkConfig_DatapathProvider { fromNetworkConfig_DatapathProvider :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value.
pattern NetworkConfig_DatapathProvider_DATAPATHPROVIDERUNSPECIFIED :: NetworkConfig_DatapathProvider
pattern NetworkConfig_DatapathProvider_DATAPATHPROVIDERUNSPECIFIED = NetworkConfig_DatapathProvider "DATAPATH_PROVIDER_UNSPECIFIED"

-- | Use the IPTables implementation based on kube-proxy.
pattern NetworkConfig_DatapathProvider_LEGACYDATAPATH :: NetworkConfig_DatapathProvider
pattern NetworkConfig_DatapathProvider_LEGACYDATAPATH = NetworkConfig_DatapathProvider "LEGACY_DATAPATH"

-- | Use the eBPF based GKE Dataplane V2 with additional features. See the <https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2 GKE Dataplane V2 documentation> for more.
pattern NetworkConfig_DatapathProvider_ADVANCEDDATAPATH :: NetworkConfig_DatapathProvider
pattern NetworkConfig_DatapathProvider_ADVANCEDDATAPATH = NetworkConfig_DatapathProvider "ADVANCED_DATAPATH"

{-# COMPLETE
  NetworkConfig_DatapathProvider_DATAPATHPROVIDERUNSPECIFIED,
  NetworkConfig_DatapathProvider_LEGACYDATAPATH,
  NetworkConfig_DatapathProvider_ADVANCEDDATAPATH,
  NetworkConfig_DatapathProvider #-}

-- | The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)
newtype NetworkConfig_PrivateIpv6GoogleAccess = NetworkConfig_PrivateIpv6GoogleAccess { fromNetworkConfig_PrivateIpv6GoogleAccess :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. Same as DISABLED
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED :: NetworkConfig_PrivateIpv6GoogleAccess
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED = NetworkConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"

-- | No private access to or from Google Services
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED :: NetworkConfig_PrivateIpv6GoogleAccess
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED = NetworkConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"

-- | Enables private IPv6 access to Google Services from GKE
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE :: NetworkConfig_PrivateIpv6GoogleAccess
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE = NetworkConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"

-- | Enables priate IPv6 access to and from Google Services
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL :: NetworkConfig_PrivateIpv6GoogleAccess
pattern NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL = NetworkConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL"

{-# COMPLETE
  NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
  NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSDISABLED,
  NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSTOGOOGLE,
  NetworkConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSBIDIRECTIONAL,
  NetworkConfig_PrivateIpv6GoogleAccess #-}

-- | The selected network policy provider.
newtype NetworkPolicy_Provider = NetworkPolicy_Provider { fromNetworkPolicy_Provider :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set
pattern NetworkPolicy_Provider_PROVIDERUNSPECIFIED :: NetworkPolicy_Provider
pattern NetworkPolicy_Provider_PROVIDERUNSPECIFIED = NetworkPolicy_Provider "PROVIDER_UNSPECIFIED"

-- | Tigera (Calico Felix).
pattern NetworkPolicy_Provider_Calico :: NetworkPolicy_Provider
pattern NetworkPolicy_Provider_Calico = NetworkPolicy_Provider "CALICO"

{-# COMPLETE
  NetworkPolicy_Provider_PROVIDERUNSPECIFIED,
  NetworkPolicy_Provider_Calico,
  NetworkPolicy_Provider #-}

-- | [Output only] The status of the nodes in this pool instance.
newtype NodePool_Status = NodePool_Status { fromNodePool_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern NodePool_Status_STATUSUNSPECIFIED :: NodePool_Status
pattern NodePool_Status_STATUSUNSPECIFIED = NodePool_Status "STATUS_UNSPECIFIED"

-- | The PROVISIONING state indicates the node pool is being created.
pattern NodePool_Status_Provisioning :: NodePool_Status
pattern NodePool_Status_Provisioning = NodePool_Status "PROVISIONING"

-- | The RUNNING state indicates the node pool has been created and is fully usable.
pattern NodePool_Status_Running :: NodePool_Status
pattern NodePool_Status_Running = NodePool_Status "RUNNING"

-- | The RUNNING/WITH/ERROR state indicates the node pool has been created and is partially usable. Some error state has occurred and some functionality may be impaired. Customer may need to reissue a request or trigger a new update.
pattern NodePool_Status_RUNNINGWITHERROR :: NodePool_Status
pattern NodePool_Status_RUNNINGWITHERROR = NodePool_Status "RUNNING_WITH_ERROR"

-- | The RECONCILING state indicates that some work is actively being done on the node pool, such as upgrading node software. Details can be found in the @statusMessage@ field.
pattern NodePool_Status_Reconciling :: NodePool_Status
pattern NodePool_Status_Reconciling = NodePool_Status "RECONCILING"

-- | The STOPPING state indicates the node pool is being deleted.
pattern NodePool_Status_Stopping :: NodePool_Status
pattern NodePool_Status_Stopping = NodePool_Status "STOPPING"

-- | The ERROR state indicates the node pool may be unusable. Details can be found in the @statusMessage@ field.
pattern NodePool_Status_Error' :: NodePool_Status
pattern NodePool_Status_Error' = NodePool_Status "ERROR"

{-# COMPLETE
  NodePool_Status_STATUSUNSPECIFIED,
  NodePool_Status_Provisioning,
  NodePool_Status_Running,
  NodePool_Status_RUNNINGWITHERROR,
  NodePool_Status_Reconciling,
  NodePool_Status_Stopping,
  NodePool_Status_Error',
  NodePool_Status #-}

-- | Effect for taint.
newtype NodeTaint_Effect = NodeTaint_Effect { fromNodeTaint_Effect :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set
pattern NodeTaint_Effect_EFFECTUNSPECIFIED :: NodeTaint_Effect
pattern NodeTaint_Effect_EFFECTUNSPECIFIED = NodeTaint_Effect "EFFECT_UNSPECIFIED"

-- | NoSchedule
pattern NodeTaint_Effect_NOSCHEDULE :: NodeTaint_Effect
pattern NodeTaint_Effect_NOSCHEDULE = NodeTaint_Effect "NO_SCHEDULE"

-- | PreferNoSchedule
pattern NodeTaint_Effect_PREFERNOSCHEDULE :: NodeTaint_Effect
pattern NodeTaint_Effect_PREFERNOSCHEDULE = NodeTaint_Effect "PREFER_NO_SCHEDULE"

-- | NoExecute
pattern NodeTaint_Effect_NOEXECUTE :: NodeTaint_Effect
pattern NodeTaint_Effect_NOEXECUTE = NodeTaint_Effect "NO_EXECUTE"

{-# COMPLETE
  NodeTaint_Effect_EFFECTUNSPECIFIED,
  NodeTaint_Effect_NOSCHEDULE,
  NodeTaint_Effect_PREFERNOSCHEDULE,
  NodeTaint_Effect_NOEXECUTE,
  NodeTaint_Effect #-}

-- | The operation type.
newtype Operation_OperationType = Operation_OperationType { fromOperation_OperationType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Operation_OperationType_TYPEUNSPECIFIED :: Operation_OperationType
pattern Operation_OperationType_TYPEUNSPECIFIED = Operation_OperationType "TYPE_UNSPECIFIED"

-- | Cluster create.
pattern Operation_OperationType_CREATECLUSTER :: Operation_OperationType
pattern Operation_OperationType_CREATECLUSTER = Operation_OperationType "CREATE_CLUSTER"

-- | Cluster delete.
pattern Operation_OperationType_DELETECLUSTER :: Operation_OperationType
pattern Operation_OperationType_DELETECLUSTER = Operation_OperationType "DELETE_CLUSTER"

-- | A master upgrade.
pattern Operation_OperationType_UPGRADEMASTER :: Operation_OperationType
pattern Operation_OperationType_UPGRADEMASTER = Operation_OperationType "UPGRADE_MASTER"

-- | A node upgrade.
pattern Operation_OperationType_UPGRADENODES :: Operation_OperationType
pattern Operation_OperationType_UPGRADENODES = Operation_OperationType "UPGRADE_NODES"

-- | Cluster repair.
pattern Operation_OperationType_REPAIRCLUSTER :: Operation_OperationType
pattern Operation_OperationType_REPAIRCLUSTER = Operation_OperationType "REPAIR_CLUSTER"

-- | Cluster update.
pattern Operation_OperationType_UPDATECLUSTER :: Operation_OperationType
pattern Operation_OperationType_UPDATECLUSTER = Operation_OperationType "UPDATE_CLUSTER"

-- | Node pool create.
pattern Operation_OperationType_CREATENODEPOOL :: Operation_OperationType
pattern Operation_OperationType_CREATENODEPOOL = Operation_OperationType "CREATE_NODE_POOL"

-- | Node pool delete.
pattern Operation_OperationType_DELETENODEPOOL :: Operation_OperationType
pattern Operation_OperationType_DELETENODEPOOL = Operation_OperationType "DELETE_NODE_POOL"

-- | Set node pool management.
pattern Operation_OperationType_SETNODEPOOLMANAGEMENT :: Operation_OperationType
pattern Operation_OperationType_SETNODEPOOLMANAGEMENT = Operation_OperationType "SET_NODE_POOL_MANAGEMENT"

-- | Automatic node pool repair.
pattern Operation_OperationType_AUTOREPAIRNODES :: Operation_OperationType
pattern Operation_OperationType_AUTOREPAIRNODES = Operation_OperationType "AUTO_REPAIR_NODES"

-- | Automatic node upgrade.
pattern Operation_OperationType_AUTOUPGRADENODES :: Operation_OperationType
pattern Operation_OperationType_AUTOUPGRADENODES = Operation_OperationType "AUTO_UPGRADE_NODES"

-- | Set labels.
pattern Operation_OperationType_SETLABELS :: Operation_OperationType
pattern Operation_OperationType_SETLABELS = Operation_OperationType "SET_LABELS"

-- | Set\/generate master auth materials
pattern Operation_OperationType_SETMASTERAUTH :: Operation_OperationType
pattern Operation_OperationType_SETMASTERAUTH = Operation_OperationType "SET_MASTER_AUTH"

-- | Set node pool size.
pattern Operation_OperationType_SETNODEPOOLSIZE :: Operation_OperationType
pattern Operation_OperationType_SETNODEPOOLSIZE = Operation_OperationType "SET_NODE_POOL_SIZE"

-- | Updates network policy for a cluster.
pattern Operation_OperationType_SETNETWORKPOLICY :: Operation_OperationType
pattern Operation_OperationType_SETNETWORKPOLICY = Operation_OperationType "SET_NETWORK_POLICY"

-- | Set the maintenance policy.
pattern Operation_OperationType_SETMAINTENANCEPOLICY :: Operation_OperationType
pattern Operation_OperationType_SETMAINTENANCEPOLICY = Operation_OperationType "SET_MAINTENANCE_POLICY"

{-# COMPLETE
  Operation_OperationType_TYPEUNSPECIFIED,
  Operation_OperationType_CREATECLUSTER,
  Operation_OperationType_DELETECLUSTER,
  Operation_OperationType_UPGRADEMASTER,
  Operation_OperationType_UPGRADENODES,
  Operation_OperationType_REPAIRCLUSTER,
  Operation_OperationType_UPDATECLUSTER,
  Operation_OperationType_CREATENODEPOOL,
  Operation_OperationType_DELETENODEPOOL,
  Operation_OperationType_SETNODEPOOLMANAGEMENT,
  Operation_OperationType_AUTOREPAIRNODES,
  Operation_OperationType_AUTOUPGRADENODES,
  Operation_OperationType_SETLABELS,
  Operation_OperationType_SETMASTERAUTH,
  Operation_OperationType_SETNODEPOOLSIZE,
  Operation_OperationType_SETNETWORKPOLICY,
  Operation_OperationType_SETMAINTENANCEPOLICY,
  Operation_OperationType #-}

-- | The current status of the operation.
newtype Operation_Status = Operation_Status { fromOperation_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern Operation_Status_STATUSUNSPECIFIED :: Operation_Status
pattern Operation_Status_STATUSUNSPECIFIED = Operation_Status "STATUS_UNSPECIFIED"

-- | The operation has been created.
pattern Operation_Status_Pending :: Operation_Status
pattern Operation_Status_Pending = Operation_Status "PENDING"

-- | The operation is currently running.
pattern Operation_Status_Running :: Operation_Status
pattern Operation_Status_Running = Operation_Status "RUNNING"

-- | The operation is done, either cancelled or completed.
pattern Operation_Status_Done :: Operation_Status
pattern Operation_Status_Done = Operation_Status "DONE"

-- | The operation is aborting.
pattern Operation_Status_Aborting :: Operation_Status
pattern Operation_Status_Aborting = Operation_Status "ABORTING"

{-# COMPLETE
  Operation_Status_STATUSUNSPECIFIED,
  Operation_Status_Pending,
  Operation_Status_Running,
  Operation_Status_Done,
  Operation_Status_Aborting,
  Operation_Status #-}

-- | Status of an operation stage. Unset for single-stage operations.
newtype OperationProgress_Status = OperationProgress_Status { fromOperationProgress_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern OperationProgress_Status_STATUSUNSPECIFIED :: OperationProgress_Status
pattern OperationProgress_Status_STATUSUNSPECIFIED = OperationProgress_Status "STATUS_UNSPECIFIED"

-- | The operation has been created.
pattern OperationProgress_Status_Pending :: OperationProgress_Status
pattern OperationProgress_Status_Pending = OperationProgress_Status "PENDING"

-- | The operation is currently running.
pattern OperationProgress_Status_Running :: OperationProgress_Status
pattern OperationProgress_Status_Running = OperationProgress_Status "RUNNING"

-- | The operation is done, either cancelled or completed.
pattern OperationProgress_Status_Done :: OperationProgress_Status
pattern OperationProgress_Status_Done = OperationProgress_Status "DONE"

-- | The operation is aborting.
pattern OperationProgress_Status_Aborting :: OperationProgress_Status
pattern OperationProgress_Status_Aborting = OperationProgress_Status "ABORTING"

{-# COMPLETE
  OperationProgress_Status_STATUSUNSPECIFIED,
  OperationProgress_Status_Pending,
  OperationProgress_Status_Running,
  OperationProgress_Status_Done,
  OperationProgress_Status_Aborting,
  OperationProgress_Status #-}

-- | channel specifies which release channel the cluster is subscribed to.
newtype ReleaseChannel_Channel = ReleaseChannel_Channel { fromReleaseChannel_Channel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No channel specified.
pattern ReleaseChannel_Channel_Unspecified :: ReleaseChannel_Channel
pattern ReleaseChannel_Channel_Unspecified = ReleaseChannel_Channel "UNSPECIFIED"

-- | RAPID channel is offered on an early access basis for customers who want to test new releases. WARNING: Versions available in the RAPID Channel may be subject to unresolved issues with no known workaround and are not subject to any SLAs.
pattern ReleaseChannel_Channel_Rapid :: ReleaseChannel_Channel
pattern ReleaseChannel_Channel_Rapid = ReleaseChannel_Channel "RAPID"

-- | Clusters subscribed to REGULAR receive versions that are considered GA quality. REGULAR is intended for production users who want to take advantage of new features.
pattern ReleaseChannel_Channel_Regular :: ReleaseChannel_Channel
pattern ReleaseChannel_Channel_Regular = ReleaseChannel_Channel "REGULAR"

-- | Clusters subscribed to STABLE receive versions that are known to be stable and reliable in production.
pattern ReleaseChannel_Channel_Stable :: ReleaseChannel_Channel
pattern ReleaseChannel_Channel_Stable = ReleaseChannel_Channel "STABLE"

{-# COMPLETE
  ReleaseChannel_Channel_Unspecified,
  ReleaseChannel_Channel_Rapid,
  ReleaseChannel_Channel_Regular,
  ReleaseChannel_Channel_Stable,
  ReleaseChannel_Channel #-}

-- | The release channel this configuration applies to.
newtype ReleaseChannelConfig_Channel = ReleaseChannelConfig_Channel { fromReleaseChannelConfig_Channel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No channel specified.
pattern ReleaseChannelConfig_Channel_Unspecified :: ReleaseChannelConfig_Channel
pattern ReleaseChannelConfig_Channel_Unspecified = ReleaseChannelConfig_Channel "UNSPECIFIED"

-- | RAPID channel is offered on an early access basis for customers who want to test new releases. WARNING: Versions available in the RAPID Channel may be subject to unresolved issues with no known workaround and are not subject to any SLAs.
pattern ReleaseChannelConfig_Channel_Rapid :: ReleaseChannelConfig_Channel
pattern ReleaseChannelConfig_Channel_Rapid = ReleaseChannelConfig_Channel "RAPID"

-- | Clusters subscribed to REGULAR receive versions that are considered GA quality. REGULAR is intended for production users who want to take advantage of new features.
pattern ReleaseChannelConfig_Channel_Regular :: ReleaseChannelConfig_Channel
pattern ReleaseChannelConfig_Channel_Regular = ReleaseChannelConfig_Channel "REGULAR"

-- | Clusters subscribed to STABLE receive versions that are known to be stable and reliable in production.
pattern ReleaseChannelConfig_Channel_Stable :: ReleaseChannelConfig_Channel
pattern ReleaseChannelConfig_Channel_Stable = ReleaseChannelConfig_Channel "STABLE"

{-# COMPLETE
  ReleaseChannelConfig_Channel_Unspecified,
  ReleaseChannelConfig_Channel_Rapid,
  ReleaseChannelConfig_Channel_Regular,
  ReleaseChannelConfig_Channel_Stable,
  ReleaseChannelConfig_Channel #-}

-- | Corresponds to the type of reservation consumption.
newtype ReservationAffinity_ConsumeReservationType = ReservationAffinity_ConsumeReservationType { fromReservationAffinity_ConsumeReservationType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This should not be used.
pattern ReservationAffinity_ConsumeReservationType_Unspecified :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_Unspecified = ReservationAffinity_ConsumeReservationType "UNSPECIFIED"

-- | Do not consume from any reserved capacity.
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION = ReservationAffinity_ConsumeReservationType "NO_RESERVATION"

-- | Consume any reservation available.
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION = ReservationAffinity_ConsumeReservationType "ANY_RESERVATION"

-- | Must consume from a specific reservation. Must specify key value fields for specifying the reservations.
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION = ReservationAffinity_ConsumeReservationType "SPECIFIC_RESERVATION"

{-# COMPLETE
  ReservationAffinity_ConsumeReservationType_Unspecified,
  ReservationAffinity_ConsumeReservationType_NORESERVATION,
  ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
  ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
  ReservationAffinity_ConsumeReservationType #-}

-- | Type of the sandbox to use for the node.
newtype SandboxConfig_Type = SandboxConfig_Type { fromSandboxConfig_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This should not be used.
pattern SandboxConfig_Type_Unspecified :: SandboxConfig_Type
pattern SandboxConfig_Type_Unspecified = SandboxConfig_Type "UNSPECIFIED"

-- | Run sandbox using gvisor.
pattern SandboxConfig_Type_Gvisor :: SandboxConfig_Type
pattern SandboxConfig_Type_Gvisor = SandboxConfig_Type "GVISOR"

{-# COMPLETE
  SandboxConfig_Type_Unspecified,
  SandboxConfig_Type_Gvisor,
  SandboxConfig_Type #-}

-- | Required. The exact form of action to be taken on the master auth.
newtype SetMasterAuthRequest_Action = SetMasterAuthRequest_Action { fromSetMasterAuthRequest_Action :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Operation is unknown and will error out.
pattern SetMasterAuthRequest_Action_Unknown :: SetMasterAuthRequest_Action
pattern SetMasterAuthRequest_Action_Unknown = SetMasterAuthRequest_Action "UNKNOWN"

-- | Set the password to a user generated value.
pattern SetMasterAuthRequest_Action_SETPASSWORD :: SetMasterAuthRequest_Action
pattern SetMasterAuthRequest_Action_SETPASSWORD = SetMasterAuthRequest_Action "SET_PASSWORD"

-- | Generate a new password and set it to that.
pattern SetMasterAuthRequest_Action_GENERATEPASSWORD :: SetMasterAuthRequest_Action
pattern SetMasterAuthRequest_Action_GENERATEPASSWORD = SetMasterAuthRequest_Action "GENERATE_PASSWORD"

-- | Set the username. If an empty username is provided, basic authentication is disabled for the cluster. If a non-empty username is provided, basic authentication is enabled, with either a provided password or a generated one.
pattern SetMasterAuthRequest_Action_SETUSERNAME :: SetMasterAuthRequest_Action
pattern SetMasterAuthRequest_Action_SETUSERNAME = SetMasterAuthRequest_Action "SET_USERNAME"

{-# COMPLETE
  SetMasterAuthRequest_Action_Unknown,
  SetMasterAuthRequest_Action_SETPASSWORD,
  SetMasterAuthRequest_Action_GENERATEPASSWORD,
  SetMasterAuthRequest_Action_SETUSERNAME,
  SetMasterAuthRequest_Action #-}

-- | Canonical code of the condition.
newtype StatusCondition_CanonicalCode = StatusCondition_CanonicalCode { fromStatusCondition_CanonicalCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not an error; returned on success HTTP Mapping: 200 OK
pattern StatusCondition_CanonicalCode_OK :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_OK = StatusCondition_CanonicalCode "OK"

-- | The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request
pattern StatusCondition_CanonicalCode_Cancelled :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Cancelled = StatusCondition_CanonicalCode "CANCELLED"

-- | Unknown error. For example, this error may be returned when a @Status@ value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error
pattern StatusCondition_CanonicalCode_Unknown :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Unknown = StatusCondition_CanonicalCode "UNKNOWN"

-- | The client specified an invalid argument. Note that this differs from @FAILED_PRECONDITION@. @INVALID_ARGUMENT@ indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
pattern StatusCondition_CanonicalCode_INVALIDARGUMENT :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_INVALIDARGUMENT = StatusCondition_CanonicalCode "INVALID_ARGUMENT"

-- | The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
pattern StatusCondition_CanonicalCode_DEADLINEEXCEEDED :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_DEADLINEEXCEEDED = StatusCondition_CanonicalCode "DEADLINE_EXCEEDED"

-- | Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, @NOT_FOUND@ may be used. If a request is denied for some users within a class of users, such as user-based access control, @PERMISSION_DENIED@ must be used. HTTP Mapping: 404 Not Found
pattern StatusCondition_CanonicalCode_NOTFOUND :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_NOTFOUND = StatusCondition_CanonicalCode "NOT_FOUND"

-- | The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict
pattern StatusCondition_CanonicalCode_ALREADYEXISTS :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_ALREADYEXISTS = StatusCondition_CanonicalCode "ALREADY_EXISTS"

-- | The caller does not have permission to execute the specified operation. @PERMISSION_DENIED@ must not be used for rejections caused by exhausting some resource (use @RESOURCE_EXHAUSTED@ instead for those errors). @PERMISSION_DENIED@ must not be used if the caller can not be identified (use @UNAUTHENTICATED@ instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
pattern StatusCondition_CanonicalCode_PERMISSIONDENIED :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_PERMISSIONDENIED = StatusCondition_CanonicalCode "PERMISSION_DENIED"

-- | The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized
pattern StatusCondition_CanonicalCode_Unauthenticated :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Unauthenticated = StatusCondition_CanonicalCode "UNAUTHENTICATED"

-- | Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests
pattern StatusCondition_CanonicalCode_RESOURCEEXHAUSTED :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_RESOURCEEXHAUSTED = StatusCondition_CanonicalCode "RESOURCE_EXHAUSTED"

-- | The operation was rejected because the system is not in a state required for the operation\'s execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@: (a) Use @UNAVAILABLE@ if the client can retry just the failing call. (b) Use @ABORTED@ if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use @FAILED_PRECONDITION@ if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, @FAILED_PRECONDITION@ should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request
pattern StatusCondition_CanonicalCode_FAILEDPRECONDITION :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_FAILEDPRECONDITION = StatusCondition_CanonicalCode "FAILED_PRECONDITION"

-- | The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 409 Conflict
pattern StatusCondition_CanonicalCode_Aborted :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Aborted = StatusCondition_CanonicalCode "ABORTED"

-- | The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike @INVALID_ARGUMENT@, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate @INVALID_ARGUMENT@ if asked to read at an offset that is not in the range [0,2^32-1], but it will generate @OUT_OF_RANGE@ if asked to read from an offset past the current file size. There is a fair bit of overlap between @FAILED_PRECONDITION@ and @OUT_OF_RANGE@. We recommend using @OUT_OF_RANGE@ (the more specific error) when it applies so that callers who are iterating through a space can easily look for an @OUT_OF_RANGE@ error to detect when they are done. HTTP Mapping: 400 Bad Request
pattern StatusCondition_CanonicalCode_OUTOFRANGE :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_OUTOFRANGE = StatusCondition_CanonicalCode "OUT_OF_RANGE"

-- | The operation is not implemented or is not supported\/enabled in this service. HTTP Mapping: 501 Not Implemented
pattern StatusCondition_CanonicalCode_Unimplemented :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Unimplemented = StatusCondition_CanonicalCode "UNIMPLEMENTED"

-- | Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error
pattern StatusCondition_CanonicalCode_Internal :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Internal = StatusCondition_CanonicalCode "INTERNAL"

-- | The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between @FAILED_PRECONDITION@, @ABORTED@, and @UNAVAILABLE@. HTTP Mapping: 503 Service Unavailable
pattern StatusCondition_CanonicalCode_Unavailable :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_Unavailable = StatusCondition_CanonicalCode "UNAVAILABLE"

-- | Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error
pattern StatusCondition_CanonicalCode_DATALOSS :: StatusCondition_CanonicalCode
pattern StatusCondition_CanonicalCode_DATALOSS = StatusCondition_CanonicalCode "DATA_LOSS"

{-# COMPLETE
  StatusCondition_CanonicalCode_OK,
  StatusCondition_CanonicalCode_Cancelled,
  StatusCondition_CanonicalCode_Unknown,
  StatusCondition_CanonicalCode_INVALIDARGUMENT,
  StatusCondition_CanonicalCode_DEADLINEEXCEEDED,
  StatusCondition_CanonicalCode_NOTFOUND,
  StatusCondition_CanonicalCode_ALREADYEXISTS,
  StatusCondition_CanonicalCode_PERMISSIONDENIED,
  StatusCondition_CanonicalCode_Unauthenticated,
  StatusCondition_CanonicalCode_RESOURCEEXHAUSTED,
  StatusCondition_CanonicalCode_FAILEDPRECONDITION,
  StatusCondition_CanonicalCode_Aborted,
  StatusCondition_CanonicalCode_OUTOFRANGE,
  StatusCondition_CanonicalCode_Unimplemented,
  StatusCondition_CanonicalCode_Internal,
  StatusCondition_CanonicalCode_Unavailable,
  StatusCondition_CanonicalCode_DATALOSS,
  StatusCondition_CanonicalCode #-}

-- | Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
newtype StatusCondition_Code = StatusCondition_Code { fromStatusCondition_Code :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | UNKNOWN indicates a generic condition.
pattern StatusCondition_Code_Unknown :: StatusCondition_Code
pattern StatusCondition_Code_Unknown = StatusCondition_Code "UNKNOWN"

-- | GCE_STOCKOUT indicates that Google Compute Engine resources are temporarily unavailable.
pattern StatusCondition_Code_GCESTOCKOUT :: StatusCondition_Code
pattern StatusCondition_Code_GCESTOCKOUT = StatusCondition_Code "GCE_STOCKOUT"

-- | GKE/SERVICE/ACCOUNT_DELETED indicates that the user deleted their robot service account.
pattern StatusCondition_Code_GKESERVICEACCOUNTDELETED :: StatusCondition_Code
pattern StatusCondition_Code_GKESERVICEACCOUNTDELETED = StatusCondition_Code "GKE_SERVICE_ACCOUNT_DELETED"

-- | Google Compute Engine quota was exceeded.
pattern StatusCondition_Code_GCEQUOTAEXCEEDED :: StatusCondition_Code
pattern StatusCondition_Code_GCEQUOTAEXCEEDED = StatusCondition_Code "GCE_QUOTA_EXCEEDED"

-- | Cluster state was manually changed by an SRE due to a system logic error.
pattern StatusCondition_Code_SETBYOPERATOR :: StatusCondition_Code
pattern StatusCondition_Code_SETBYOPERATOR = StatusCondition_Code "SET_BY_OPERATOR"

-- | Unable to perform an encrypt operation against the CloudKMS key used for etcd level encryption.
pattern StatusCondition_Code_CLOUDKMSKEYERROR :: StatusCondition_Code
pattern StatusCondition_Code_CLOUDKMSKEYERROR = StatusCondition_Code "CLOUD_KMS_KEY_ERROR"

-- | Cluster CA is expiring soon.
pattern StatusCondition_Code_CAEXPIRING :: StatusCondition_Code
pattern StatusCondition_Code_CAEXPIRING = StatusCondition_Code "CA_EXPIRING"

{-# COMPLETE
  StatusCondition_Code_Unknown,
  StatusCondition_Code_GCESTOCKOUT,
  StatusCondition_Code_GKESERVICEACCOUNTDELETED,
  StatusCondition_Code_GCEQUOTAEXCEEDED,
  StatusCondition_Code_SETBYOPERATOR,
  StatusCondition_Code_CLOUDKMSKEYERROR,
  StatusCondition_Code_CAEXPIRING,
  StatusCondition_Code #-}

-- | The resource type of the release version.
newtype UpgradeAvailableEvent_ResourceType = UpgradeAvailableEvent_ResourceType { fromUpgradeAvailableEvent_ResourceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This shouldn\'t be used.
pattern UpgradeAvailableEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED :: UpgradeAvailableEvent_ResourceType
pattern UpgradeAvailableEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED = UpgradeAvailableEvent_ResourceType "UPGRADE_RESOURCE_TYPE_UNSPECIFIED"

-- | Master \/ control plane
pattern UpgradeAvailableEvent_ResourceType_Master :: UpgradeAvailableEvent_ResourceType
pattern UpgradeAvailableEvent_ResourceType_Master = UpgradeAvailableEvent_ResourceType "MASTER"

-- | Node pool
pattern UpgradeAvailableEvent_ResourceType_NODEPOOL :: UpgradeAvailableEvent_ResourceType
pattern UpgradeAvailableEvent_ResourceType_NODEPOOL = UpgradeAvailableEvent_ResourceType "NODE_POOL"

{-# COMPLETE
  UpgradeAvailableEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED,
  UpgradeAvailableEvent_ResourceType_Master,
  UpgradeAvailableEvent_ResourceType_NODEPOOL,
  UpgradeAvailableEvent_ResourceType #-}

-- | The resource type that is upgrading.
newtype UpgradeEvent_ResourceType = UpgradeEvent_ResourceType { fromUpgradeEvent_ResourceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value. This shouldn\'t be used.
pattern UpgradeEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED :: UpgradeEvent_ResourceType
pattern UpgradeEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED = UpgradeEvent_ResourceType "UPGRADE_RESOURCE_TYPE_UNSPECIFIED"

-- | Master \/ control plane
pattern UpgradeEvent_ResourceType_Master :: UpgradeEvent_ResourceType
pattern UpgradeEvent_ResourceType_Master = UpgradeEvent_ResourceType "MASTER"

-- | Node pool
pattern UpgradeEvent_ResourceType_NODEPOOL :: UpgradeEvent_ResourceType
pattern UpgradeEvent_ResourceType_NODEPOOL = UpgradeEvent_ResourceType "NODE_POOL"

{-# COMPLETE
  UpgradeEvent_ResourceType_UPGRADERESOURCETYPEUNSPECIFIED,
  UpgradeEvent_ResourceType_Master,
  UpgradeEvent_ResourceType_NODEPOOL,
  UpgradeEvent_ResourceType #-}

-- | This field is to determine the status of the secondary range programmably.
newtype UsableSubnetworkSecondaryRange_Status = UsableSubnetworkSecondaryRange_Status { fromUsableSubnetworkSecondaryRange_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | UNKNOWN is the zero value of the Status enum. It\'s not a valid status.
pattern UsableSubnetworkSecondaryRange_Status_Unknown :: UsableSubnetworkSecondaryRange_Status
pattern UsableSubnetworkSecondaryRange_Status_Unknown = UsableSubnetworkSecondaryRange_Status "UNKNOWN"

-- | UNUSED denotes that this range is unclaimed by any cluster.
pattern UsableSubnetworkSecondaryRange_Status_Unused :: UsableSubnetworkSecondaryRange_Status
pattern UsableSubnetworkSecondaryRange_Status_Unused = UsableSubnetworkSecondaryRange_Status "UNUSED"

-- | IN/USE/SERVICE denotes that this range is claimed by a cluster for services. It cannot be used for other clusters.
pattern UsableSubnetworkSecondaryRange_Status_INUSESERVICE :: UsableSubnetworkSecondaryRange_Status
pattern UsableSubnetworkSecondaryRange_Status_INUSESERVICE = UsableSubnetworkSecondaryRange_Status "IN_USE_SERVICE"

-- | IN/USE/SHAREABLE_POD denotes this range was created by the network admin and is currently claimed by a cluster for pods. It can only be used by other clusters as a pod range.
pattern UsableSubnetworkSecondaryRange_Status_INUSESHAREABLEPOD :: UsableSubnetworkSecondaryRange_Status
pattern UsableSubnetworkSecondaryRange_Status_INUSESHAREABLEPOD = UsableSubnetworkSecondaryRange_Status "IN_USE_SHAREABLE_POD"

-- | IN/USE/MANAGED_POD denotes this range was created by GKE and is claimed for pods. It cannot be used for other clusters.
pattern UsableSubnetworkSecondaryRange_Status_INUSEMANAGEDPOD :: UsableSubnetworkSecondaryRange_Status
pattern UsableSubnetworkSecondaryRange_Status_INUSEMANAGEDPOD = UsableSubnetworkSecondaryRange_Status "IN_USE_MANAGED_POD"

{-# COMPLETE
  UsableSubnetworkSecondaryRange_Status_Unknown,
  UsableSubnetworkSecondaryRange_Status_Unused,
  UsableSubnetworkSecondaryRange_Status_INUSESERVICE,
  UsableSubnetworkSecondaryRange_Status_INUSESHAREABLEPOD,
  UsableSubnetworkSecondaryRange_Status_INUSEMANAGEDPOD,
  UsableSubnetworkSecondaryRange_Status #-}

-- | Mode is the configuration for how to expose metadata to workloads running on the node pool.
newtype WorkloadMetadataConfig_Mode = WorkloadMetadataConfig_Mode { fromWorkloadMetadataConfig_Mode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not set.
pattern WorkloadMetadataConfig_Mode_MODEUNSPECIFIED :: WorkloadMetadataConfig_Mode
pattern WorkloadMetadataConfig_Mode_MODEUNSPECIFIED = WorkloadMetadataConfig_Mode "MODE_UNSPECIFIED"

-- | Expose all Compute Engine metadata to pods.
pattern WorkloadMetadataConfig_Mode_GCEMETADATA :: WorkloadMetadataConfig_Mode
pattern WorkloadMetadataConfig_Mode_GCEMETADATA = WorkloadMetadataConfig_Mode "GCE_METADATA"

-- | Run the GKE Metadata Server on this node. The GKE Metadata Server exposes a metadata API to workloads that is compatible with the V1 Compute Metadata APIs exposed by the Compute Engine and App Engine Metadata Servers. This feature can only be enabled if Workload Identity is enabled at the cluster level.
pattern WorkloadMetadataConfig_Mode_GKEMETADATA :: WorkloadMetadataConfig_Mode
pattern WorkloadMetadataConfig_Mode_GKEMETADATA = WorkloadMetadataConfig_Mode "GKE_METADATA"

{-# COMPLETE
  WorkloadMetadataConfig_Mode_MODEUNSPECIFIED,
  WorkloadMetadataConfig_Mode_GCEMETADATA,
  WorkloadMetadataConfig_Mode_GKEMETADATA,
  WorkloadMetadataConfig_Mode #-}
