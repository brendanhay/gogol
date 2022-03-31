{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Compute.Types
  ( -- * Configuration
    computeService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Compute'FullControl,
    Compute'Readonly,
    Devstorage'FullControl,
    Devstorage'ReadOnly,
    Devstorage'ReadWrite,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- ** AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- ** AcceleratorTypeAggregatedList
    AcceleratorTypeAggregatedList (..),
    newAcceleratorTypeAggregatedList,

    -- ** AcceleratorTypeAggregatedList_Items
    AcceleratorTypeAggregatedList_Items (..),
    newAcceleratorTypeAggregatedList_Items,

    -- ** AcceleratorTypeAggregatedList_Warning
    AcceleratorTypeAggregatedList_Warning (..),
    newAcceleratorTypeAggregatedList_Warning,

    -- ** AcceleratorTypeAggregatedList_Warning_Code
    AcceleratorTypeAggregatedList_Warning_Code (..),

    -- ** AcceleratorTypeAggregatedList_Warning_DataItem
    AcceleratorTypeAggregatedList_Warning_DataItem (..),
    newAcceleratorTypeAggregatedList_Warning_DataItem,

    -- ** AcceleratorTypeList
    AcceleratorTypeList (..),
    newAcceleratorTypeList,

    -- ** AcceleratorTypeList_Warning
    AcceleratorTypeList_Warning (..),
    newAcceleratorTypeList_Warning,

    -- ** AcceleratorTypeList_Warning_Code
    AcceleratorTypeList_Warning_Code (..),

    -- ** AcceleratorTypeList_Warning_DataItem
    AcceleratorTypeList_Warning_DataItem (..),
    newAcceleratorTypeList_Warning_DataItem,

    -- ** AcceleratorTypesScopedList
    AcceleratorTypesScopedList (..),
    newAcceleratorTypesScopedList,

    -- ** AcceleratorTypesScopedList_Warning
    AcceleratorTypesScopedList_Warning (..),
    newAcceleratorTypesScopedList_Warning,

    -- ** AcceleratorTypesScopedList_Warning_Code
    AcceleratorTypesScopedList_Warning_Code (..),

    -- ** AcceleratorTypesScopedList_Warning_DataItem
    AcceleratorTypesScopedList_Warning_DataItem (..),
    newAcceleratorTypesScopedList_Warning_DataItem,

    -- ** AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- ** AccessConfig_NetworkTier
    AccessConfig_NetworkTier (..),

    -- ** AccessConfig_Type
    AccessConfig_Type (..),

    -- ** Address
    Address (..),
    newAddress,

    -- ** Address_AddressType
    Address_AddressType (..),

    -- ** Address_IpVersion
    Address_IpVersion (..),

    -- ** Address_NetworkTier
    Address_NetworkTier (..),

    -- ** Address_Purpose
    Address_Purpose (..),

    -- ** Address_Status
    Address_Status (..),

    -- ** AddressAggregatedList
    AddressAggregatedList (..),
    newAddressAggregatedList,

    -- ** AddressAggregatedList_Items
    AddressAggregatedList_Items (..),
    newAddressAggregatedList_Items,

    -- ** AddressAggregatedList_Warning
    AddressAggregatedList_Warning (..),
    newAddressAggregatedList_Warning,

    -- ** AddressAggregatedList_Warning_Code
    AddressAggregatedList_Warning_Code (..),

    -- ** AddressAggregatedList_Warning_DataItem
    AddressAggregatedList_Warning_DataItem (..),
    newAddressAggregatedList_Warning_DataItem,

    -- ** AddressList
    AddressList (..),
    newAddressList,

    -- ** AddressList_Warning
    AddressList_Warning (..),
    newAddressList_Warning,

    -- ** AddressList_Warning_Code
    AddressList_Warning_Code (..),

    -- ** AddressList_Warning_DataItem
    AddressList_Warning_DataItem (..),
    newAddressList_Warning_DataItem,

    -- ** AddressesScopedList
    AddressesScopedList (..),
    newAddressesScopedList,

    -- ** AddressesScopedList_Warning
    AddressesScopedList_Warning (..),
    newAddressesScopedList_Warning,

    -- ** AddressesScopedList_Warning_Code
    AddressesScopedList_Warning_Code (..),

    -- ** AddressesScopedList_Warning_DataItem
    AddressesScopedList_Warning_DataItem (..),
    newAddressesScopedList_Warning_DataItem,

    -- ** AdvancedMachineFeatures
    AdvancedMachineFeatures (..),
    newAdvancedMachineFeatures,

    -- ** AliasIpRange
    AliasIpRange (..),
    newAliasIpRange,

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk (..),
    newAllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk,

    -- ** AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk_Interface
    AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk_Interface (..),

    -- ** AllocationSpecificSKUAllocationReservedInstanceProperties
    AllocationSpecificSKUAllocationReservedInstanceProperties (..),
    newAllocationSpecificSKUAllocationReservedInstanceProperties,

    -- ** AllocationSpecificSKUReservation
    AllocationSpecificSKUReservation (..),
    newAllocationSpecificSKUReservation,

    -- ** AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- ** AttachedDisk_Interface
    AttachedDisk_Interface (..),

    -- ** AttachedDisk_Mode
    AttachedDisk_Mode (..),

    -- ** AttachedDisk_Type
    AttachedDisk_Type (..),

    -- ** AttachedDiskInitializeParams
    AttachedDiskInitializeParams (..),
    newAttachedDiskInitializeParams,

    -- ** AttachedDiskInitializeParams_Labels
    AttachedDiskInitializeParams_Labels (..),
    newAttachedDiskInitializeParams_Labels,

    -- ** AttachedDiskInitializeParams_OnUpdateAction
    AttachedDiskInitializeParams_OnUpdateAction (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuthorizationLoggingOptions
    AuthorizationLoggingOptions (..),
    newAuthorizationLoggingOptions,

    -- ** AuthorizationLoggingOptions_PermissionType
    AuthorizationLoggingOptions_PermissionType (..),

    -- ** Autoscaler
    Autoscaler (..),
    newAutoscaler,

    -- ** Autoscaler_ScalingScheduleStatus
    Autoscaler_ScalingScheduleStatus (..),
    newAutoscaler_ScalingScheduleStatus,

    -- ** Autoscaler_Status
    Autoscaler_Status (..),

    -- ** AutoscalerAggregatedList
    AutoscalerAggregatedList (..),
    newAutoscalerAggregatedList,

    -- ** AutoscalerAggregatedList_Items
    AutoscalerAggregatedList_Items (..),
    newAutoscalerAggregatedList_Items,

    -- ** AutoscalerAggregatedList_Warning
    AutoscalerAggregatedList_Warning (..),
    newAutoscalerAggregatedList_Warning,

    -- ** AutoscalerAggregatedList_Warning_Code
    AutoscalerAggregatedList_Warning_Code (..),

    -- ** AutoscalerAggregatedList_Warning_DataItem
    AutoscalerAggregatedList_Warning_DataItem (..),
    newAutoscalerAggregatedList_Warning_DataItem,

    -- ** AutoscalerList
    AutoscalerList (..),
    newAutoscalerList,

    -- ** AutoscalerList_Warning
    AutoscalerList_Warning (..),
    newAutoscalerList_Warning,

    -- ** AutoscalerList_Warning_Code
    AutoscalerList_Warning_Code (..),

    -- ** AutoscalerList_Warning_DataItem
    AutoscalerList_Warning_DataItem (..),
    newAutoscalerList_Warning_DataItem,

    -- ** AutoscalerStatusDetails
    AutoscalerStatusDetails (..),
    newAutoscalerStatusDetails,

    -- ** AutoscalerStatusDetails_Type
    AutoscalerStatusDetails_Type (..),

    -- ** AutoscalersScopedList
    AutoscalersScopedList (..),
    newAutoscalersScopedList,

    -- ** AutoscalersScopedList_Warning
    AutoscalersScopedList_Warning (..),
    newAutoscalersScopedList_Warning,

    -- ** AutoscalersScopedList_Warning_Code
    AutoscalersScopedList_Warning_Code (..),

    -- ** AutoscalersScopedList_Warning_DataItem
    AutoscalersScopedList_Warning_DataItem (..),
    newAutoscalersScopedList_Warning_DataItem,

    -- ** AutoscalingPolicy
    AutoscalingPolicy (..),
    newAutoscalingPolicy,

    -- ** AutoscalingPolicy_Mode
    AutoscalingPolicy_Mode (..),

    -- ** AutoscalingPolicy_ScalingSchedules
    AutoscalingPolicy_ScalingSchedules (..),
    newAutoscalingPolicy_ScalingSchedules,

    -- ** AutoscalingPolicyCpuUtilization
    AutoscalingPolicyCpuUtilization (..),
    newAutoscalingPolicyCpuUtilization,

    -- ** AutoscalingPolicyCpuUtilization_PredictiveMethod
    AutoscalingPolicyCpuUtilization_PredictiveMethod (..),

    -- ** AutoscalingPolicyCustomMetricUtilization
    AutoscalingPolicyCustomMetricUtilization (..),
    newAutoscalingPolicyCustomMetricUtilization,

    -- ** AutoscalingPolicyCustomMetricUtilization_UtilizationTargetType
    AutoscalingPolicyCustomMetricUtilization_UtilizationTargetType (..),

    -- ** AutoscalingPolicyLoadBalancingUtilization
    AutoscalingPolicyLoadBalancingUtilization (..),
    newAutoscalingPolicyLoadBalancingUtilization,

    -- ** AutoscalingPolicyScaleInControl
    AutoscalingPolicyScaleInControl (..),
    newAutoscalingPolicyScaleInControl,

    -- ** AutoscalingPolicyScalingSchedule
    AutoscalingPolicyScalingSchedule (..),
    newAutoscalingPolicyScalingSchedule,

    -- ** Backend
    Backend (..),
    newBackend,

    -- ** Backend_BalancingMode
    Backend_BalancingMode (..),

    -- ** BackendBucket
    BackendBucket (..),
    newBackendBucket,

    -- ** BackendBucketCdnPolicy
    BackendBucketCdnPolicy (..),
    newBackendBucketCdnPolicy,

    -- ** BackendBucketCdnPolicy_CacheMode
    BackendBucketCdnPolicy_CacheMode (..),

    -- ** BackendBucketCdnPolicyBypassCacheOnRequestHeader
    BackendBucketCdnPolicyBypassCacheOnRequestHeader (..),
    newBackendBucketCdnPolicyBypassCacheOnRequestHeader,

    -- ** BackendBucketCdnPolicyCacheKeyPolicy
    BackendBucketCdnPolicyCacheKeyPolicy (..),
    newBackendBucketCdnPolicyCacheKeyPolicy,

    -- ** BackendBucketCdnPolicyNegativeCachingPolicy
    BackendBucketCdnPolicyNegativeCachingPolicy (..),
    newBackendBucketCdnPolicyNegativeCachingPolicy,

    -- ** BackendBucketList
    BackendBucketList (..),
    newBackendBucketList,

    -- ** BackendBucketList_Warning
    BackendBucketList_Warning (..),
    newBackendBucketList_Warning,

    -- ** BackendBucketList_Warning_Code
    BackendBucketList_Warning_Code (..),

    -- ** BackendBucketList_Warning_DataItem
    BackendBucketList_Warning_DataItem (..),
    newBackendBucketList_Warning_DataItem,

    -- ** BackendService
    BackendService (..),
    newBackendService,

    -- ** BackendService_LoadBalancingScheme
    BackendService_LoadBalancingScheme (..),

    -- ** BackendService_LocalityLbPolicy
    BackendService_LocalityLbPolicy (..),

    -- ** BackendService_Protocol
    BackendService_Protocol (..),

    -- ** BackendService_SessionAffinity
    BackendService_SessionAffinity (..),

    -- ** BackendServiceAggregatedList
    BackendServiceAggregatedList (..),
    newBackendServiceAggregatedList,

    -- ** BackendServiceAggregatedList_Items
    BackendServiceAggregatedList_Items (..),
    newBackendServiceAggregatedList_Items,

    -- ** BackendServiceAggregatedList_Warning
    BackendServiceAggregatedList_Warning (..),
    newBackendServiceAggregatedList_Warning,

    -- ** BackendServiceAggregatedList_Warning_Code
    BackendServiceAggregatedList_Warning_Code (..),

    -- ** BackendServiceAggregatedList_Warning_DataItem
    BackendServiceAggregatedList_Warning_DataItem (..),
    newBackendServiceAggregatedList_Warning_DataItem,

    -- ** BackendServiceCdnPolicy
    BackendServiceCdnPolicy (..),
    newBackendServiceCdnPolicy,

    -- ** BackendServiceCdnPolicy_CacheMode
    BackendServiceCdnPolicy_CacheMode (..),

    -- ** BackendServiceCdnPolicyBypassCacheOnRequestHeader
    BackendServiceCdnPolicyBypassCacheOnRequestHeader (..),
    newBackendServiceCdnPolicyBypassCacheOnRequestHeader,

    -- ** BackendServiceCdnPolicyNegativeCachingPolicy
    BackendServiceCdnPolicyNegativeCachingPolicy (..),
    newBackendServiceCdnPolicyNegativeCachingPolicy,

    -- ** BackendServiceConnectionTrackingPolicy
    BackendServiceConnectionTrackingPolicy (..),
    newBackendServiceConnectionTrackingPolicy,

    -- ** BackendServiceConnectionTrackingPolicy_ConnectionPersistenceOnUnhealthyBackends
    BackendServiceConnectionTrackingPolicy_ConnectionPersistenceOnUnhealthyBackends (..),

    -- ** BackendServiceConnectionTrackingPolicy_TrackingMode
    BackendServiceConnectionTrackingPolicy_TrackingMode (..),

    -- ** BackendServiceFailoverPolicy
    BackendServiceFailoverPolicy (..),
    newBackendServiceFailoverPolicy,

    -- ** BackendServiceGroupHealth
    BackendServiceGroupHealth (..),
    newBackendServiceGroupHealth,

    -- ** BackendServiceGroupHealth_Annotations
    BackendServiceGroupHealth_Annotations (..),
    newBackendServiceGroupHealth_Annotations,

    -- ** BackendServiceIAP
    BackendServiceIAP (..),
    newBackendServiceIAP,

    -- ** BackendServiceList
    BackendServiceList (..),
    newBackendServiceList,

    -- ** BackendServiceList_Warning
    BackendServiceList_Warning (..),
    newBackendServiceList_Warning,

    -- ** BackendServiceList_Warning_Code
    BackendServiceList_Warning_Code (..),

    -- ** BackendServiceList_Warning_DataItem
    BackendServiceList_Warning_DataItem (..),
    newBackendServiceList_Warning_DataItem,

    -- ** BackendServiceLogConfig
    BackendServiceLogConfig (..),
    newBackendServiceLogConfig,

    -- ** BackendServiceReference
    BackendServiceReference (..),
    newBackendServiceReference,

    -- ** BackendServicesScopedList
    BackendServicesScopedList (..),
    newBackendServicesScopedList,

    -- ** BackendServicesScopedList_Warning
    BackendServicesScopedList_Warning (..),
    newBackendServicesScopedList_Warning,

    -- ** BackendServicesScopedList_Warning_Code
    BackendServicesScopedList_Warning_Code (..),

    -- ** BackendServicesScopedList_Warning_DataItem
    BackendServicesScopedList_Warning_DataItem (..),
    newBackendServicesScopedList_Warning_DataItem,

    -- ** BfdPacket
    BfdPacket (..),
    newBfdPacket,

    -- ** BfdPacket_Diagnostic
    BfdPacket_Diagnostic (..),

    -- ** BfdPacket_State
    BfdPacket_State (..),

    -- ** BfdStatus
    BfdStatus (..),
    newBfdStatus,

    -- ** BfdStatus_BfdSessionInitializationMode
    BfdStatus_BfdSessionInitializationMode (..),

    -- ** BfdStatus_LocalDiagnostic
    BfdStatus_LocalDiagnostic (..),

    -- ** BfdStatus_LocalState
    BfdStatus_LocalState (..),

    -- ** BfdStatusPacketCounts
    BfdStatusPacketCounts (..),
    newBfdStatusPacketCounts,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BulkInsertInstanceResource
    BulkInsertInstanceResource (..),
    newBulkInsertInstanceResource,

    -- ** BulkInsertInstanceResource_PerInstanceProperties
    BulkInsertInstanceResource_PerInstanceProperties (..),
    newBulkInsertInstanceResource_PerInstanceProperties,

    -- ** BulkInsertInstanceResourcePerInstanceProperties
    BulkInsertInstanceResourcePerInstanceProperties (..),
    newBulkInsertInstanceResourcePerInstanceProperties,

    -- ** CacheInvalidationRule
    CacheInvalidationRule (..),
    newCacheInvalidationRule,

    -- ** CacheKeyPolicy
    CacheKeyPolicy (..),
    newCacheKeyPolicy,

    -- ** CircuitBreakers
    CircuitBreakers (..),
    newCircuitBreakers,

    -- ** Commitment
    Commitment (..),
    newCommitment,

    -- ** Commitment_Category
    Commitment_Category (..),

    -- ** Commitment_Plan
    Commitment_Plan (..),

    -- ** Commitment_Status
    Commitment_Status (..),

    -- ** Commitment_Type
    Commitment_Type (..),

    -- ** CommitmentAggregatedList
    CommitmentAggregatedList (..),
    newCommitmentAggregatedList,

    -- ** CommitmentAggregatedList_Items
    CommitmentAggregatedList_Items (..),
    newCommitmentAggregatedList_Items,

    -- ** CommitmentAggregatedList_Warning
    CommitmentAggregatedList_Warning (..),
    newCommitmentAggregatedList_Warning,

    -- ** CommitmentAggregatedList_Warning_Code
    CommitmentAggregatedList_Warning_Code (..),

    -- ** CommitmentAggregatedList_Warning_DataItem
    CommitmentAggregatedList_Warning_DataItem (..),
    newCommitmentAggregatedList_Warning_DataItem,

    -- ** CommitmentList
    CommitmentList (..),
    newCommitmentList,

    -- ** CommitmentList_Warning
    CommitmentList_Warning (..),
    newCommitmentList_Warning,

    -- ** CommitmentList_Warning_Code
    CommitmentList_Warning_Code (..),

    -- ** CommitmentList_Warning_DataItem
    CommitmentList_Warning_DataItem (..),
    newCommitmentList_Warning_DataItem,

    -- ** CommitmentsScopedList
    CommitmentsScopedList (..),
    newCommitmentsScopedList,

    -- ** CommitmentsScopedList_Warning
    CommitmentsScopedList_Warning (..),
    newCommitmentsScopedList_Warning,

    -- ** CommitmentsScopedList_Warning_Code
    CommitmentsScopedList_Warning_Code (..),

    -- ** CommitmentsScopedList_Warning_DataItem
    CommitmentsScopedList_Warning_DataItem (..),
    newCommitmentsScopedList_Warning_DataItem,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** Condition_Iam
    Condition_Iam (..),

    -- ** Condition_Op
    Condition_Op (..),

    -- ** Condition_Sys
    Condition_Sys (..),

    -- ** ConfidentialInstanceConfig
    ConfidentialInstanceConfig (..),
    newConfidentialInstanceConfig,

    -- ** ConnectionDraining
    ConnectionDraining (..),
    newConnectionDraining,

    -- ** ConsistentHashLoadBalancerSettings
    ConsistentHashLoadBalancerSettings (..),
    newConsistentHashLoadBalancerSettings,

    -- ** ConsistentHashLoadBalancerSettingsHttpCookie
    ConsistentHashLoadBalancerSettingsHttpCookie (..),
    newConsistentHashLoadBalancerSettingsHttpCookie,

    -- ** CorsPolicy
    CorsPolicy (..),
    newCorsPolicy,

    -- ** CustomerEncryptionKey
    CustomerEncryptionKey (..),
    newCustomerEncryptionKey,

    -- ** CustomerEncryptionKeyProtectedDisk
    CustomerEncryptionKeyProtectedDisk (..),
    newCustomerEncryptionKeyProtectedDisk,

    -- ** DeprecationStatus
    DeprecationStatus (..),
    newDeprecationStatus,

    -- ** DeprecationStatus_State
    DeprecationStatus_State (..),

    -- ** Disk
    Disk (..),
    newDisk,

    -- ** Disk_Labels
    Disk_Labels (..),
    newDisk_Labels,

    -- ** Disk_Status
    Disk_Status (..),

    -- ** DiskAggregatedList
    DiskAggregatedList (..),
    newDiskAggregatedList,

    -- ** DiskAggregatedList_Items
    DiskAggregatedList_Items (..),
    newDiskAggregatedList_Items,

    -- ** DiskAggregatedList_Warning
    DiskAggregatedList_Warning (..),
    newDiskAggregatedList_Warning,

    -- ** DiskAggregatedList_Warning_Code
    DiskAggregatedList_Warning_Code (..),

    -- ** DiskAggregatedList_Warning_DataItem
    DiskAggregatedList_Warning_DataItem (..),
    newDiskAggregatedList_Warning_DataItem,

    -- ** DiskInstantiationConfig
    DiskInstantiationConfig (..),
    newDiskInstantiationConfig,

    -- ** DiskInstantiationConfig_InstantiateFrom
    DiskInstantiationConfig_InstantiateFrom (..),

    -- ** DiskList
    DiskList (..),
    newDiskList,

    -- ** DiskList_Warning
    DiskList_Warning (..),
    newDiskList_Warning,

    -- ** DiskList_Warning_Code
    DiskList_Warning_Code (..),

    -- ** DiskList_Warning_DataItem
    DiskList_Warning_DataItem (..),
    newDiskList_Warning_DataItem,

    -- ** DiskMoveRequest
    DiskMoveRequest (..),
    newDiskMoveRequest,

    -- ** DiskType
    DiskType (..),
    newDiskType,

    -- ** DiskTypeAggregatedList
    DiskTypeAggregatedList (..),
    newDiskTypeAggregatedList,

    -- ** DiskTypeAggregatedList_Items
    DiskTypeAggregatedList_Items (..),
    newDiskTypeAggregatedList_Items,

    -- ** DiskTypeAggregatedList_Warning
    DiskTypeAggregatedList_Warning (..),
    newDiskTypeAggregatedList_Warning,

    -- ** DiskTypeAggregatedList_Warning_Code
    DiskTypeAggregatedList_Warning_Code (..),

    -- ** DiskTypeAggregatedList_Warning_DataItem
    DiskTypeAggregatedList_Warning_DataItem (..),
    newDiskTypeAggregatedList_Warning_DataItem,

    -- ** DiskTypeList
    DiskTypeList (..),
    newDiskTypeList,

    -- ** DiskTypeList_Warning
    DiskTypeList_Warning (..),
    newDiskTypeList_Warning,

    -- ** DiskTypeList_Warning_Code
    DiskTypeList_Warning_Code (..),

    -- ** DiskTypeList_Warning_DataItem
    DiskTypeList_Warning_DataItem (..),
    newDiskTypeList_Warning_DataItem,

    -- ** DiskTypesScopedList
    DiskTypesScopedList (..),
    newDiskTypesScopedList,

    -- ** DiskTypesScopedList_Warning
    DiskTypesScopedList_Warning (..),
    newDiskTypesScopedList_Warning,

    -- ** DiskTypesScopedList_Warning_Code
    DiskTypesScopedList_Warning_Code (..),

    -- ** DiskTypesScopedList_Warning_DataItem
    DiskTypesScopedList_Warning_DataItem (..),
    newDiskTypesScopedList_Warning_DataItem,

    -- ** DisksAddResourcePoliciesRequest
    DisksAddResourcePoliciesRequest (..),
    newDisksAddResourcePoliciesRequest,

    -- ** DisksRemoveResourcePoliciesRequest
    DisksRemoveResourcePoliciesRequest (..),
    newDisksRemoveResourcePoliciesRequest,

    -- ** DisksResizeRequest
    DisksResizeRequest (..),
    newDisksResizeRequest,

    -- ** DisksScopedList
    DisksScopedList (..),
    newDisksScopedList,

    -- ** DisksScopedList_Warning
    DisksScopedList_Warning (..),
    newDisksScopedList_Warning,

    -- ** DisksScopedList_Warning_Code
    DisksScopedList_Warning_Code (..),

    -- ** DisksScopedList_Warning_DataItem
    DisksScopedList_Warning_DataItem (..),
    newDisksScopedList_Warning_DataItem,

    -- ** DisplayDevice
    DisplayDevice (..),
    newDisplayDevice,

    -- ** DistributionPolicy
    DistributionPolicy (..),
    newDistributionPolicy,

    -- ** DistributionPolicy_TargetShape
    DistributionPolicy_TargetShape (..),

    -- ** DistributionPolicyZoneConfiguration
    DistributionPolicyZoneConfiguration (..),
    newDistributionPolicyZoneConfiguration,

    -- ** Duration
    Duration (..),
    newDuration,

    -- ** ExchangedPeeringRoute
    ExchangedPeeringRoute (..),
    newExchangedPeeringRoute,

    -- ** ExchangedPeeringRoute_Type
    ExchangedPeeringRoute_Type (..),

    -- ** ExchangedPeeringRoutesList
    ExchangedPeeringRoutesList (..),
    newExchangedPeeringRoutesList,

    -- ** ExchangedPeeringRoutesList_Warning
    ExchangedPeeringRoutesList_Warning (..),
    newExchangedPeeringRoutesList_Warning,

    -- ** ExchangedPeeringRoutesList_Warning_Code
    ExchangedPeeringRoutesList_Warning_Code (..),

    -- ** ExchangedPeeringRoutesList_Warning_DataItem
    ExchangedPeeringRoutesList_Warning_DataItem (..),
    newExchangedPeeringRoutesList_Warning_DataItem,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ExternalVpnGateway
    ExternalVpnGateway (..),
    newExternalVpnGateway,

    -- ** ExternalVpnGateway_Labels
    ExternalVpnGateway_Labels (..),
    newExternalVpnGateway_Labels,

    -- ** ExternalVpnGateway_RedundancyType
    ExternalVpnGateway_RedundancyType (..),

    -- ** ExternalVpnGatewayInterface
    ExternalVpnGatewayInterface (..),
    newExternalVpnGatewayInterface,

    -- ** ExternalVpnGatewayList
    ExternalVpnGatewayList (..),
    newExternalVpnGatewayList,

    -- ** ExternalVpnGatewayList_Warning
    ExternalVpnGatewayList_Warning (..),
    newExternalVpnGatewayList_Warning,

    -- ** ExternalVpnGatewayList_Warning_Code
    ExternalVpnGatewayList_Warning_Code (..),

    -- ** ExternalVpnGatewayList_Warning_DataItem
    ExternalVpnGatewayList_Warning_DataItem (..),
    newExternalVpnGatewayList_Warning_DataItem,

    -- ** FileContentBuffer
    FileContentBuffer (..),
    newFileContentBuffer,

    -- ** FileContentBuffer_FileType
    FileContentBuffer_FileType (..),

    -- ** Firewall
    Firewall (..),
    newFirewall,

    -- ** Firewall_AllowedItem
    Firewall_AllowedItem (..),
    newFirewall_AllowedItem,

    -- ** Firewall_DeniedItem
    Firewall_DeniedItem (..),
    newFirewall_DeniedItem,

    -- ** Firewall_Direction
    Firewall_Direction (..),

    -- ** FirewallList
    FirewallList (..),
    newFirewallList,

    -- ** FirewallList_Warning
    FirewallList_Warning (..),
    newFirewallList_Warning,

    -- ** FirewallList_Warning_Code
    FirewallList_Warning_Code (..),

    -- ** FirewallList_Warning_DataItem
    FirewallList_Warning_DataItem (..),
    newFirewallList_Warning_DataItem,

    -- ** FirewallLogConfig
    FirewallLogConfig (..),
    newFirewallLogConfig,

    -- ** FirewallLogConfig_Metadata
    FirewallLogConfig_Metadata (..),

    -- ** FirewallPoliciesListAssociationsResponse
    FirewallPoliciesListAssociationsResponse (..),
    newFirewallPoliciesListAssociationsResponse,

    -- ** FirewallPolicy
    FirewallPolicy (..),
    newFirewallPolicy,

    -- ** FirewallPolicyAssociation
    FirewallPolicyAssociation (..),
    newFirewallPolicyAssociation,

    -- ** FirewallPolicyList
    FirewallPolicyList (..),
    newFirewallPolicyList,

    -- ** FirewallPolicyList_Warning
    FirewallPolicyList_Warning (..),
    newFirewallPolicyList_Warning,

    -- ** FirewallPolicyList_Warning_Code
    FirewallPolicyList_Warning_Code (..),

    -- ** FirewallPolicyList_Warning_DataItem
    FirewallPolicyList_Warning_DataItem (..),
    newFirewallPolicyList_Warning_DataItem,

    -- ** FirewallPolicyRule
    FirewallPolicyRule (..),
    newFirewallPolicyRule,

    -- ** FirewallPolicyRule_Direction
    FirewallPolicyRule_Direction (..),

    -- ** FirewallPolicyRuleMatcher
    FirewallPolicyRuleMatcher (..),
    newFirewallPolicyRuleMatcher,

    -- ** FirewallPolicyRuleMatcherLayer4Config
    FirewallPolicyRuleMatcherLayer4Config (..),
    newFirewallPolicyRuleMatcherLayer4Config,

    -- ** FirewallPolicyRuleSecureTag
    FirewallPolicyRuleSecureTag (..),
    newFirewallPolicyRuleSecureTag,

    -- ** FirewallPolicyRuleSecureTag_State
    FirewallPolicyRuleSecureTag_State (..),

    -- ** FixedOrPercent
    FixedOrPercent (..),
    newFixedOrPercent,

    -- ** ForwardingRule
    ForwardingRule (..),
    newForwardingRule,

    -- ** ForwardingRule_IPProtocol
    ForwardingRule_IPProtocol (..),

    -- ** ForwardingRule_IpVersion
    ForwardingRule_IpVersion (..),

    -- ** ForwardingRule_Labels
    ForwardingRule_Labels (..),
    newForwardingRule_Labels,

    -- ** ForwardingRule_LoadBalancingScheme
    ForwardingRule_LoadBalancingScheme (..),

    -- ** ForwardingRule_NetworkTier
    ForwardingRule_NetworkTier (..),

    -- ** ForwardingRule_PscConnectionStatus
    ForwardingRule_PscConnectionStatus (..),

    -- ** ForwardingRuleAggregatedList
    ForwardingRuleAggregatedList (..),
    newForwardingRuleAggregatedList,

    -- ** ForwardingRuleAggregatedList_Items
    ForwardingRuleAggregatedList_Items (..),
    newForwardingRuleAggregatedList_Items,

    -- ** ForwardingRuleAggregatedList_Warning
    ForwardingRuleAggregatedList_Warning (..),
    newForwardingRuleAggregatedList_Warning,

    -- ** ForwardingRuleAggregatedList_Warning_Code
    ForwardingRuleAggregatedList_Warning_Code (..),

    -- ** ForwardingRuleAggregatedList_Warning_DataItem
    ForwardingRuleAggregatedList_Warning_DataItem (..),
    newForwardingRuleAggregatedList_Warning_DataItem,

    -- ** ForwardingRuleList
    ForwardingRuleList (..),
    newForwardingRuleList,

    -- ** ForwardingRuleList_Warning
    ForwardingRuleList_Warning (..),
    newForwardingRuleList_Warning,

    -- ** ForwardingRuleList_Warning_Code
    ForwardingRuleList_Warning_Code (..),

    -- ** ForwardingRuleList_Warning_DataItem
    ForwardingRuleList_Warning_DataItem (..),
    newForwardingRuleList_Warning_DataItem,

    -- ** ForwardingRuleReference
    ForwardingRuleReference (..),
    newForwardingRuleReference,

    -- ** ForwardingRuleServiceDirectoryRegistration
    ForwardingRuleServiceDirectoryRegistration (..),
    newForwardingRuleServiceDirectoryRegistration,

    -- ** ForwardingRulesScopedList
    ForwardingRulesScopedList (..),
    newForwardingRulesScopedList,

    -- ** ForwardingRulesScopedList_Warning
    ForwardingRulesScopedList_Warning (..),
    newForwardingRulesScopedList_Warning,

    -- ** ForwardingRulesScopedList_Warning_Code
    ForwardingRulesScopedList_Warning_Code (..),

    -- ** ForwardingRulesScopedList_Warning_DataItem
    ForwardingRulesScopedList_Warning_DataItem (..),
    newForwardingRulesScopedList_Warning_DataItem,

    -- ** GRPCHealthCheck
    GRPCHealthCheck (..),
    newGRPCHealthCheck,

    -- ** GRPCHealthCheck_PortSpecification
    GRPCHealthCheck_PortSpecification (..),

    -- ** GlobalNetworkEndpointGroupsAttachEndpointsRequest
    GlobalNetworkEndpointGroupsAttachEndpointsRequest (..),
    newGlobalNetworkEndpointGroupsAttachEndpointsRequest,

    -- ** GlobalNetworkEndpointGroupsDetachEndpointsRequest
    GlobalNetworkEndpointGroupsDetachEndpointsRequest (..),
    newGlobalNetworkEndpointGroupsDetachEndpointsRequest,

    -- ** GlobalOrganizationSetPolicyRequest
    GlobalOrganizationSetPolicyRequest (..),
    newGlobalOrganizationSetPolicyRequest,

    -- ** GlobalSetLabelsRequest
    GlobalSetLabelsRequest (..),
    newGlobalSetLabelsRequest,

    -- ** GlobalSetLabelsRequest_Labels
    GlobalSetLabelsRequest_Labels (..),
    newGlobalSetLabelsRequest_Labels,

    -- ** GlobalSetPolicyRequest
    GlobalSetPolicyRequest (..),
    newGlobalSetPolicyRequest,

    -- ** GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- ** GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- ** GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

    -- ** GuestOsFeature
    GuestOsFeature (..),
    newGuestOsFeature,

    -- ** GuestOsFeature_Type
    GuestOsFeature_Type (..),

    -- ** HTTP2HealthCheck
    HTTP2HealthCheck (..),
    newHTTP2HealthCheck,

    -- ** HTTP2HealthCheck_PortSpecification
    HTTP2HealthCheck_PortSpecification (..),

    -- ** HTTP2HealthCheck_ProxyHeader
    HTTP2HealthCheck_ProxyHeader (..),

    -- ** HTTPHealthCheck
    HTTPHealthCheck (..),
    newHTTPHealthCheck,

    -- ** HTTPHealthCheck_PortSpecification
    HTTPHealthCheck_PortSpecification (..),

    -- ** HTTPHealthCheck_ProxyHeader
    HTTPHealthCheck_ProxyHeader (..),

    -- ** HTTPSHealthCheck
    HTTPSHealthCheck (..),
    newHTTPSHealthCheck,

    -- ** HTTPSHealthCheck_PortSpecification
    HTTPSHealthCheck_PortSpecification (..),

    -- ** HTTPSHealthCheck_ProxyHeader
    HTTPSHealthCheck_ProxyHeader (..),

    -- ** HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- ** HealthCheck_Type
    HealthCheck_Type (..),

    -- ** HealthCheckList
    HealthCheckList (..),
    newHealthCheckList,

    -- ** HealthCheckList_Warning
    HealthCheckList_Warning (..),
    newHealthCheckList_Warning,

    -- ** HealthCheckList_Warning_Code
    HealthCheckList_Warning_Code (..),

    -- ** HealthCheckList_Warning_DataItem
    HealthCheckList_Warning_DataItem (..),
    newHealthCheckList_Warning_DataItem,

    -- ** HealthCheckLogConfig
    HealthCheckLogConfig (..),
    newHealthCheckLogConfig,

    -- ** HealthCheckReference
    HealthCheckReference (..),
    newHealthCheckReference,

    -- ** HealthCheckService
    HealthCheckService (..),
    newHealthCheckService,

    -- ** HealthCheckService_HealthStatusAggregationPolicy
    HealthCheckService_HealthStatusAggregationPolicy (..),

    -- ** HealthCheckServiceReference
    HealthCheckServiceReference (..),
    newHealthCheckServiceReference,

    -- ** HealthCheckServicesList
    HealthCheckServicesList (..),
    newHealthCheckServicesList,

    -- ** HealthCheckServicesList_Warning
    HealthCheckServicesList_Warning (..),
    newHealthCheckServicesList_Warning,

    -- ** HealthCheckServicesList_Warning_Code
    HealthCheckServicesList_Warning_Code (..),

    -- ** HealthCheckServicesList_Warning_DataItem
    HealthCheckServicesList_Warning_DataItem (..),
    newHealthCheckServicesList_Warning_DataItem,

    -- ** HealthChecksAggregatedList
    HealthChecksAggregatedList (..),
    newHealthChecksAggregatedList,

    -- ** HealthChecksAggregatedList_Items
    HealthChecksAggregatedList_Items (..),
    newHealthChecksAggregatedList_Items,

    -- ** HealthChecksAggregatedList_Warning
    HealthChecksAggregatedList_Warning (..),
    newHealthChecksAggregatedList_Warning,

    -- ** HealthChecksAggregatedList_Warning_Code
    HealthChecksAggregatedList_Warning_Code (..),

    -- ** HealthChecksAggregatedList_Warning_DataItem
    HealthChecksAggregatedList_Warning_DataItem (..),
    newHealthChecksAggregatedList_Warning_DataItem,

    -- ** HealthChecksScopedList
    HealthChecksScopedList (..),
    newHealthChecksScopedList,

    -- ** HealthChecksScopedList_Warning
    HealthChecksScopedList_Warning (..),
    newHealthChecksScopedList_Warning,

    -- ** HealthChecksScopedList_Warning_Code
    HealthChecksScopedList_Warning_Code (..),

    -- ** HealthChecksScopedList_Warning_DataItem
    HealthChecksScopedList_Warning_DataItem (..),
    newHealthChecksScopedList_Warning_DataItem,

    -- ** HealthStatus
    HealthStatus (..),
    newHealthStatus,

    -- ** HealthStatus_Annotations
    HealthStatus_Annotations (..),
    newHealthStatus_Annotations,

    -- ** HealthStatus_HealthState
    HealthStatus_HealthState (..),

    -- ** HealthStatus_WeightError
    HealthStatus_WeightError (..),

    -- ** HealthStatusForNetworkEndpoint
    HealthStatusForNetworkEndpoint (..),
    newHealthStatusForNetworkEndpoint,

    -- ** HealthStatusForNetworkEndpoint_HealthState
    HealthStatusForNetworkEndpoint_HealthState (..),

    -- ** HostRule
    HostRule (..),
    newHostRule,

    -- ** HttpFaultAbort
    HttpFaultAbort (..),
    newHttpFaultAbort,

    -- ** HttpFaultDelay
    HttpFaultDelay (..),
    newHttpFaultDelay,

    -- ** HttpFaultInjection
    HttpFaultInjection (..),
    newHttpFaultInjection,

    -- ** HttpHeaderAction
    HttpHeaderAction (..),
    newHttpHeaderAction,

    -- ** HttpHeaderMatch
    HttpHeaderMatch (..),
    newHttpHeaderMatch,

    -- ** HttpHeaderOption
    HttpHeaderOption (..),
    newHttpHeaderOption,

    -- ** HttpHealthCheck
    HttpHealthCheck (..),
    newHttpHealthCheck,

    -- ** HttpHealthCheckList
    HttpHealthCheckList (..),
    newHttpHealthCheckList,

    -- ** HttpHealthCheckList_Warning
    HttpHealthCheckList_Warning (..),
    newHttpHealthCheckList_Warning,

    -- ** HttpHealthCheckList_Warning_Code
    HttpHealthCheckList_Warning_Code (..),

    -- ** HttpHealthCheckList_Warning_DataItem
    HttpHealthCheckList_Warning_DataItem (..),
    newHttpHealthCheckList_Warning_DataItem,

    -- ** HttpQueryParameterMatch
    HttpQueryParameterMatch (..),
    newHttpQueryParameterMatch,

    -- ** HttpRedirectAction
    HttpRedirectAction (..),
    newHttpRedirectAction,

    -- ** HttpRedirectAction_RedirectResponseCode
    HttpRedirectAction_RedirectResponseCode (..),

    -- ** HttpRetryPolicy
    HttpRetryPolicy (..),
    newHttpRetryPolicy,

    -- ** HttpRouteAction
    HttpRouteAction (..),
    newHttpRouteAction,

    -- ** HttpRouteRule
    HttpRouteRule (..),
    newHttpRouteRule,

    -- ** HttpRouteRuleMatch
    HttpRouteRuleMatch (..),
    newHttpRouteRuleMatch,

    -- ** HttpsHealthCheck
    HttpsHealthCheck (..),
    newHttpsHealthCheck,

    -- ** HttpsHealthCheckList
    HttpsHealthCheckList (..),
    newHttpsHealthCheckList,

    -- ** HttpsHealthCheckList_Warning
    HttpsHealthCheckList_Warning (..),
    newHttpsHealthCheckList_Warning,

    -- ** HttpsHealthCheckList_Warning_Code
    HttpsHealthCheckList_Warning_Code (..),

    -- ** HttpsHealthCheckList_Warning_DataItem
    HttpsHealthCheckList_Warning_DataItem (..),
    newHttpsHealthCheckList_Warning_DataItem,

    -- ** Image
    Image (..),
    newImage,

    -- ** Image_Labels
    Image_Labels (..),
    newImage_Labels,

    -- ** Image_RawDisk
    Image_RawDisk (..),
    newImage_RawDisk,

    -- ** Image_RawDisk_ContainerType
    Image_RawDisk_ContainerType (..),

    -- ** Image_SourceType
    Image_SourceType (..),

    -- ** Image_Status
    Image_Status (..),

    -- ** ImageFamilyView
    ImageFamilyView (..),
    newImageFamilyView,

    -- ** ImageList
    ImageList (..),
    newImageList,

    -- ** ImageList_Warning
    ImageList_Warning (..),
    newImageList_Warning,

    -- ** ImageList_Warning_Code
    ImageList_Warning_Code (..),

    -- ** ImageList_Warning_DataItem
    ImageList_Warning_DataItem (..),
    newImageList_Warning_DataItem,

    -- ** InitialStateConfig
    InitialStateConfig (..),
    newInitialStateConfig,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_PrivateIpv6GoogleAccess
    Instance_PrivateIpv6GoogleAccess (..),

    -- ** Instance_Status
    Instance_Status (..),

    -- ** InstanceAggregatedList
    InstanceAggregatedList (..),
    newInstanceAggregatedList,

    -- ** InstanceAggregatedList_Items
    InstanceAggregatedList_Items (..),
    newInstanceAggregatedList_Items,

    -- ** InstanceAggregatedList_Warning
    InstanceAggregatedList_Warning (..),
    newInstanceAggregatedList_Warning,

    -- ** InstanceAggregatedList_Warning_Code
    InstanceAggregatedList_Warning_Code (..),

    -- ** InstanceAggregatedList_Warning_DataItem
    InstanceAggregatedList_Warning_DataItem (..),
    newInstanceAggregatedList_Warning_DataItem,

    -- ** InstanceGroup
    InstanceGroup (..),
    newInstanceGroup,

    -- ** InstanceGroupAggregatedList
    InstanceGroupAggregatedList (..),
    newInstanceGroupAggregatedList,

    -- ** InstanceGroupAggregatedList_Items
    InstanceGroupAggregatedList_Items (..),
    newInstanceGroupAggregatedList_Items,

    -- ** InstanceGroupAggregatedList_Warning
    InstanceGroupAggregatedList_Warning (..),
    newInstanceGroupAggregatedList_Warning,

    -- ** InstanceGroupAggregatedList_Warning_Code
    InstanceGroupAggregatedList_Warning_Code (..),

    -- ** InstanceGroupAggregatedList_Warning_DataItem
    InstanceGroupAggregatedList_Warning_DataItem (..),
    newInstanceGroupAggregatedList_Warning_DataItem,

    -- ** InstanceGroupList
    InstanceGroupList (..),
    newInstanceGroupList,

    -- ** InstanceGroupList_Warning
    InstanceGroupList_Warning (..),
    newInstanceGroupList_Warning,

    -- ** InstanceGroupList_Warning_Code
    InstanceGroupList_Warning_Code (..),

    -- ** InstanceGroupList_Warning_DataItem
    InstanceGroupList_Warning_DataItem (..),
    newInstanceGroupList_Warning_DataItem,

    -- ** InstanceGroupManager
    InstanceGroupManager (..),
    newInstanceGroupManager,

    -- ** InstanceGroupManagerActionsSummary
    InstanceGroupManagerActionsSummary (..),
    newInstanceGroupManagerActionsSummary,

    -- ** InstanceGroupManagerAggregatedList
    InstanceGroupManagerAggregatedList (..),
    newInstanceGroupManagerAggregatedList,

    -- ** InstanceGroupManagerAggregatedList_Items
    InstanceGroupManagerAggregatedList_Items (..),
    newInstanceGroupManagerAggregatedList_Items,

    -- ** InstanceGroupManagerAggregatedList_Warning
    InstanceGroupManagerAggregatedList_Warning (..),
    newInstanceGroupManagerAggregatedList_Warning,

    -- ** InstanceGroupManagerAggregatedList_Warning_Code
    InstanceGroupManagerAggregatedList_Warning_Code (..),

    -- ** InstanceGroupManagerAggregatedList_Warning_DataItem
    InstanceGroupManagerAggregatedList_Warning_DataItem (..),
    newInstanceGroupManagerAggregatedList_Warning_DataItem,

    -- ** InstanceGroupManagerAutoHealingPolicy
    InstanceGroupManagerAutoHealingPolicy (..),
    newInstanceGroupManagerAutoHealingPolicy,

    -- ** InstanceGroupManagerList
    InstanceGroupManagerList (..),
    newInstanceGroupManagerList,

    -- ** InstanceGroupManagerList_Warning
    InstanceGroupManagerList_Warning (..),
    newInstanceGroupManagerList_Warning,

    -- ** InstanceGroupManagerList_Warning_Code
    InstanceGroupManagerList_Warning_Code (..),

    -- ** InstanceGroupManagerList_Warning_DataItem
    InstanceGroupManagerList_Warning_DataItem (..),
    newInstanceGroupManagerList_Warning_DataItem,

    -- ** InstanceGroupManagerStatus
    InstanceGroupManagerStatus (..),
    newInstanceGroupManagerStatus,

    -- ** InstanceGroupManagerStatusStateful
    InstanceGroupManagerStatusStateful (..),
    newInstanceGroupManagerStatusStateful,

    -- ** InstanceGroupManagerStatusStatefulPerInstanceConfigs
    InstanceGroupManagerStatusStatefulPerInstanceConfigs (..),
    newInstanceGroupManagerStatusStatefulPerInstanceConfigs,

    -- ** InstanceGroupManagerStatusVersionTarget
    InstanceGroupManagerStatusVersionTarget (..),
    newInstanceGroupManagerStatusVersionTarget,

    -- ** InstanceGroupManagerUpdatePolicy
    InstanceGroupManagerUpdatePolicy (..),
    newInstanceGroupManagerUpdatePolicy,

    -- ** InstanceGroupManagerUpdatePolicy_InstanceRedistributionType
    InstanceGroupManagerUpdatePolicy_InstanceRedistributionType (..),

    -- ** InstanceGroupManagerUpdatePolicy_MinimalAction
    InstanceGroupManagerUpdatePolicy_MinimalAction (..),

    -- ** InstanceGroupManagerUpdatePolicy_MostDisruptiveAllowedAction
    InstanceGroupManagerUpdatePolicy_MostDisruptiveAllowedAction (..),

    -- ** InstanceGroupManagerUpdatePolicy_ReplacementMethod
    InstanceGroupManagerUpdatePolicy_ReplacementMethod (..),

    -- ** InstanceGroupManagerUpdatePolicy_Type
    InstanceGroupManagerUpdatePolicy_Type (..),

    -- ** InstanceGroupManagerVersion
    InstanceGroupManagerVersion (..),
    newInstanceGroupManagerVersion,

    -- ** InstanceGroupManagersAbandonInstancesRequest
    InstanceGroupManagersAbandonInstancesRequest (..),
    newInstanceGroupManagersAbandonInstancesRequest,

    -- ** InstanceGroupManagersApplyUpdatesRequest
    InstanceGroupManagersApplyUpdatesRequest (..),
    newInstanceGroupManagersApplyUpdatesRequest,

    -- ** InstanceGroupManagersApplyUpdatesRequest_MinimalAction
    InstanceGroupManagersApplyUpdatesRequest_MinimalAction (..),

    -- ** InstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction
    InstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction (..),

    -- ** InstanceGroupManagersCreateInstancesRequest
    InstanceGroupManagersCreateInstancesRequest (..),
    newInstanceGroupManagersCreateInstancesRequest,

    -- ** InstanceGroupManagersDeleteInstancesRequest
    InstanceGroupManagersDeleteInstancesRequest (..),
    newInstanceGroupManagersDeleteInstancesRequest,

    -- ** InstanceGroupManagersDeletePerInstanceConfigsReq
    InstanceGroupManagersDeletePerInstanceConfigsReq (..),
    newInstanceGroupManagersDeletePerInstanceConfigsReq,

    -- ** InstanceGroupManagersListErrorsResponse
    InstanceGroupManagersListErrorsResponse (..),
    newInstanceGroupManagersListErrorsResponse,

    -- ** InstanceGroupManagersListManagedInstancesResponse
    InstanceGroupManagersListManagedInstancesResponse (..),
    newInstanceGroupManagersListManagedInstancesResponse,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp
    InstanceGroupManagersListPerInstanceConfigsResp (..),
    newInstanceGroupManagersListPerInstanceConfigsResp,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning
    InstanceGroupManagersListPerInstanceConfigsResp_Warning (..),
    newInstanceGroupManagersListPerInstanceConfigsResp_Warning,

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning_Code
    InstanceGroupManagersListPerInstanceConfigsResp_Warning_Code (..),

    -- ** InstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem
    InstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem (..),
    newInstanceGroupManagersListPerInstanceConfigsResp_Warning_DataItem,

    -- ** InstanceGroupManagersPatchPerInstanceConfigsReq
    InstanceGroupManagersPatchPerInstanceConfigsReq (..),
    newInstanceGroupManagersPatchPerInstanceConfigsReq,

    -- ** InstanceGroupManagersRecreateInstancesRequest
    InstanceGroupManagersRecreateInstancesRequest (..),
    newInstanceGroupManagersRecreateInstancesRequest,

    -- ** InstanceGroupManagersScopedList
    InstanceGroupManagersScopedList (..),
    newInstanceGroupManagersScopedList,

    -- ** InstanceGroupManagersScopedList_Warning
    InstanceGroupManagersScopedList_Warning (..),
    newInstanceGroupManagersScopedList_Warning,

    -- ** InstanceGroupManagersScopedList_Warning_Code
    InstanceGroupManagersScopedList_Warning_Code (..),

    -- ** InstanceGroupManagersScopedList_Warning_DataItem
    InstanceGroupManagersScopedList_Warning_DataItem (..),
    newInstanceGroupManagersScopedList_Warning_DataItem,

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    InstanceGroupManagersSetInstanceTemplateRequest (..),
    newInstanceGroupManagersSetInstanceTemplateRequest,

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    InstanceGroupManagersSetTargetPoolsRequest (..),
    newInstanceGroupManagersSetTargetPoolsRequest,

    -- ** InstanceGroupManagersUpdatePerInstanceConfigsReq
    InstanceGroupManagersUpdatePerInstanceConfigsReq (..),
    newInstanceGroupManagersUpdatePerInstanceConfigsReq,

    -- ** InstanceGroupsAddInstancesRequest
    InstanceGroupsAddInstancesRequest (..),
    newInstanceGroupsAddInstancesRequest,

    -- ** InstanceGroupsListInstances
    InstanceGroupsListInstances (..),
    newInstanceGroupsListInstances,

    -- ** InstanceGroupsListInstances_Warning
    InstanceGroupsListInstances_Warning (..),
    newInstanceGroupsListInstances_Warning,

    -- ** InstanceGroupsListInstances_Warning_Code
    InstanceGroupsListInstances_Warning_Code (..),

    -- ** InstanceGroupsListInstances_Warning_DataItem
    InstanceGroupsListInstances_Warning_DataItem (..),
    newInstanceGroupsListInstances_Warning_DataItem,

    -- ** InstanceGroupsListInstancesRequest
    InstanceGroupsListInstancesRequest (..),
    newInstanceGroupsListInstancesRequest,

    -- ** InstanceGroupsListInstancesRequest_InstanceState
    InstanceGroupsListInstancesRequest_InstanceState (..),

    -- ** InstanceGroupsRemoveInstancesRequest
    InstanceGroupsRemoveInstancesRequest (..),
    newInstanceGroupsRemoveInstancesRequest,

    -- ** InstanceGroupsScopedList
    InstanceGroupsScopedList (..),
    newInstanceGroupsScopedList,

    -- ** InstanceGroupsScopedList_Warning
    InstanceGroupsScopedList_Warning (..),
    newInstanceGroupsScopedList_Warning,

    -- ** InstanceGroupsScopedList_Warning_Code
    InstanceGroupsScopedList_Warning_Code (..),

    -- ** InstanceGroupsScopedList_Warning_DataItem
    InstanceGroupsScopedList_Warning_DataItem (..),
    newInstanceGroupsScopedList_Warning_DataItem,

    -- ** InstanceGroupsSetNamedPortsRequest
    InstanceGroupsSetNamedPortsRequest (..),
    newInstanceGroupsSetNamedPortsRequest,

    -- ** InstanceList
    InstanceList (..),
    newInstanceList,

    -- ** InstanceList_Warning
    InstanceList_Warning (..),
    newInstanceList_Warning,

    -- ** InstanceList_Warning_Code
    InstanceList_Warning_Code (..),

    -- ** InstanceList_Warning_DataItem
    InstanceList_Warning_DataItem (..),
    newInstanceList_Warning_DataItem,

    -- ** InstanceListReferrers
    InstanceListReferrers (..),
    newInstanceListReferrers,

    -- ** InstanceListReferrers_Warning
    InstanceListReferrers_Warning (..),
    newInstanceListReferrers_Warning,

    -- ** InstanceListReferrers_Warning_Code
    InstanceListReferrers_Warning_Code (..),

    -- ** InstanceListReferrers_Warning_DataItem
    InstanceListReferrers_Warning_DataItem (..),
    newInstanceListReferrers_Warning_DataItem,

    -- ** InstanceManagedByIgmError
    InstanceManagedByIgmError (..),
    newInstanceManagedByIgmError,

    -- ** InstanceManagedByIgmErrorInstanceActionDetails
    InstanceManagedByIgmErrorInstanceActionDetails (..),
    newInstanceManagedByIgmErrorInstanceActionDetails,

    -- ** InstanceManagedByIgmErrorInstanceActionDetails_Action
    InstanceManagedByIgmErrorInstanceActionDetails_Action (..),

    -- ** InstanceManagedByIgmErrorManagedInstanceError
    InstanceManagedByIgmErrorManagedInstanceError (..),
    newInstanceManagedByIgmErrorManagedInstanceError,

    -- ** InstanceMoveRequest
    InstanceMoveRequest (..),
    newInstanceMoveRequest,

    -- ** InstanceParams
    InstanceParams (..),
    newInstanceParams,

    -- ** InstanceParams_ResourceManagerTags
    InstanceParams_ResourceManagerTags (..),
    newInstanceParams_ResourceManagerTags,

    -- ** InstanceProperties
    InstanceProperties (..),
    newInstanceProperties,

    -- ** InstanceProperties_Labels
    InstanceProperties_Labels (..),
    newInstanceProperties_Labels,

    -- ** InstanceProperties_PrivateIpv6GoogleAccess
    InstanceProperties_PrivateIpv6GoogleAccess (..),

    -- ** InstanceProperties_ResourceManagerTags
    InstanceProperties_ResourceManagerTags (..),
    newInstanceProperties_ResourceManagerTags,

    -- ** InstanceReference
    InstanceReference (..),
    newInstanceReference,

    -- ** InstanceTemplate
    InstanceTemplate (..),
    newInstanceTemplate,

    -- ** InstanceTemplateList
    InstanceTemplateList (..),
    newInstanceTemplateList,

    -- ** InstanceTemplateList_Warning
    InstanceTemplateList_Warning (..),
    newInstanceTemplateList_Warning,

    -- ** InstanceTemplateList_Warning_Code
    InstanceTemplateList_Warning_Code (..),

    -- ** InstanceTemplateList_Warning_DataItem
    InstanceTemplateList_Warning_DataItem (..),
    newInstanceTemplateList_Warning_DataItem,

    -- ** InstanceWithNamedPorts
    InstanceWithNamedPorts (..),
    newInstanceWithNamedPorts,

    -- ** InstanceWithNamedPorts_Status
    InstanceWithNamedPorts_Status (..),

    -- ** InstancesAddResourcePoliciesRequest
    InstancesAddResourcePoliciesRequest (..),
    newInstancesAddResourcePoliciesRequest,

    -- ** InstancesGetEffectiveFirewallsResponse
    InstancesGetEffectiveFirewallsResponse (..),
    newInstancesGetEffectiveFirewallsResponse,

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newInstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** InstancesRemoveResourcePoliciesRequest
    InstancesRemoveResourcePoliciesRequest (..),
    newInstancesRemoveResourcePoliciesRequest,

    -- ** InstancesScopedList
    InstancesScopedList (..),
    newInstancesScopedList,

    -- ** InstancesScopedList_Warning
    InstancesScopedList_Warning (..),
    newInstancesScopedList_Warning,

    -- ** InstancesScopedList_Warning_Code
    InstancesScopedList_Warning_Code (..),

    -- ** InstancesScopedList_Warning_DataItem
    InstancesScopedList_Warning_DataItem (..),
    newInstancesScopedList_Warning_DataItem,

    -- ** InstancesSetLabelsRequest
    InstancesSetLabelsRequest (..),
    newInstancesSetLabelsRequest,

    -- ** InstancesSetLabelsRequest_Labels
    InstancesSetLabelsRequest_Labels (..),
    newInstancesSetLabelsRequest_Labels,

    -- ** InstancesSetMachineResourcesRequest
    InstancesSetMachineResourcesRequest (..),
    newInstancesSetMachineResourcesRequest,

    -- ** InstancesSetMachineTypeRequest
    InstancesSetMachineTypeRequest (..),
    newInstancesSetMachineTypeRequest,

    -- ** InstancesSetMinCpuPlatformRequest
    InstancesSetMinCpuPlatformRequest (..),
    newInstancesSetMinCpuPlatformRequest,

    -- ** InstancesSetServiceAccountRequest
    InstancesSetServiceAccountRequest (..),
    newInstancesSetServiceAccountRequest,

    -- ** InstancesStartWithEncryptionKeyRequest
    InstancesStartWithEncryptionKeyRequest (..),
    newInstancesStartWithEncryptionKeyRequest,

    -- ** Int64RangeMatch
    Int64RangeMatch (..),
    newInt64RangeMatch,

    -- ** Interconnect
    Interconnect (..),
    newInterconnect,

    -- ** Interconnect_InterconnectType
    Interconnect_InterconnectType (..),

    -- ** Interconnect_LinkType
    Interconnect_LinkType (..),

    -- ** Interconnect_OperationalStatus
    Interconnect_OperationalStatus (..),

    -- ** Interconnect_State
    Interconnect_State (..),

    -- ** InterconnectAttachment
    InterconnectAttachment (..),
    newInterconnectAttachment,

    -- ** InterconnectAttachment_Bandwidth
    InterconnectAttachment_Bandwidth (..),

    -- ** InterconnectAttachment_EdgeAvailabilityDomain
    InterconnectAttachment_EdgeAvailabilityDomain (..),

    -- ** InterconnectAttachment_Encryption
    InterconnectAttachment_Encryption (..),

    -- ** InterconnectAttachment_OperationalStatus
    InterconnectAttachment_OperationalStatus (..),

    -- ** InterconnectAttachment_StackType
    InterconnectAttachment_StackType (..),

    -- ** InterconnectAttachment_State
    InterconnectAttachment_State (..),

    -- ** InterconnectAttachment_Type
    InterconnectAttachment_Type (..),

    -- ** InterconnectAttachmentAggregatedList
    InterconnectAttachmentAggregatedList (..),
    newInterconnectAttachmentAggregatedList,

    -- ** InterconnectAttachmentAggregatedList_Items
    InterconnectAttachmentAggregatedList_Items (..),
    newInterconnectAttachmentAggregatedList_Items,

    -- ** InterconnectAttachmentAggregatedList_Warning
    InterconnectAttachmentAggregatedList_Warning (..),
    newInterconnectAttachmentAggregatedList_Warning,

    -- ** InterconnectAttachmentAggregatedList_Warning_Code
    InterconnectAttachmentAggregatedList_Warning_Code (..),

    -- ** InterconnectAttachmentAggregatedList_Warning_DataItem
    InterconnectAttachmentAggregatedList_Warning_DataItem (..),
    newInterconnectAttachmentAggregatedList_Warning_DataItem,

    -- ** InterconnectAttachmentList
    InterconnectAttachmentList (..),
    newInterconnectAttachmentList,

    -- ** InterconnectAttachmentList_Warning
    InterconnectAttachmentList_Warning (..),
    newInterconnectAttachmentList_Warning,

    -- ** InterconnectAttachmentList_Warning_Code
    InterconnectAttachmentList_Warning_Code (..),

    -- ** InterconnectAttachmentList_Warning_DataItem
    InterconnectAttachmentList_Warning_DataItem (..),
    newInterconnectAttachmentList_Warning_DataItem,

    -- ** InterconnectAttachmentPartnerMetadata
    InterconnectAttachmentPartnerMetadata (..),
    newInterconnectAttachmentPartnerMetadata,

    -- ** InterconnectAttachmentPrivateInfo
    InterconnectAttachmentPrivateInfo (..),
    newInterconnectAttachmentPrivateInfo,

    -- ** InterconnectAttachmentsScopedList
    InterconnectAttachmentsScopedList (..),
    newInterconnectAttachmentsScopedList,

    -- ** InterconnectAttachmentsScopedList_Warning
    InterconnectAttachmentsScopedList_Warning (..),
    newInterconnectAttachmentsScopedList_Warning,

    -- ** InterconnectAttachmentsScopedList_Warning_Code
    InterconnectAttachmentsScopedList_Warning_Code (..),

    -- ** InterconnectAttachmentsScopedList_Warning_DataItem
    InterconnectAttachmentsScopedList_Warning_DataItem (..),
    newInterconnectAttachmentsScopedList_Warning_DataItem,

    -- ** InterconnectCircuitInfo
    InterconnectCircuitInfo (..),
    newInterconnectCircuitInfo,

    -- ** InterconnectDiagnostics
    InterconnectDiagnostics (..),
    newInterconnectDiagnostics,

    -- ** InterconnectDiagnosticsARPEntry
    InterconnectDiagnosticsARPEntry (..),
    newInterconnectDiagnosticsARPEntry,

    -- ** InterconnectDiagnosticsLinkLACPStatus
    InterconnectDiagnosticsLinkLACPStatus (..),
    newInterconnectDiagnosticsLinkLACPStatus,

    -- ** InterconnectDiagnosticsLinkLACPStatus_State
    InterconnectDiagnosticsLinkLACPStatus_State (..),

    -- ** InterconnectDiagnosticsLinkOpticalPower
    InterconnectDiagnosticsLinkOpticalPower (..),
    newInterconnectDiagnosticsLinkOpticalPower,

    -- ** InterconnectDiagnosticsLinkOpticalPower_State
    InterconnectDiagnosticsLinkOpticalPower_State (..),

    -- ** InterconnectDiagnosticsLinkStatus
    InterconnectDiagnosticsLinkStatus (..),
    newInterconnectDiagnosticsLinkStatus,

    -- ** InterconnectList
    InterconnectList (..),
    newInterconnectList,

    -- ** InterconnectList_Warning
    InterconnectList_Warning (..),
    newInterconnectList_Warning,

    -- ** InterconnectList_Warning_Code
    InterconnectList_Warning_Code (..),

    -- ** InterconnectList_Warning_DataItem
    InterconnectList_Warning_DataItem (..),
    newInterconnectList_Warning_DataItem,

    -- ** InterconnectLocation
    InterconnectLocation (..),
    newInterconnectLocation,

    -- ** InterconnectLocation_Continent
    InterconnectLocation_Continent (..),

    -- ** InterconnectLocation_Status
    InterconnectLocation_Status (..),

    -- ** InterconnectLocationList
    InterconnectLocationList (..),
    newInterconnectLocationList,

    -- ** InterconnectLocationList_Warning
    InterconnectLocationList_Warning (..),
    newInterconnectLocationList_Warning,

    -- ** InterconnectLocationList_Warning_Code
    InterconnectLocationList_Warning_Code (..),

    -- ** InterconnectLocationList_Warning_DataItem
    InterconnectLocationList_Warning_DataItem (..),
    newInterconnectLocationList_Warning_DataItem,

    -- ** InterconnectLocationRegionInfo
    InterconnectLocationRegionInfo (..),
    newInterconnectLocationRegionInfo,

    -- ** InterconnectLocationRegionInfo_LocationPresence
    InterconnectLocationRegionInfo_LocationPresence (..),

    -- ** InterconnectOutageNotification
    InterconnectOutageNotification (..),
    newInterconnectOutageNotification,

    -- ** InterconnectOutageNotification_IssueType
    InterconnectOutageNotification_IssueType (..),

    -- ** InterconnectOutageNotification_Source
    InterconnectOutageNotification_Source (..),

    -- ** InterconnectOutageNotification_State
    InterconnectOutageNotification_State (..),

    -- ** InterconnectsGetDiagnosticsResponse
    InterconnectsGetDiagnosticsResponse (..),
    newInterconnectsGetDiagnosticsResponse,

    -- ** License
    License (..),
    newLicense,

    -- ** LicenseCode
    LicenseCode (..),
    newLicenseCode,

    -- ** LicenseCode_State
    LicenseCode_State (..),

    -- ** LicenseCodeLicenseAlias
    LicenseCodeLicenseAlias (..),
    newLicenseCodeLicenseAlias,

    -- ** LicenseResourceCommitment
    LicenseResourceCommitment (..),
    newLicenseResourceCommitment,

    -- ** LicenseResourceRequirements
    LicenseResourceRequirements (..),
    newLicenseResourceRequirements,

    -- ** LicensesListResponse
    LicensesListResponse (..),
    newLicensesListResponse,

    -- ** LicensesListResponse_Warning
    LicensesListResponse_Warning (..),
    newLicensesListResponse_Warning,

    -- ** LicensesListResponse_Warning_Code
    LicensesListResponse_Warning_Code (..),

    -- ** LicensesListResponse_Warning_DataItem
    LicensesListResponse_Warning_DataItem (..),
    newLicensesListResponse_Warning_DataItem,

    -- ** LocalDisk
    LocalDisk (..),
    newLocalDisk,

    -- ** LocationPolicy
    LocationPolicy (..),
    newLocationPolicy,

    -- ** LocationPolicy_Locations
    LocationPolicy_Locations (..),
    newLocationPolicy_Locations,

    -- ** LocationPolicyLocation
    LocationPolicyLocation (..),
    newLocationPolicyLocation,

    -- ** LocationPolicyLocation_Preference
    LocationPolicyLocation_Preference (..),

    -- ** LogConfig
    LogConfig (..),
    newLogConfig,

    -- ** LogConfigCloudAuditOptions
    LogConfigCloudAuditOptions (..),
    newLogConfigCloudAuditOptions,

    -- ** LogConfigCloudAuditOptions_LogName
    LogConfigCloudAuditOptions_LogName (..),

    -- ** LogConfigCounterOptions
    LogConfigCounterOptions (..),
    newLogConfigCounterOptions,

    -- ** LogConfigCounterOptionsCustomField
    LogConfigCounterOptionsCustomField (..),
    newLogConfigCounterOptionsCustomField,

    -- ** LogConfigDataAccessOptions
    LogConfigDataAccessOptions (..),
    newLogConfigDataAccessOptions,

    -- ** LogConfigDataAccessOptions_LogMode
    LogConfigDataAccessOptions_LogMode (..),

    -- ** MachineImage
    MachineImage (..),
    newMachineImage,

    -- ** MachineImage_Status
    MachineImage_Status (..),

    -- ** MachineImageList
    MachineImageList (..),
    newMachineImageList,

    -- ** MachineImageList_Warning
    MachineImageList_Warning (..),
    newMachineImageList_Warning,

    -- ** MachineImageList_Warning_Code
    MachineImageList_Warning_Code (..),

    -- ** MachineImageList_Warning_DataItem
    MachineImageList_Warning_DataItem (..),
    newMachineImageList_Warning_DataItem,

    -- ** MachineType
    MachineType (..),
    newMachineType,

    -- ** MachineType_AcceleratorsItem
    MachineType_AcceleratorsItem (..),
    newMachineType_AcceleratorsItem,

    -- ** MachineType_ScratchDisksItem
    MachineType_ScratchDisksItem (..),
    newMachineType_ScratchDisksItem,

    -- ** MachineTypeAggregatedList
    MachineTypeAggregatedList (..),
    newMachineTypeAggregatedList,

    -- ** MachineTypeAggregatedList_Items
    MachineTypeAggregatedList_Items (..),
    newMachineTypeAggregatedList_Items,

    -- ** MachineTypeAggregatedList_Warning
    MachineTypeAggregatedList_Warning (..),
    newMachineTypeAggregatedList_Warning,

    -- ** MachineTypeAggregatedList_Warning_Code
    MachineTypeAggregatedList_Warning_Code (..),

    -- ** MachineTypeAggregatedList_Warning_DataItem
    MachineTypeAggregatedList_Warning_DataItem (..),
    newMachineTypeAggregatedList_Warning_DataItem,

    -- ** MachineTypeList
    MachineTypeList (..),
    newMachineTypeList,

    -- ** MachineTypeList_Warning
    MachineTypeList_Warning (..),
    newMachineTypeList_Warning,

    -- ** MachineTypeList_Warning_Code
    MachineTypeList_Warning_Code (..),

    -- ** MachineTypeList_Warning_DataItem
    MachineTypeList_Warning_DataItem (..),
    newMachineTypeList_Warning_DataItem,

    -- ** MachineTypesScopedList
    MachineTypesScopedList (..),
    newMachineTypesScopedList,

    -- ** MachineTypesScopedList_Warning
    MachineTypesScopedList_Warning (..),
    newMachineTypesScopedList_Warning,

    -- ** MachineTypesScopedList_Warning_Code
    MachineTypesScopedList_Warning_Code (..),

    -- ** MachineTypesScopedList_Warning_DataItem
    MachineTypesScopedList_Warning_DataItem (..),
    newMachineTypesScopedList_Warning_DataItem,

    -- ** ManagedInstance
    ManagedInstance (..),
    newManagedInstance,

    -- ** ManagedInstance_CurrentAction
    ManagedInstance_CurrentAction (..),

    -- ** ManagedInstance_InstanceStatus
    ManagedInstance_InstanceStatus (..),

    -- ** ManagedInstanceInstanceHealth
    ManagedInstanceInstanceHealth (..),
    newManagedInstanceInstanceHealth,

    -- ** ManagedInstanceInstanceHealth_DetailedHealthState
    ManagedInstanceInstanceHealth_DetailedHealthState (..),

    -- ** ManagedInstanceLastAttempt
    ManagedInstanceLastAttempt (..),
    newManagedInstanceLastAttempt,

    -- ** ManagedInstanceLastAttempt_Errors
    ManagedInstanceLastAttempt_Errors (..),
    newManagedInstanceLastAttempt_Errors,

    -- ** ManagedInstanceLastAttempt_Errors_ErrorsItem
    ManagedInstanceLastAttempt_Errors_ErrorsItem (..),
    newManagedInstanceLastAttempt_Errors_ErrorsItem,

    -- ** ManagedInstanceVersion
    ManagedInstanceVersion (..),
    newManagedInstanceVersion,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metadata_ItemsItem
    Metadata_ItemsItem (..),
    newMetadata_ItemsItem,

    -- ** MetadataFilter
    MetadataFilter (..),
    newMetadataFilter,

    -- ** MetadataFilter_FilterMatchCriteria
    MetadataFilter_FilterMatchCriteria (..),

    -- ** MetadataFilterLabelMatch
    MetadataFilterLabelMatch (..),
    newMetadataFilterLabelMatch,

    -- ** NamedPort
    NamedPort (..),
    newNamedPort,

    -- ** Network
    Network (..),
    newNetwork,

    -- ** Network_NetworkFirewallPolicyEnforcementOrder
    Network_NetworkFirewallPolicyEnforcementOrder (..),

    -- ** NetworkEndpoint
    NetworkEndpoint (..),
    newNetworkEndpoint,

    -- ** NetworkEndpoint_Annotations
    NetworkEndpoint_Annotations (..),
    newNetworkEndpoint_Annotations,

    -- ** NetworkEndpointGroup
    NetworkEndpointGroup (..),
    newNetworkEndpointGroup,

    -- ** NetworkEndpointGroup_Annotations
    NetworkEndpointGroup_Annotations (..),
    newNetworkEndpointGroup_Annotations,

    -- ** NetworkEndpointGroup_NetworkEndpointType
    NetworkEndpointGroup_NetworkEndpointType (..),

    -- ** NetworkEndpointGroupAggregatedList
    NetworkEndpointGroupAggregatedList (..),
    newNetworkEndpointGroupAggregatedList,

    -- ** NetworkEndpointGroupAggregatedList_Items
    NetworkEndpointGroupAggregatedList_Items (..),
    newNetworkEndpointGroupAggregatedList_Items,

    -- ** NetworkEndpointGroupAggregatedList_Warning
    NetworkEndpointGroupAggregatedList_Warning (..),
    newNetworkEndpointGroupAggregatedList_Warning,

    -- ** NetworkEndpointGroupAggregatedList_Warning_Code
    NetworkEndpointGroupAggregatedList_Warning_Code (..),

    -- ** NetworkEndpointGroupAggregatedList_Warning_DataItem
    NetworkEndpointGroupAggregatedList_Warning_DataItem (..),
    newNetworkEndpointGroupAggregatedList_Warning_DataItem,

    -- ** NetworkEndpointGroupAppEngine
    NetworkEndpointGroupAppEngine (..),
    newNetworkEndpointGroupAppEngine,

    -- ** NetworkEndpointGroupCloudFunction
    NetworkEndpointGroupCloudFunction (..),
    newNetworkEndpointGroupCloudFunction,

    -- ** NetworkEndpointGroupCloudRun
    NetworkEndpointGroupCloudRun (..),
    newNetworkEndpointGroupCloudRun,

    -- ** NetworkEndpointGroupList
    NetworkEndpointGroupList (..),
    newNetworkEndpointGroupList,

    -- ** NetworkEndpointGroupList_Warning
    NetworkEndpointGroupList_Warning (..),
    newNetworkEndpointGroupList_Warning,

    -- ** NetworkEndpointGroupList_Warning_Code
    NetworkEndpointGroupList_Warning_Code (..),

    -- ** NetworkEndpointGroupList_Warning_DataItem
    NetworkEndpointGroupList_Warning_DataItem (..),
    newNetworkEndpointGroupList_Warning_DataItem,

    -- ** NetworkEndpointGroupsAttachEndpointsRequest
    NetworkEndpointGroupsAttachEndpointsRequest (..),
    newNetworkEndpointGroupsAttachEndpointsRequest,

    -- ** NetworkEndpointGroupsDetachEndpointsRequest
    NetworkEndpointGroupsDetachEndpointsRequest (..),
    newNetworkEndpointGroupsDetachEndpointsRequest,

    -- ** NetworkEndpointGroupsListEndpointsRequest
    NetworkEndpointGroupsListEndpointsRequest (..),
    newNetworkEndpointGroupsListEndpointsRequest,

    -- ** NetworkEndpointGroupsListEndpointsRequest_HealthStatus
    NetworkEndpointGroupsListEndpointsRequest_HealthStatus (..),

    -- ** NetworkEndpointGroupsListNetworkEndpoints
    NetworkEndpointGroupsListNetworkEndpoints (..),
    newNetworkEndpointGroupsListNetworkEndpoints,

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning
    NetworkEndpointGroupsListNetworkEndpoints_Warning (..),
    newNetworkEndpointGroupsListNetworkEndpoints_Warning,

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning_Code
    NetworkEndpointGroupsListNetworkEndpoints_Warning_Code (..),

    -- ** NetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem
    NetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem (..),
    newNetworkEndpointGroupsListNetworkEndpoints_Warning_DataItem,

    -- ** NetworkEndpointGroupsScopedList
    NetworkEndpointGroupsScopedList (..),
    newNetworkEndpointGroupsScopedList,

    -- ** NetworkEndpointGroupsScopedList_Warning
    NetworkEndpointGroupsScopedList_Warning (..),
    newNetworkEndpointGroupsScopedList_Warning,

    -- ** NetworkEndpointGroupsScopedList_Warning_Code
    NetworkEndpointGroupsScopedList_Warning_Code (..),

    -- ** NetworkEndpointGroupsScopedList_Warning_DataItem
    NetworkEndpointGroupsScopedList_Warning_DataItem (..),
    newNetworkEndpointGroupsScopedList_Warning_DataItem,

    -- ** NetworkEndpointWithHealthStatus
    NetworkEndpointWithHealthStatus (..),
    newNetworkEndpointWithHealthStatus,

    -- ** NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- ** NetworkInterface_Ipv6AccessType
    NetworkInterface_Ipv6AccessType (..),

    -- ** NetworkInterface_NicType
    NetworkInterface_NicType (..),

    -- ** NetworkInterface_StackType
    NetworkInterface_StackType (..),

    -- ** NetworkList
    NetworkList (..),
    newNetworkList,

    -- ** NetworkList_Warning
    NetworkList_Warning (..),
    newNetworkList_Warning,

    -- ** NetworkList_Warning_Code
    NetworkList_Warning_Code (..),

    -- ** NetworkList_Warning_DataItem
    NetworkList_Warning_DataItem (..),
    newNetworkList_Warning_DataItem,

    -- ** NetworkPeering
    NetworkPeering (..),
    newNetworkPeering,

    -- ** NetworkPeering_State
    NetworkPeering_State (..),

    -- ** NetworkPerformanceConfig
    NetworkPerformanceConfig (..),
    newNetworkPerformanceConfig,

    -- ** NetworkPerformanceConfig_TotalEgressBandwidthTier
    NetworkPerformanceConfig_TotalEgressBandwidthTier (..),

    -- ** NetworkRoutingConfig
    NetworkRoutingConfig (..),
    newNetworkRoutingConfig,

    -- ** NetworkRoutingConfig_RoutingMode
    NetworkRoutingConfig_RoutingMode (..),

    -- ** NetworksAddPeeringRequest
    NetworksAddPeeringRequest (..),
    newNetworksAddPeeringRequest,

    -- ** NetworksGetEffectiveFirewallsResponse
    NetworksGetEffectiveFirewallsResponse (..),
    newNetworksGetEffectiveFirewallsResponse,

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newNetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** NetworksRemovePeeringRequest
    NetworksRemovePeeringRequest (..),
    newNetworksRemovePeeringRequest,

    -- ** NetworksUpdatePeeringRequest
    NetworksUpdatePeeringRequest (..),
    newNetworksUpdatePeeringRequest,

    -- ** NodeGroup
    NodeGroup (..),
    newNodeGroup,

    -- ** NodeGroup_MaintenancePolicy
    NodeGroup_MaintenancePolicy (..),

    -- ** NodeGroup_Status
    NodeGroup_Status (..),

    -- ** NodeGroupAggregatedList
    NodeGroupAggregatedList (..),
    newNodeGroupAggregatedList,

    -- ** NodeGroupAggregatedList_Items
    NodeGroupAggregatedList_Items (..),
    newNodeGroupAggregatedList_Items,

    -- ** NodeGroupAggregatedList_Warning
    NodeGroupAggregatedList_Warning (..),
    newNodeGroupAggregatedList_Warning,

    -- ** NodeGroupAggregatedList_Warning_Code
    NodeGroupAggregatedList_Warning_Code (..),

    -- ** NodeGroupAggregatedList_Warning_DataItem
    NodeGroupAggregatedList_Warning_DataItem (..),
    newNodeGroupAggregatedList_Warning_DataItem,

    -- ** NodeGroupAutoscalingPolicy
    NodeGroupAutoscalingPolicy (..),
    newNodeGroupAutoscalingPolicy,

    -- ** NodeGroupAutoscalingPolicy_Mode
    NodeGroupAutoscalingPolicy_Mode (..),

    -- ** NodeGroupList
    NodeGroupList (..),
    newNodeGroupList,

    -- ** NodeGroupList_Warning
    NodeGroupList_Warning (..),
    newNodeGroupList_Warning,

    -- ** NodeGroupList_Warning_Code
    NodeGroupList_Warning_Code (..),

    -- ** NodeGroupList_Warning_DataItem
    NodeGroupList_Warning_DataItem (..),
    newNodeGroupList_Warning_DataItem,

    -- ** NodeGroupMaintenanceWindow
    NodeGroupMaintenanceWindow (..),
    newNodeGroupMaintenanceWindow,

    -- ** NodeGroupNode
    NodeGroupNode (..),
    newNodeGroupNode,

    -- ** NodeGroupNode_CpuOvercommitType
    NodeGroupNode_CpuOvercommitType (..),

    -- ** NodeGroupNode_Status
    NodeGroupNode_Status (..),

    -- ** NodeGroupsAddNodesRequest
    NodeGroupsAddNodesRequest (..),
    newNodeGroupsAddNodesRequest,

    -- ** NodeGroupsDeleteNodesRequest
    NodeGroupsDeleteNodesRequest (..),
    newNodeGroupsDeleteNodesRequest,

    -- ** NodeGroupsListNodes
    NodeGroupsListNodes (..),
    newNodeGroupsListNodes,

    -- ** NodeGroupsListNodes_Warning
    NodeGroupsListNodes_Warning (..),
    newNodeGroupsListNodes_Warning,

    -- ** NodeGroupsListNodes_Warning_Code
    NodeGroupsListNodes_Warning_Code (..),

    -- ** NodeGroupsListNodes_Warning_DataItem
    NodeGroupsListNodes_Warning_DataItem (..),
    newNodeGroupsListNodes_Warning_DataItem,

    -- ** NodeGroupsScopedList
    NodeGroupsScopedList (..),
    newNodeGroupsScopedList,

    -- ** NodeGroupsScopedList_Warning
    NodeGroupsScopedList_Warning (..),
    newNodeGroupsScopedList_Warning,

    -- ** NodeGroupsScopedList_Warning_Code
    NodeGroupsScopedList_Warning_Code (..),

    -- ** NodeGroupsScopedList_Warning_DataItem
    NodeGroupsScopedList_Warning_DataItem (..),
    newNodeGroupsScopedList_Warning_DataItem,

    -- ** NodeGroupsSetNodeTemplateRequest
    NodeGroupsSetNodeTemplateRequest (..),
    newNodeGroupsSetNodeTemplateRequest,

    -- ** NodeTemplate
    NodeTemplate (..),
    newNodeTemplate,

    -- ** NodeTemplate_CpuOvercommitType
    NodeTemplate_CpuOvercommitType (..),

    -- ** NodeTemplate_NodeAffinityLabels
    NodeTemplate_NodeAffinityLabels (..),
    newNodeTemplate_NodeAffinityLabels,

    -- ** NodeTemplate_Status
    NodeTemplate_Status (..),

    -- ** NodeTemplateAggregatedList
    NodeTemplateAggregatedList (..),
    newNodeTemplateAggregatedList,

    -- ** NodeTemplateAggregatedList_Items
    NodeTemplateAggregatedList_Items (..),
    newNodeTemplateAggregatedList_Items,

    -- ** NodeTemplateAggregatedList_Warning
    NodeTemplateAggregatedList_Warning (..),
    newNodeTemplateAggregatedList_Warning,

    -- ** NodeTemplateAggregatedList_Warning_Code
    NodeTemplateAggregatedList_Warning_Code (..),

    -- ** NodeTemplateAggregatedList_Warning_DataItem
    NodeTemplateAggregatedList_Warning_DataItem (..),
    newNodeTemplateAggregatedList_Warning_DataItem,

    -- ** NodeTemplateList
    NodeTemplateList (..),
    newNodeTemplateList,

    -- ** NodeTemplateList_Warning
    NodeTemplateList_Warning (..),
    newNodeTemplateList_Warning,

    -- ** NodeTemplateList_Warning_Code
    NodeTemplateList_Warning_Code (..),

    -- ** NodeTemplateList_Warning_DataItem
    NodeTemplateList_Warning_DataItem (..),
    newNodeTemplateList_Warning_DataItem,

    -- ** NodeTemplateNodeTypeFlexibility
    NodeTemplateNodeTypeFlexibility (..),
    newNodeTemplateNodeTypeFlexibility,

    -- ** NodeTemplatesScopedList
    NodeTemplatesScopedList (..),
    newNodeTemplatesScopedList,

    -- ** NodeTemplatesScopedList_Warning
    NodeTemplatesScopedList_Warning (..),
    newNodeTemplatesScopedList_Warning,

    -- ** NodeTemplatesScopedList_Warning_Code
    NodeTemplatesScopedList_Warning_Code (..),

    -- ** NodeTemplatesScopedList_Warning_DataItem
    NodeTemplatesScopedList_Warning_DataItem (..),
    newNodeTemplatesScopedList_Warning_DataItem,

    -- ** NodeType
    NodeType (..),
    newNodeType,

    -- ** NodeTypeAggregatedList
    NodeTypeAggregatedList (..),
    newNodeTypeAggregatedList,

    -- ** NodeTypeAggregatedList_Items
    NodeTypeAggregatedList_Items (..),
    newNodeTypeAggregatedList_Items,

    -- ** NodeTypeAggregatedList_Warning
    NodeTypeAggregatedList_Warning (..),
    newNodeTypeAggregatedList_Warning,

    -- ** NodeTypeAggregatedList_Warning_Code
    NodeTypeAggregatedList_Warning_Code (..),

    -- ** NodeTypeAggregatedList_Warning_DataItem
    NodeTypeAggregatedList_Warning_DataItem (..),
    newNodeTypeAggregatedList_Warning_DataItem,

    -- ** NodeTypeList
    NodeTypeList (..),
    newNodeTypeList,

    -- ** NodeTypeList_Warning
    NodeTypeList_Warning (..),
    newNodeTypeList_Warning,

    -- ** NodeTypeList_Warning_Code
    NodeTypeList_Warning_Code (..),

    -- ** NodeTypeList_Warning_DataItem
    NodeTypeList_Warning_DataItem (..),
    newNodeTypeList_Warning_DataItem,

    -- ** NodeTypesScopedList
    NodeTypesScopedList (..),
    newNodeTypesScopedList,

    -- ** NodeTypesScopedList_Warning
    NodeTypesScopedList_Warning (..),
    newNodeTypesScopedList_Warning,

    -- ** NodeTypesScopedList_Warning_Code
    NodeTypesScopedList_Warning_Code (..),

    -- ** NodeTypesScopedList_Warning_DataItem
    NodeTypesScopedList_Warning_DataItem (..),
    newNodeTypesScopedList_Warning_DataItem,

    -- ** NotificationEndpoint
    NotificationEndpoint (..),
    newNotificationEndpoint,

    -- ** NotificationEndpointGrpcSettings
    NotificationEndpointGrpcSettings (..),
    newNotificationEndpointGrpcSettings,

    -- ** NotificationEndpointList
    NotificationEndpointList (..),
    newNotificationEndpointList,

    -- ** NotificationEndpointList_Warning
    NotificationEndpointList_Warning (..),
    newNotificationEndpointList_Warning,

    -- ** NotificationEndpointList_Warning_Code
    NotificationEndpointList_Warning_Code (..),

    -- ** NotificationEndpointList_Warning_DataItem
    NotificationEndpointList_Warning_DataItem (..),
    newNotificationEndpointList_Warning_DataItem,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- ** Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- ** Operation_Status
    Operation_Status (..),

    -- ** Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- ** Operation_WarningsItem_Code
    Operation_WarningsItem_Code (..),

    -- ** Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- ** OperationAggregatedList
    OperationAggregatedList (..),
    newOperationAggregatedList,

    -- ** OperationAggregatedList_Items
    OperationAggregatedList_Items (..),
    newOperationAggregatedList_Items,

    -- ** OperationAggregatedList_Warning
    OperationAggregatedList_Warning (..),
    newOperationAggregatedList_Warning,

    -- ** OperationAggregatedList_Warning_Code
    OperationAggregatedList_Warning_Code (..),

    -- ** OperationAggregatedList_Warning_DataItem
    OperationAggregatedList_Warning_DataItem (..),
    newOperationAggregatedList_Warning_DataItem,

    -- ** OperationList
    OperationList (..),
    newOperationList,

    -- ** OperationList_Warning
    OperationList_Warning (..),
    newOperationList_Warning,

    -- ** OperationList_Warning_Code
    OperationList_Warning_Code (..),

    -- ** OperationList_Warning_DataItem
    OperationList_Warning_DataItem (..),
    newOperationList_Warning_DataItem,

    -- ** OperationsScopedList
    OperationsScopedList (..),
    newOperationsScopedList,

    -- ** OperationsScopedList_Warning
    OperationsScopedList_Warning (..),
    newOperationsScopedList_Warning,

    -- ** OperationsScopedList_Warning_Code
    OperationsScopedList_Warning_Code (..),

    -- ** OperationsScopedList_Warning_DataItem
    OperationsScopedList_Warning_DataItem (..),
    newOperationsScopedList_Warning_DataItem,

    -- ** OutlierDetection
    OutlierDetection (..),
    newOutlierDetection,

    -- ** PacketIntervals
    PacketIntervals (..),
    newPacketIntervals,

    -- ** PacketIntervals_Duration
    PacketIntervals_Duration (..),

    -- ** PacketIntervals_Type
    PacketIntervals_Type (..),

    -- ** PacketMirroring
    PacketMirroring (..),
    newPacketMirroring,

    -- ** PacketMirroring_Enable
    PacketMirroring_Enable (..),

    -- ** PacketMirroringAggregatedList
    PacketMirroringAggregatedList (..),
    newPacketMirroringAggregatedList,

    -- ** PacketMirroringAggregatedList_Items
    PacketMirroringAggregatedList_Items (..),
    newPacketMirroringAggregatedList_Items,

    -- ** PacketMirroringAggregatedList_Warning
    PacketMirroringAggregatedList_Warning (..),
    newPacketMirroringAggregatedList_Warning,

    -- ** PacketMirroringAggregatedList_Warning_Code
    PacketMirroringAggregatedList_Warning_Code (..),

    -- ** PacketMirroringAggregatedList_Warning_DataItem
    PacketMirroringAggregatedList_Warning_DataItem (..),
    newPacketMirroringAggregatedList_Warning_DataItem,

    -- ** PacketMirroringFilter
    PacketMirroringFilter (..),
    newPacketMirroringFilter,

    -- ** PacketMirroringFilter_Direction
    PacketMirroringFilter_Direction (..),

    -- ** PacketMirroringForwardingRuleInfo
    PacketMirroringForwardingRuleInfo (..),
    newPacketMirroringForwardingRuleInfo,

    -- ** PacketMirroringList
    PacketMirroringList (..),
    newPacketMirroringList,

    -- ** PacketMirroringList_Warning
    PacketMirroringList_Warning (..),
    newPacketMirroringList_Warning,

    -- ** PacketMirroringList_Warning_Code
    PacketMirroringList_Warning_Code (..),

    -- ** PacketMirroringList_Warning_DataItem
    PacketMirroringList_Warning_DataItem (..),
    newPacketMirroringList_Warning_DataItem,

    -- ** PacketMirroringMirroredResourceInfo
    PacketMirroringMirroredResourceInfo (..),
    newPacketMirroringMirroredResourceInfo,

    -- ** PacketMirroringMirroredResourceInfoInstanceInfo
    PacketMirroringMirroredResourceInfoInstanceInfo (..),
    newPacketMirroringMirroredResourceInfoInstanceInfo,

    -- ** PacketMirroringMirroredResourceInfoSubnetInfo
    PacketMirroringMirroredResourceInfoSubnetInfo (..),
    newPacketMirroringMirroredResourceInfoSubnetInfo,

    -- ** PacketMirroringNetworkInfo
    PacketMirroringNetworkInfo (..),
    newPacketMirroringNetworkInfo,

    -- ** PacketMirroringsScopedList
    PacketMirroringsScopedList (..),
    newPacketMirroringsScopedList,

    -- ** PacketMirroringsScopedList_Warning
    PacketMirroringsScopedList_Warning (..),
    newPacketMirroringsScopedList_Warning,

    -- ** PacketMirroringsScopedList_Warning_Code
    PacketMirroringsScopedList_Warning_Code (..),

    -- ** PacketMirroringsScopedList_Warning_DataItem
    PacketMirroringsScopedList_Warning_DataItem (..),
    newPacketMirroringsScopedList_Warning_DataItem,

    -- ** PathMatcher
    PathMatcher (..),
    newPathMatcher,

    -- ** PathRule
    PathRule (..),
    newPathRule,

    -- ** PerInstanceConfig
    PerInstanceConfig (..),
    newPerInstanceConfig,

    -- ** PerInstanceConfig_Status
    PerInstanceConfig_Status (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PreconfiguredWafSet
    PreconfiguredWafSet (..),
    newPreconfiguredWafSet,

    -- ** PreservedState
    PreservedState (..),
    newPreservedState,

    -- ** PreservedState_Disks
    PreservedState_Disks (..),
    newPreservedState_Disks,

    -- ** PreservedState_Metadata
    PreservedState_Metadata (..),
    newPreservedState_Metadata,

    -- ** PreservedStatePreservedDisk
    PreservedStatePreservedDisk (..),
    newPreservedStatePreservedDisk,

    -- ** PreservedStatePreservedDisk_AutoDelete
    PreservedStatePreservedDisk_AutoDelete (..),

    -- ** PreservedStatePreservedDisk_Mode
    PreservedStatePreservedDisk_Mode (..),

    -- ** Project
    Project (..),
    newProject,

    -- ** Project_DefaultNetworkTier
    Project_DefaultNetworkTier (..),

    -- ** Project_XpnProjectStatus
    Project_XpnProjectStatus (..),

    -- ** ProjectsDisableXpnResourceRequest
    ProjectsDisableXpnResourceRequest (..),
    newProjectsDisableXpnResourceRequest,

    -- ** ProjectsEnableXpnResourceRequest
    ProjectsEnableXpnResourceRequest (..),
    newProjectsEnableXpnResourceRequest,

    -- ** ProjectsGetXpnResources
    ProjectsGetXpnResources (..),
    newProjectsGetXpnResources,

    -- ** ProjectsListXpnHostsRequest
    ProjectsListXpnHostsRequest (..),
    newProjectsListXpnHostsRequest,

    -- ** ProjectsSetDefaultNetworkTierRequest
    ProjectsSetDefaultNetworkTierRequest (..),
    newProjectsSetDefaultNetworkTierRequest,

    -- ** ProjectsSetDefaultNetworkTierRequest_NetworkTier
    ProjectsSetDefaultNetworkTierRequest_NetworkTier (..),

    -- ** PublicAdvertisedPrefix
    PublicAdvertisedPrefix (..),
    newPublicAdvertisedPrefix,

    -- ** PublicAdvertisedPrefix_Status
    PublicAdvertisedPrefix_Status (..),

    -- ** PublicAdvertisedPrefixList
    PublicAdvertisedPrefixList (..),
    newPublicAdvertisedPrefixList,

    -- ** PublicAdvertisedPrefixList_Warning
    PublicAdvertisedPrefixList_Warning (..),
    newPublicAdvertisedPrefixList_Warning,

    -- ** PublicAdvertisedPrefixList_Warning_Code
    PublicAdvertisedPrefixList_Warning_Code (..),

    -- ** PublicAdvertisedPrefixList_Warning_DataItem
    PublicAdvertisedPrefixList_Warning_DataItem (..),
    newPublicAdvertisedPrefixList_Warning_DataItem,

    -- ** PublicAdvertisedPrefixPublicDelegatedPrefix
    PublicAdvertisedPrefixPublicDelegatedPrefix (..),
    newPublicAdvertisedPrefixPublicDelegatedPrefix,

    -- ** PublicDelegatedPrefix
    PublicDelegatedPrefix (..),
    newPublicDelegatedPrefix,

    -- ** PublicDelegatedPrefix_Status
    PublicDelegatedPrefix_Status (..),

    -- ** PublicDelegatedPrefixAggregatedList
    PublicDelegatedPrefixAggregatedList (..),
    newPublicDelegatedPrefixAggregatedList,

    -- ** PublicDelegatedPrefixAggregatedList_Items
    PublicDelegatedPrefixAggregatedList_Items (..),
    newPublicDelegatedPrefixAggregatedList_Items,

    -- ** PublicDelegatedPrefixAggregatedList_Warning
    PublicDelegatedPrefixAggregatedList_Warning (..),
    newPublicDelegatedPrefixAggregatedList_Warning,

    -- ** PublicDelegatedPrefixAggregatedList_Warning_Code
    PublicDelegatedPrefixAggregatedList_Warning_Code (..),

    -- ** PublicDelegatedPrefixAggregatedList_Warning_DataItem
    PublicDelegatedPrefixAggregatedList_Warning_DataItem (..),
    newPublicDelegatedPrefixAggregatedList_Warning_DataItem,

    -- ** PublicDelegatedPrefixList
    PublicDelegatedPrefixList (..),
    newPublicDelegatedPrefixList,

    -- ** PublicDelegatedPrefixList_Warning
    PublicDelegatedPrefixList_Warning (..),
    newPublicDelegatedPrefixList_Warning,

    -- ** PublicDelegatedPrefixList_Warning_Code
    PublicDelegatedPrefixList_Warning_Code (..),

    -- ** PublicDelegatedPrefixList_Warning_DataItem
    PublicDelegatedPrefixList_Warning_DataItem (..),
    newPublicDelegatedPrefixList_Warning_DataItem,

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefix
    PublicDelegatedPrefixPublicDelegatedSubPrefix (..),
    newPublicDelegatedPrefixPublicDelegatedSubPrefix,

    -- ** PublicDelegatedPrefixPublicDelegatedSubPrefix_Status
    PublicDelegatedPrefixPublicDelegatedSubPrefix_Status (..),

    -- ** PublicDelegatedPrefixesScopedList
    PublicDelegatedPrefixesScopedList (..),
    newPublicDelegatedPrefixesScopedList,

    -- ** PublicDelegatedPrefixesScopedList_Warning
    PublicDelegatedPrefixesScopedList_Warning (..),
    newPublicDelegatedPrefixesScopedList_Warning,

    -- ** PublicDelegatedPrefixesScopedList_Warning_Code
    PublicDelegatedPrefixesScopedList_Warning_Code (..),

    -- ** PublicDelegatedPrefixesScopedList_Warning_DataItem
    PublicDelegatedPrefixesScopedList_Warning_DataItem (..),
    newPublicDelegatedPrefixesScopedList_Warning_DataItem,

    -- ** Quota
    Quota (..),
    newQuota,

    -- ** Quota_Metric
    Quota_Metric (..),

    -- ** Reference
    Reference (..),
    newReference,

    -- ** Region
    Region (..),
    newRegion,

    -- ** Region_Status
    Region_Status (..),

    -- ** RegionAutoscalerList
    RegionAutoscalerList (..),
    newRegionAutoscalerList,

    -- ** RegionAutoscalerList_Warning
    RegionAutoscalerList_Warning (..),
    newRegionAutoscalerList_Warning,

    -- ** RegionAutoscalerList_Warning_Code
    RegionAutoscalerList_Warning_Code (..),

    -- ** RegionAutoscalerList_Warning_DataItem
    RegionAutoscalerList_Warning_DataItem (..),
    newRegionAutoscalerList_Warning_DataItem,

    -- ** RegionDiskTypeList
    RegionDiskTypeList (..),
    newRegionDiskTypeList,

    -- ** RegionDiskTypeList_Warning
    RegionDiskTypeList_Warning (..),
    newRegionDiskTypeList_Warning,

    -- ** RegionDiskTypeList_Warning_Code
    RegionDiskTypeList_Warning_Code (..),

    -- ** RegionDiskTypeList_Warning_DataItem
    RegionDiskTypeList_Warning_DataItem (..),
    newRegionDiskTypeList_Warning_DataItem,

    -- ** RegionDisksAddResourcePoliciesRequest
    RegionDisksAddResourcePoliciesRequest (..),
    newRegionDisksAddResourcePoliciesRequest,

    -- ** RegionDisksRemoveResourcePoliciesRequest
    RegionDisksRemoveResourcePoliciesRequest (..),
    newRegionDisksRemoveResourcePoliciesRequest,

    -- ** RegionDisksResizeRequest
    RegionDisksResizeRequest (..),
    newRegionDisksResizeRequest,

    -- ** RegionInstanceGroupList
    RegionInstanceGroupList (..),
    newRegionInstanceGroupList,

    -- ** RegionInstanceGroupList_Warning
    RegionInstanceGroupList_Warning (..),
    newRegionInstanceGroupList_Warning,

    -- ** RegionInstanceGroupList_Warning_Code
    RegionInstanceGroupList_Warning_Code (..),

    -- ** RegionInstanceGroupList_Warning_DataItem
    RegionInstanceGroupList_Warning_DataItem (..),
    newRegionInstanceGroupList_Warning_DataItem,

    -- ** RegionInstanceGroupManagerDeleteInstanceConfigReq
    RegionInstanceGroupManagerDeleteInstanceConfigReq (..),
    newRegionInstanceGroupManagerDeleteInstanceConfigReq,

    -- ** RegionInstanceGroupManagerList
    RegionInstanceGroupManagerList (..),
    newRegionInstanceGroupManagerList,

    -- ** RegionInstanceGroupManagerList_Warning
    RegionInstanceGroupManagerList_Warning (..),
    newRegionInstanceGroupManagerList_Warning,

    -- ** RegionInstanceGroupManagerList_Warning_Code
    RegionInstanceGroupManagerList_Warning_Code (..),

    -- ** RegionInstanceGroupManagerList_Warning_DataItem
    RegionInstanceGroupManagerList_Warning_DataItem (..),
    newRegionInstanceGroupManagerList_Warning_DataItem,

    -- ** RegionInstanceGroupManagerPatchInstanceConfigReq
    RegionInstanceGroupManagerPatchInstanceConfigReq (..),
    newRegionInstanceGroupManagerPatchInstanceConfigReq,

    -- ** RegionInstanceGroupManagerUpdateInstanceConfigReq
    RegionInstanceGroupManagerUpdateInstanceConfigReq (..),
    newRegionInstanceGroupManagerUpdateInstanceConfigReq,

    -- ** RegionInstanceGroupManagersAbandonInstancesRequest
    RegionInstanceGroupManagersAbandonInstancesRequest (..),
    newRegionInstanceGroupManagersAbandonInstancesRequest,

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest
    RegionInstanceGroupManagersApplyUpdatesRequest (..),
    newRegionInstanceGroupManagersApplyUpdatesRequest,

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest_MinimalAction
    RegionInstanceGroupManagersApplyUpdatesRequest_MinimalAction (..),

    -- ** RegionInstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction
    RegionInstanceGroupManagersApplyUpdatesRequest_MostDisruptiveAllowedAction (..),

    -- ** RegionInstanceGroupManagersCreateInstancesRequest
    RegionInstanceGroupManagersCreateInstancesRequest (..),
    newRegionInstanceGroupManagersCreateInstancesRequest,

    -- ** RegionInstanceGroupManagersDeleteInstancesRequest
    RegionInstanceGroupManagersDeleteInstancesRequest (..),
    newRegionInstanceGroupManagersDeleteInstancesRequest,

    -- ** RegionInstanceGroupManagersListErrorsResponse
    RegionInstanceGroupManagersListErrorsResponse (..),
    newRegionInstanceGroupManagersListErrorsResponse,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp
    RegionInstanceGroupManagersListInstanceConfigsResp (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp_Warning,

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning_Code
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning_Code (..),

    -- ** RegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem
    RegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem (..),
    newRegionInstanceGroupManagersListInstanceConfigsResp_Warning_DataItem,

    -- ** RegionInstanceGroupManagersListInstancesResponse
    RegionInstanceGroupManagersListInstancesResponse (..),
    newRegionInstanceGroupManagersListInstancesResponse,

    -- ** RegionInstanceGroupManagersRecreateRequest
    RegionInstanceGroupManagersRecreateRequest (..),
    newRegionInstanceGroupManagersRecreateRequest,

    -- ** RegionInstanceGroupManagersSetTargetPoolsRequest
    RegionInstanceGroupManagersSetTargetPoolsRequest (..),
    newRegionInstanceGroupManagersSetTargetPoolsRequest,

    -- ** RegionInstanceGroupManagersSetTemplateRequest
    RegionInstanceGroupManagersSetTemplateRequest (..),
    newRegionInstanceGroupManagersSetTemplateRequest,

    -- ** RegionInstanceGroupsListInstances
    RegionInstanceGroupsListInstances (..),
    newRegionInstanceGroupsListInstances,

    -- ** RegionInstanceGroupsListInstances_Warning
    RegionInstanceGroupsListInstances_Warning (..),
    newRegionInstanceGroupsListInstances_Warning,

    -- ** RegionInstanceGroupsListInstances_Warning_Code
    RegionInstanceGroupsListInstances_Warning_Code (..),

    -- ** RegionInstanceGroupsListInstances_Warning_DataItem
    RegionInstanceGroupsListInstances_Warning_DataItem (..),
    newRegionInstanceGroupsListInstances_Warning_DataItem,

    -- ** RegionInstanceGroupsListInstancesRequest
    RegionInstanceGroupsListInstancesRequest (..),
    newRegionInstanceGroupsListInstancesRequest,

    -- ** RegionInstanceGroupsListInstancesRequest_InstanceState
    RegionInstanceGroupsListInstancesRequest_InstanceState (..),

    -- ** RegionInstanceGroupsSetNamedPortsRequest
    RegionInstanceGroupsSetNamedPortsRequest (..),
    newRegionInstanceGroupsSetNamedPortsRequest,

    -- ** RegionList
    RegionList (..),
    newRegionList,

    -- ** RegionList_Warning
    RegionList_Warning (..),
    newRegionList_Warning,

    -- ** RegionList_Warning_Code
    RegionList_Warning_Code (..),

    -- ** RegionList_Warning_DataItem
    RegionList_Warning_DataItem (..),
    newRegionList_Warning_DataItem,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse (..),
    newRegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy (..),
    newRegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy,

    -- ** RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type
    RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy_Type (..),

    -- ** RegionSetLabelsRequest
    RegionSetLabelsRequest (..),
    newRegionSetLabelsRequest,

    -- ** RegionSetLabelsRequest_Labels
    RegionSetLabelsRequest_Labels (..),
    newRegionSetLabelsRequest_Labels,

    -- ** RegionSetPolicyRequest
    RegionSetPolicyRequest (..),
    newRegionSetPolicyRequest,

    -- ** RegionTargetHttpsProxiesSetSslCertificatesRequest
    RegionTargetHttpsProxiesSetSslCertificatesRequest (..),
    newRegionTargetHttpsProxiesSetSslCertificatesRequest,

    -- ** RegionUrlMapsValidateRequest
    RegionUrlMapsValidateRequest (..),
    newRegionUrlMapsValidateRequest,

    -- ** RequestMirrorPolicy
    RequestMirrorPolicy (..),
    newRequestMirrorPolicy,

    -- ** Reservation
    Reservation (..),
    newReservation,

    -- ** Reservation_Status
    Reservation_Status (..),

    -- ** ReservationAffinity
    ReservationAffinity (..),
    newReservationAffinity,

    -- ** ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType (..),

    -- ** ReservationAggregatedList
    ReservationAggregatedList (..),
    newReservationAggregatedList,

    -- ** ReservationAggregatedList_Items
    ReservationAggregatedList_Items (..),
    newReservationAggregatedList_Items,

    -- ** ReservationAggregatedList_Warning
    ReservationAggregatedList_Warning (..),
    newReservationAggregatedList_Warning,

    -- ** ReservationAggregatedList_Warning_Code
    ReservationAggregatedList_Warning_Code (..),

    -- ** ReservationAggregatedList_Warning_DataItem
    ReservationAggregatedList_Warning_DataItem (..),
    newReservationAggregatedList_Warning_DataItem,

    -- ** ReservationList
    ReservationList (..),
    newReservationList,

    -- ** ReservationList_Warning
    ReservationList_Warning (..),
    newReservationList_Warning,

    -- ** ReservationList_Warning_Code
    ReservationList_Warning_Code (..),

    -- ** ReservationList_Warning_DataItem
    ReservationList_Warning_DataItem (..),
    newReservationList_Warning_DataItem,

    -- ** ReservationsResizeRequest
    ReservationsResizeRequest (..),
    newReservationsResizeRequest,

    -- ** ReservationsScopedList
    ReservationsScopedList (..),
    newReservationsScopedList,

    -- ** ReservationsScopedList_Warning
    ReservationsScopedList_Warning (..),
    newReservationsScopedList_Warning,

    -- ** ReservationsScopedList_Warning_Code
    ReservationsScopedList_Warning_Code (..),

    -- ** ReservationsScopedList_Warning_DataItem
    ReservationsScopedList_Warning_DataItem (..),
    newReservationsScopedList_Warning_DataItem,

    -- ** ResourceCommitment
    ResourceCommitment (..),
    newResourceCommitment,

    -- ** ResourceCommitment_Type
    ResourceCommitment_Type (..),

    -- ** ResourceGroupReference
    ResourceGroupReference (..),
    newResourceGroupReference,

    -- ** ResourcePoliciesScopedList
    ResourcePoliciesScopedList (..),
    newResourcePoliciesScopedList,

    -- ** ResourcePoliciesScopedList_Warning
    ResourcePoliciesScopedList_Warning (..),
    newResourcePoliciesScopedList_Warning,

    -- ** ResourcePoliciesScopedList_Warning_Code
    ResourcePoliciesScopedList_Warning_Code (..),

    -- ** ResourcePoliciesScopedList_Warning_DataItem
    ResourcePoliciesScopedList_Warning_DataItem (..),
    newResourcePoliciesScopedList_Warning_DataItem,

    -- ** ResourcePolicy
    ResourcePolicy (..),
    newResourcePolicy,

    -- ** ResourcePolicy_Status
    ResourcePolicy_Status (..),

    -- ** ResourcePolicyAggregatedList
    ResourcePolicyAggregatedList (..),
    newResourcePolicyAggregatedList,

    -- ** ResourcePolicyAggregatedList_Items
    ResourcePolicyAggregatedList_Items (..),
    newResourcePolicyAggregatedList_Items,

    -- ** ResourcePolicyAggregatedList_Warning
    ResourcePolicyAggregatedList_Warning (..),
    newResourcePolicyAggregatedList_Warning,

    -- ** ResourcePolicyAggregatedList_Warning_Code
    ResourcePolicyAggregatedList_Warning_Code (..),

    -- ** ResourcePolicyAggregatedList_Warning_DataItem
    ResourcePolicyAggregatedList_Warning_DataItem (..),
    newResourcePolicyAggregatedList_Warning_DataItem,

    -- ** ResourcePolicyDailyCycle
    ResourcePolicyDailyCycle (..),
    newResourcePolicyDailyCycle,

    -- ** ResourcePolicyGroupPlacementPolicy
    ResourcePolicyGroupPlacementPolicy (..),
    newResourcePolicyGroupPlacementPolicy,

    -- ** ResourcePolicyGroupPlacementPolicy_Collocation
    ResourcePolicyGroupPlacementPolicy_Collocation (..),

    -- ** ResourcePolicyHourlyCycle
    ResourcePolicyHourlyCycle (..),
    newResourcePolicyHourlyCycle,

    -- ** ResourcePolicyInstanceSchedulePolicy
    ResourcePolicyInstanceSchedulePolicy (..),
    newResourcePolicyInstanceSchedulePolicy,

    -- ** ResourcePolicyInstanceSchedulePolicySchedule
    ResourcePolicyInstanceSchedulePolicySchedule (..),
    newResourcePolicyInstanceSchedulePolicySchedule,

    -- ** ResourcePolicyList
    ResourcePolicyList (..),
    newResourcePolicyList,

    -- ** ResourcePolicyList_Warning
    ResourcePolicyList_Warning (..),
    newResourcePolicyList_Warning,

    -- ** ResourcePolicyList_Warning_Code
    ResourcePolicyList_Warning_Code (..),

    -- ** ResourcePolicyList_Warning_DataItem
    ResourcePolicyList_Warning_DataItem (..),
    newResourcePolicyList_Warning_DataItem,

    -- ** ResourcePolicyResourceStatus
    ResourcePolicyResourceStatus (..),
    newResourcePolicyResourceStatus,

    -- ** ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    ResourcePolicyResourceStatusInstanceSchedulePolicyStatus (..),
    newResourcePolicyResourceStatusInstanceSchedulePolicyStatus,

    -- ** ResourcePolicySnapshotSchedulePolicy
    ResourcePolicySnapshotSchedulePolicy (..),
    newResourcePolicySnapshotSchedulePolicy,

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    ResourcePolicySnapshotSchedulePolicyRetentionPolicy (..),
    newResourcePolicySnapshotSchedulePolicyRetentionPolicy,

    -- ** ResourcePolicySnapshotSchedulePolicyRetentionPolicy_OnSourceDiskDelete
    ResourcePolicySnapshotSchedulePolicyRetentionPolicy_OnSourceDiskDelete (..),

    -- ** ResourcePolicySnapshotSchedulePolicySchedule
    ResourcePolicySnapshotSchedulePolicySchedule (..),
    newResourcePolicySnapshotSchedulePolicySchedule,

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotProperties
    ResourcePolicySnapshotSchedulePolicySnapshotProperties (..),
    newResourcePolicySnapshotSchedulePolicySnapshotProperties,

    -- ** ResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels
    ResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels (..),
    newResourcePolicySnapshotSchedulePolicySnapshotProperties_Labels,

    -- ** ResourcePolicyWeeklyCycle
    ResourcePolicyWeeklyCycle (..),
    newResourcePolicyWeeklyCycle,

    -- ** ResourcePolicyWeeklyCycleDayOfWeek
    ResourcePolicyWeeklyCycleDayOfWeek (..),
    newResourcePolicyWeeklyCycleDayOfWeek,

    -- ** ResourcePolicyWeeklyCycleDayOfWeek_Day
    ResourcePolicyWeeklyCycleDayOfWeek_Day (..),

    -- ** Route
    Route (..),
    newRoute,

    -- ** Route_RouteType
    Route_RouteType (..),

    -- ** Route_WarningsItem
    Route_WarningsItem (..),
    newRoute_WarningsItem,

    -- ** Route_WarningsItem_Code
    Route_WarningsItem_Code (..),

    -- ** Route_WarningsItem_DataItem
    Route_WarningsItem_DataItem (..),
    newRoute_WarningsItem_DataItem,

    -- ** RouteAsPath
    RouteAsPath (..),
    newRouteAsPath,

    -- ** RouteAsPath_PathSegmentType
    RouteAsPath_PathSegmentType (..),

    -- ** RouteList
    RouteList (..),
    newRouteList,

    -- ** RouteList_Warning
    RouteList_Warning (..),
    newRouteList_Warning,

    -- ** RouteList_Warning_Code
    RouteList_Warning_Code (..),

    -- ** RouteList_Warning_DataItem
    RouteList_Warning_DataItem (..),
    newRouteList_Warning_DataItem,

    -- ** Router
    Router (..),
    newRouter,

    -- ** RouterAdvertisedIpRange
    RouterAdvertisedIpRange (..),
    newRouterAdvertisedIpRange,

    -- ** RouterAggregatedList
    RouterAggregatedList (..),
    newRouterAggregatedList,

    -- ** RouterAggregatedList_Items
    RouterAggregatedList_Items (..),
    newRouterAggregatedList_Items,

    -- ** RouterAggregatedList_Warning
    RouterAggregatedList_Warning (..),
    newRouterAggregatedList_Warning,

    -- ** RouterAggregatedList_Warning_Code
    RouterAggregatedList_Warning_Code (..),

    -- ** RouterAggregatedList_Warning_DataItem
    RouterAggregatedList_Warning_DataItem (..),
    newRouterAggregatedList_Warning_DataItem,

    -- ** RouterBgp
    RouterBgp (..),
    newRouterBgp,

    -- ** RouterBgp_AdvertiseMode
    RouterBgp_AdvertiseMode (..),

    -- ** RouterBgp_AdvertisedGroupsItem
    RouterBgp_AdvertisedGroupsItem (..),

    -- ** RouterBgpPeer
    RouterBgpPeer (..),
    newRouterBgpPeer,

    -- ** RouterBgpPeer_AdvertiseMode
    RouterBgpPeer_AdvertiseMode (..),

    -- ** RouterBgpPeer_AdvertisedGroupsItem
    RouterBgpPeer_AdvertisedGroupsItem (..),

    -- ** RouterBgpPeer_Enable
    RouterBgpPeer_Enable (..),

    -- ** RouterBgpPeer_ManagementType
    RouterBgpPeer_ManagementType (..),

    -- ** RouterBgpPeerBfd
    RouterBgpPeerBfd (..),
    newRouterBgpPeerBfd,

    -- ** RouterBgpPeerBfd_SessionInitializationMode
    RouterBgpPeerBfd_SessionInitializationMode (..),

    -- ** RouterInterface
    RouterInterface (..),
    newRouterInterface,

    -- ** RouterInterface_ManagementType
    RouterInterface_ManagementType (..),

    -- ** RouterList
    RouterList (..),
    newRouterList,

    -- ** RouterList_Warning
    RouterList_Warning (..),
    newRouterList_Warning,

    -- ** RouterList_Warning_Code
    RouterList_Warning_Code (..),

    -- ** RouterList_Warning_DataItem
    RouterList_Warning_DataItem (..),
    newRouterList_Warning_DataItem,

    -- ** RouterNat
    RouterNat (..),
    newRouterNat,

    -- ** RouterNat_NatIpAllocateOption
    RouterNat_NatIpAllocateOption (..),

    -- ** RouterNat_SourceSubnetworkIpRangesToNat
    RouterNat_SourceSubnetworkIpRangesToNat (..),

    -- ** RouterNatLogConfig
    RouterNatLogConfig (..),
    newRouterNatLogConfig,

    -- ** RouterNatLogConfig_Filter
    RouterNatLogConfig_Filter (..),

    -- ** RouterNatRule
    RouterNatRule (..),
    newRouterNatRule,

    -- ** RouterNatRuleAction
    RouterNatRuleAction (..),
    newRouterNatRuleAction,

    -- ** RouterNatSubnetworkToNat
    RouterNatSubnetworkToNat (..),
    newRouterNatSubnetworkToNat,

    -- ** RouterNatSubnetworkToNat_SourceIpRangesToNatItem
    RouterNatSubnetworkToNat_SourceIpRangesToNatItem (..),

    -- ** RouterStatus
    RouterStatus (..),
    newRouterStatus,

    -- ** RouterStatusBgpPeerStatus
    RouterStatusBgpPeerStatus (..),
    newRouterStatusBgpPeerStatus,

    -- ** RouterStatusBgpPeerStatus_Status
    RouterStatusBgpPeerStatus_Status (..),

    -- ** RouterStatusNatStatus
    RouterStatusNatStatus (..),
    newRouterStatusNatStatus,

    -- ** RouterStatusNatStatusNatRuleStatus
    RouterStatusNatStatusNatRuleStatus (..),
    newRouterStatusNatStatusNatRuleStatus,

    -- ** RouterStatusResponse
    RouterStatusResponse (..),
    newRouterStatusResponse,

    -- ** RoutersPreviewResponse
    RoutersPreviewResponse (..),
    newRoutersPreviewResponse,

    -- ** RoutersScopedList
    RoutersScopedList (..),
    newRoutersScopedList,

    -- ** RoutersScopedList_Warning
    RoutersScopedList_Warning (..),
    newRoutersScopedList_Warning,

    -- ** RoutersScopedList_Warning_Code
    RoutersScopedList_Warning_Code (..),

    -- ** RoutersScopedList_Warning_DataItem
    RoutersScopedList_Warning_DataItem (..),
    newRoutersScopedList_Warning_DataItem,

    -- ** Rule
    Rule (..),
    newRule,

    -- ** Rule_Action
    Rule_Action (..),

    -- ** SSLHealthCheck
    SSLHealthCheck (..),
    newSSLHealthCheck,

    -- ** SSLHealthCheck_PortSpecification
    SSLHealthCheck_PortSpecification (..),

    -- ** SSLHealthCheck_ProxyHeader
    SSLHealthCheck_ProxyHeader (..),

    -- ** SavedAttachedDisk
    SavedAttachedDisk (..),
    newSavedAttachedDisk,

    -- ** SavedAttachedDisk_Interface
    SavedAttachedDisk_Interface (..),

    -- ** SavedAttachedDisk_Mode
    SavedAttachedDisk_Mode (..),

    -- ** SavedAttachedDisk_StorageBytesStatus
    SavedAttachedDisk_StorageBytesStatus (..),

    -- ** SavedAttachedDisk_Type
    SavedAttachedDisk_Type (..),

    -- ** SavedDisk
    SavedDisk (..),
    newSavedDisk,

    -- ** SavedDisk_StorageBytesStatus
    SavedDisk_StorageBytesStatus (..),

    -- ** ScalingScheduleStatus
    ScalingScheduleStatus (..),
    newScalingScheduleStatus,

    -- ** ScalingScheduleStatus_State
    ScalingScheduleStatus_State (..),

    -- ** Scheduling
    Scheduling (..),
    newScheduling,

    -- ** Scheduling_InstanceTerminationAction
    Scheduling_InstanceTerminationAction (..),

    -- ** Scheduling_OnHostMaintenance
    Scheduling_OnHostMaintenance (..),

    -- ** Scheduling_ProvisioningModel
    Scheduling_ProvisioningModel (..),

    -- ** SchedulingNodeAffinity
    SchedulingNodeAffinity (..),
    newSchedulingNodeAffinity,

    -- ** SchedulingNodeAffinity_Operator
    SchedulingNodeAffinity_Operator (..),

    -- ** Screenshot
    Screenshot (..),
    newScreenshot,

    -- ** SecurityPoliciesListPreconfiguredExpressionSetsResponse
    SecurityPoliciesListPreconfiguredExpressionSetsResponse (..),
    newSecurityPoliciesListPreconfiguredExpressionSetsResponse,

    -- ** SecurityPoliciesWafConfig
    SecurityPoliciesWafConfig (..),
    newSecurityPoliciesWafConfig,

    -- ** SecurityPolicy
    SecurityPolicy (..),
    newSecurityPolicy,

    -- ** SecurityPolicy_Type
    SecurityPolicy_Type (..),

    -- ** SecurityPolicyAdaptiveProtectionConfig
    SecurityPolicyAdaptiveProtectionConfig (..),
    newSecurityPolicyAdaptiveProtectionConfig,

    -- ** SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig (..),
    newSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig,

    -- ** SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig_RuleVisibility
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig_RuleVisibility (..),

    -- ** SecurityPolicyAdvancedOptionsConfig
    SecurityPolicyAdvancedOptionsConfig (..),
    newSecurityPolicyAdvancedOptionsConfig,

    -- ** SecurityPolicyAdvancedOptionsConfig_JsonParsing
    SecurityPolicyAdvancedOptionsConfig_JsonParsing (..),

    -- ** SecurityPolicyAdvancedOptionsConfig_LogLevel
    SecurityPolicyAdvancedOptionsConfig_LogLevel (..),

    -- ** SecurityPolicyList
    SecurityPolicyList (..),
    newSecurityPolicyList,

    -- ** SecurityPolicyList_Warning
    SecurityPolicyList_Warning (..),
    newSecurityPolicyList_Warning,

    -- ** SecurityPolicyList_Warning_Code
    SecurityPolicyList_Warning_Code (..),

    -- ** SecurityPolicyList_Warning_DataItem
    SecurityPolicyList_Warning_DataItem (..),
    newSecurityPolicyList_Warning_DataItem,

    -- ** SecurityPolicyRecaptchaOptionsConfig
    SecurityPolicyRecaptchaOptionsConfig (..),
    newSecurityPolicyRecaptchaOptionsConfig,

    -- ** SecurityPolicyReference
    SecurityPolicyReference (..),
    newSecurityPolicyReference,

    -- ** SecurityPolicyRule
    SecurityPolicyRule (..),
    newSecurityPolicyRule,

    -- ** SecurityPolicyRuleHttpHeaderAction
    SecurityPolicyRuleHttpHeaderAction (..),
    newSecurityPolicyRuleHttpHeaderAction,

    -- ** SecurityPolicyRuleHttpHeaderActionHttpHeaderOption
    SecurityPolicyRuleHttpHeaderActionHttpHeaderOption (..),
    newSecurityPolicyRuleHttpHeaderActionHttpHeaderOption,

    -- ** SecurityPolicyRuleMatcher
    SecurityPolicyRuleMatcher (..),
    newSecurityPolicyRuleMatcher,

    -- ** SecurityPolicyRuleMatcher_VersionedExpr
    SecurityPolicyRuleMatcher_VersionedExpr (..),

    -- ** SecurityPolicyRuleMatcherConfig
    SecurityPolicyRuleMatcherConfig (..),
    newSecurityPolicyRuleMatcherConfig,

    -- ** SecurityPolicyRuleRateLimitOptions
    SecurityPolicyRuleRateLimitOptions (..),
    newSecurityPolicyRuleRateLimitOptions,

    -- ** SecurityPolicyRuleRateLimitOptions_EnforceOnKey
    SecurityPolicyRuleRateLimitOptions_EnforceOnKey (..),

    -- ** SecurityPolicyRuleRateLimitOptionsThreshold
    SecurityPolicyRuleRateLimitOptionsThreshold (..),
    newSecurityPolicyRuleRateLimitOptionsThreshold,

    -- ** SecurityPolicyRuleRedirectOptions
    SecurityPolicyRuleRedirectOptions (..),
    newSecurityPolicyRuleRedirectOptions,

    -- ** SecurityPolicyRuleRedirectOptions_Type
    SecurityPolicyRuleRedirectOptions_Type (..),

    -- ** SecuritySettings
    SecuritySettings (..),
    newSecuritySettings,

    -- ** SerialPortOutput
    SerialPortOutput (..),
    newSerialPortOutput,

    -- ** ServerBinding
    ServerBinding (..),
    newServerBinding,

    -- ** ServerBinding_Type
    ServerBinding_Type (..),

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceAttachment
    ServiceAttachment (..),
    newServiceAttachment,

    -- ** ServiceAttachment_ConnectionPreference
    ServiceAttachment_ConnectionPreference (..),

    -- ** ServiceAttachmentAggregatedList
    ServiceAttachmentAggregatedList (..),
    newServiceAttachmentAggregatedList,

    -- ** ServiceAttachmentAggregatedList_Items
    ServiceAttachmentAggregatedList_Items (..),
    newServiceAttachmentAggregatedList_Items,

    -- ** ServiceAttachmentAggregatedList_Warning
    ServiceAttachmentAggregatedList_Warning (..),
    newServiceAttachmentAggregatedList_Warning,

    -- ** ServiceAttachmentAggregatedList_Warning_Code
    ServiceAttachmentAggregatedList_Warning_Code (..),

    -- ** ServiceAttachmentAggregatedList_Warning_DataItem
    ServiceAttachmentAggregatedList_Warning_DataItem (..),
    newServiceAttachmentAggregatedList_Warning_DataItem,

    -- ** ServiceAttachmentConnectedEndpoint
    ServiceAttachmentConnectedEndpoint (..),
    newServiceAttachmentConnectedEndpoint,

    -- ** ServiceAttachmentConnectedEndpoint_Status
    ServiceAttachmentConnectedEndpoint_Status (..),

    -- ** ServiceAttachmentConsumerProjectLimit
    ServiceAttachmentConsumerProjectLimit (..),
    newServiceAttachmentConsumerProjectLimit,

    -- ** ServiceAttachmentList
    ServiceAttachmentList (..),
    newServiceAttachmentList,

    -- ** ServiceAttachmentList_Warning
    ServiceAttachmentList_Warning (..),
    newServiceAttachmentList_Warning,

    -- ** ServiceAttachmentList_Warning_Code
    ServiceAttachmentList_Warning_Code (..),

    -- ** ServiceAttachmentList_Warning_DataItem
    ServiceAttachmentList_Warning_DataItem (..),
    newServiceAttachmentList_Warning_DataItem,

    -- ** ServiceAttachmentsScopedList
    ServiceAttachmentsScopedList (..),
    newServiceAttachmentsScopedList,

    -- ** ServiceAttachmentsScopedList_Warning
    ServiceAttachmentsScopedList_Warning (..),
    newServiceAttachmentsScopedList_Warning,

    -- ** ServiceAttachmentsScopedList_Warning_Code
    ServiceAttachmentsScopedList_Warning_Code (..),

    -- ** ServiceAttachmentsScopedList_Warning_DataItem
    ServiceAttachmentsScopedList_Warning_DataItem (..),
    newServiceAttachmentsScopedList_Warning_DataItem,

    -- ** ShareSettings
    ShareSettings (..),
    newShareSettings,

    -- ** ShareSettings_ProjectMap
    ShareSettings_ProjectMap (..),
    newShareSettings_ProjectMap,

    -- ** ShareSettings_ShareType
    ShareSettings_ShareType (..),

    -- ** ShareSettingsProjectConfig
    ShareSettingsProjectConfig (..),
    newShareSettingsProjectConfig,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** ShieldedInstanceIdentity
    ShieldedInstanceIdentity (..),
    newShieldedInstanceIdentity,

    -- ** ShieldedInstanceIdentityEntry
    ShieldedInstanceIdentityEntry (..),
    newShieldedInstanceIdentityEntry,

    -- ** ShieldedInstanceIntegrityPolicy
    ShieldedInstanceIntegrityPolicy (..),
    newShieldedInstanceIntegrityPolicy,

    -- ** SignedUrlKey
    SignedUrlKey (..),
    newSignedUrlKey,

    -- ** Snapshot
    Snapshot (..),
    newSnapshot,

    -- ** Snapshot_Labels
    Snapshot_Labels (..),
    newSnapshot_Labels,

    -- ** Snapshot_Status
    Snapshot_Status (..),

    -- ** Snapshot_StorageBytesStatus
    Snapshot_StorageBytesStatus (..),

    -- ** SnapshotList
    SnapshotList (..),
    newSnapshotList,

    -- ** SnapshotList_Warning
    SnapshotList_Warning (..),
    newSnapshotList_Warning,

    -- ** SnapshotList_Warning_Code
    SnapshotList_Warning_Code (..),

    -- ** SnapshotList_Warning_DataItem
    SnapshotList_Warning_DataItem (..),
    newSnapshotList_Warning_DataItem,

    -- ** SourceDiskEncryptionKey
    SourceDiskEncryptionKey (..),
    newSourceDiskEncryptionKey,

    -- ** SourceInstanceParams
    SourceInstanceParams (..),
    newSourceInstanceParams,

    -- ** SourceInstanceProperties
    SourceInstanceProperties (..),
    newSourceInstanceProperties,

    -- ** SourceInstanceProperties_Labels
    SourceInstanceProperties_Labels (..),
    newSourceInstanceProperties_Labels,

    -- ** SslCertificate
    SslCertificate (..),
    newSslCertificate,

    -- ** SslCertificate_Type
    SslCertificate_Type (..),

    -- ** SslCertificateAggregatedList
    SslCertificateAggregatedList (..),
    newSslCertificateAggregatedList,

    -- ** SslCertificateAggregatedList_Items
    SslCertificateAggregatedList_Items (..),
    newSslCertificateAggregatedList_Items,

    -- ** SslCertificateAggregatedList_Warning
    SslCertificateAggregatedList_Warning (..),
    newSslCertificateAggregatedList_Warning,

    -- ** SslCertificateAggregatedList_Warning_Code
    SslCertificateAggregatedList_Warning_Code (..),

    -- ** SslCertificateAggregatedList_Warning_DataItem
    SslCertificateAggregatedList_Warning_DataItem (..),
    newSslCertificateAggregatedList_Warning_DataItem,

    -- ** SslCertificateList
    SslCertificateList (..),
    newSslCertificateList,

    -- ** SslCertificateList_Warning
    SslCertificateList_Warning (..),
    newSslCertificateList_Warning,

    -- ** SslCertificateList_Warning_Code
    SslCertificateList_Warning_Code (..),

    -- ** SslCertificateList_Warning_DataItem
    SslCertificateList_Warning_DataItem (..),
    newSslCertificateList_Warning_DataItem,

    -- ** SslCertificateManagedSslCertificate
    SslCertificateManagedSslCertificate (..),
    newSslCertificateManagedSslCertificate,

    -- ** SslCertificateManagedSslCertificate_DomainStatus
    SslCertificateManagedSslCertificate_DomainStatus (..),
    newSslCertificateManagedSslCertificate_DomainStatus,

    -- ** SslCertificateManagedSslCertificate_DomainStatusAdditional
    SslCertificateManagedSslCertificate_DomainStatusAdditional (..),

    -- ** SslCertificateManagedSslCertificate_Status
    SslCertificateManagedSslCertificate_Status (..),

    -- ** SslCertificateSelfManagedSslCertificate
    SslCertificateSelfManagedSslCertificate (..),
    newSslCertificateSelfManagedSslCertificate,

    -- ** SslCertificatesScopedList
    SslCertificatesScopedList (..),
    newSslCertificatesScopedList,

    -- ** SslCertificatesScopedList_Warning
    SslCertificatesScopedList_Warning (..),
    newSslCertificatesScopedList_Warning,

    -- ** SslCertificatesScopedList_Warning_Code
    SslCertificatesScopedList_Warning_Code (..),

    -- ** SslCertificatesScopedList_Warning_DataItem
    SslCertificatesScopedList_Warning_DataItem (..),
    newSslCertificatesScopedList_Warning_DataItem,

    -- ** SslPoliciesList
    SslPoliciesList (..),
    newSslPoliciesList,

    -- ** SslPoliciesList_Warning
    SslPoliciesList_Warning (..),
    newSslPoliciesList_Warning,

    -- ** SslPoliciesList_Warning_Code
    SslPoliciesList_Warning_Code (..),

    -- ** SslPoliciesList_Warning_DataItem
    SslPoliciesList_Warning_DataItem (..),
    newSslPoliciesList_Warning_DataItem,

    -- ** SslPoliciesListAvailableFeaturesResponse
    SslPoliciesListAvailableFeaturesResponse (..),
    newSslPoliciesListAvailableFeaturesResponse,

    -- ** SslPolicy
    SslPolicy (..),
    newSslPolicy,

    -- ** SslPolicy_MinTlsVersion
    SslPolicy_MinTlsVersion (..),

    -- ** SslPolicy_Profile
    SslPolicy_Profile (..),

    -- ** SslPolicy_WarningsItem
    SslPolicy_WarningsItem (..),
    newSslPolicy_WarningsItem,

    -- ** SslPolicy_WarningsItem_Code
    SslPolicy_WarningsItem_Code (..),

    -- ** SslPolicy_WarningsItem_DataItem
    SslPolicy_WarningsItem_DataItem (..),
    newSslPolicy_WarningsItem_DataItem,

    -- ** SslPolicyReference
    SslPolicyReference (..),
    newSslPolicyReference,

    -- ** StatefulPolicy
    StatefulPolicy (..),
    newStatefulPolicy,

    -- ** StatefulPolicyPreservedState
    StatefulPolicyPreservedState (..),
    newStatefulPolicyPreservedState,

    -- ** StatefulPolicyPreservedState_Disks
    StatefulPolicyPreservedState_Disks (..),
    newStatefulPolicyPreservedState_Disks,

    -- ** StatefulPolicyPreservedStateDiskDevice
    StatefulPolicyPreservedStateDiskDevice (..),
    newStatefulPolicyPreservedStateDiskDevice,

    -- ** StatefulPolicyPreservedStateDiskDevice_AutoDelete
    StatefulPolicyPreservedStateDiskDevice_AutoDelete (..),

    -- ** Subnetwork
    Subnetwork (..),
    newSubnetwork,

    -- ** Subnetwork_Ipv6AccessType
    Subnetwork_Ipv6AccessType (..),

    -- ** Subnetwork_PrivateIpv6GoogleAccess
    Subnetwork_PrivateIpv6GoogleAccess (..),

    -- ** Subnetwork_Purpose
    Subnetwork_Purpose (..),

    -- ** Subnetwork_Role
    Subnetwork_Role (..),

    -- ** Subnetwork_StackType
    Subnetwork_StackType (..),

    -- ** Subnetwork_State
    Subnetwork_State (..),

    -- ** SubnetworkAggregatedList
    SubnetworkAggregatedList (..),
    newSubnetworkAggregatedList,

    -- ** SubnetworkAggregatedList_Items
    SubnetworkAggregatedList_Items (..),
    newSubnetworkAggregatedList_Items,

    -- ** SubnetworkAggregatedList_Warning
    SubnetworkAggregatedList_Warning (..),
    newSubnetworkAggregatedList_Warning,

    -- ** SubnetworkAggregatedList_Warning_Code
    SubnetworkAggregatedList_Warning_Code (..),

    -- ** SubnetworkAggregatedList_Warning_DataItem
    SubnetworkAggregatedList_Warning_DataItem (..),
    newSubnetworkAggregatedList_Warning_DataItem,

    -- ** SubnetworkList
    SubnetworkList (..),
    newSubnetworkList,

    -- ** SubnetworkList_Warning
    SubnetworkList_Warning (..),
    newSubnetworkList_Warning,

    -- ** SubnetworkList_Warning_Code
    SubnetworkList_Warning_Code (..),

    -- ** SubnetworkList_Warning_DataItem
    SubnetworkList_Warning_DataItem (..),
    newSubnetworkList_Warning_DataItem,

    -- ** SubnetworkLogConfig
    SubnetworkLogConfig (..),
    newSubnetworkLogConfig,

    -- ** SubnetworkLogConfig_AggregationInterval
    SubnetworkLogConfig_AggregationInterval (..),

    -- ** SubnetworkLogConfig_Metadata
    SubnetworkLogConfig_Metadata (..),

    -- ** SubnetworkSecondaryRange
    SubnetworkSecondaryRange (..),
    newSubnetworkSecondaryRange,

    -- ** SubnetworksExpandIpCidrRangeRequest
    SubnetworksExpandIpCidrRangeRequest (..),
    newSubnetworksExpandIpCidrRangeRequest,

    -- ** SubnetworksScopedList
    SubnetworksScopedList (..),
    newSubnetworksScopedList,

    -- ** SubnetworksScopedList_Warning
    SubnetworksScopedList_Warning (..),
    newSubnetworksScopedList_Warning,

    -- ** SubnetworksScopedList_Warning_Code
    SubnetworksScopedList_Warning_Code (..),

    -- ** SubnetworksScopedList_Warning_DataItem
    SubnetworksScopedList_Warning_DataItem (..),
    newSubnetworksScopedList_Warning_DataItem,

    -- ** SubnetworksSetPrivateIpGoogleAccessRequest
    SubnetworksSetPrivateIpGoogleAccessRequest (..),
    newSubnetworksSetPrivateIpGoogleAccessRequest,

    -- ** Subsetting
    Subsetting (..),
    newSubsetting,

    -- ** Subsetting_Policy
    Subsetting_Policy (..),

    -- ** TCPHealthCheck
    TCPHealthCheck (..),
    newTCPHealthCheck,

    -- ** TCPHealthCheck_PortSpecification
    TCPHealthCheck_PortSpecification (..),

    -- ** TCPHealthCheck_ProxyHeader
    TCPHealthCheck_ProxyHeader (..),

    -- ** Tags
    Tags (..),
    newTags,

    -- ** TargetGrpcProxy
    TargetGrpcProxy (..),
    newTargetGrpcProxy,

    -- ** TargetGrpcProxyList
    TargetGrpcProxyList (..),
    newTargetGrpcProxyList,

    -- ** TargetGrpcProxyList_Warning
    TargetGrpcProxyList_Warning (..),
    newTargetGrpcProxyList_Warning,

    -- ** TargetGrpcProxyList_Warning_Code
    TargetGrpcProxyList_Warning_Code (..),

    -- ** TargetGrpcProxyList_Warning_DataItem
    TargetGrpcProxyList_Warning_DataItem (..),
    newTargetGrpcProxyList_Warning_DataItem,

    -- ** TargetHttpProxiesScopedList
    TargetHttpProxiesScopedList (..),
    newTargetHttpProxiesScopedList,

    -- ** TargetHttpProxiesScopedList_Warning
    TargetHttpProxiesScopedList_Warning (..),
    newTargetHttpProxiesScopedList_Warning,

    -- ** TargetHttpProxiesScopedList_Warning_Code
    TargetHttpProxiesScopedList_Warning_Code (..),

    -- ** TargetHttpProxiesScopedList_Warning_DataItem
    TargetHttpProxiesScopedList_Warning_DataItem (..),
    newTargetHttpProxiesScopedList_Warning_DataItem,

    -- ** TargetHttpProxy
    TargetHttpProxy (..),
    newTargetHttpProxy,

    -- ** TargetHttpProxyAggregatedList
    TargetHttpProxyAggregatedList (..),
    newTargetHttpProxyAggregatedList,

    -- ** TargetHttpProxyAggregatedList_Items
    TargetHttpProxyAggregatedList_Items (..),
    newTargetHttpProxyAggregatedList_Items,

    -- ** TargetHttpProxyList
    TargetHttpProxyList (..),
    newTargetHttpProxyList,

    -- ** TargetHttpProxyList_Warning
    TargetHttpProxyList_Warning (..),
    newTargetHttpProxyList_Warning,

    -- ** TargetHttpProxyList_Warning_Code
    TargetHttpProxyList_Warning_Code (..),

    -- ** TargetHttpProxyList_Warning_DataItem
    TargetHttpProxyList_Warning_DataItem (..),
    newTargetHttpProxyList_Warning_DataItem,

    -- ** TargetHttpsProxiesScopedList
    TargetHttpsProxiesScopedList (..),
    newTargetHttpsProxiesScopedList,

    -- ** TargetHttpsProxiesScopedList_Warning
    TargetHttpsProxiesScopedList_Warning (..),
    newTargetHttpsProxiesScopedList_Warning,

    -- ** TargetHttpsProxiesScopedList_Warning_Code
    TargetHttpsProxiesScopedList_Warning_Code (..),

    -- ** TargetHttpsProxiesScopedList_Warning_DataItem
    TargetHttpsProxiesScopedList_Warning_DataItem (..),
    newTargetHttpsProxiesScopedList_Warning_DataItem,

    -- ** TargetHttpsProxiesSetQuicOverrideRequest
    TargetHttpsProxiesSetQuicOverrideRequest (..),
    newTargetHttpsProxiesSetQuicOverrideRequest,

    -- ** TargetHttpsProxiesSetQuicOverrideRequest_QuicOverride
    TargetHttpsProxiesSetQuicOverrideRequest_QuicOverride (..),

    -- ** TargetHttpsProxiesSetSslCertificatesRequest
    TargetHttpsProxiesSetSslCertificatesRequest (..),
    newTargetHttpsProxiesSetSslCertificatesRequest,

    -- ** TargetHttpsProxy
    TargetHttpsProxy (..),
    newTargetHttpsProxy,

    -- ** TargetHttpsProxy_QuicOverride
    TargetHttpsProxy_QuicOverride (..),

    -- ** TargetHttpsProxyAggregatedList
    TargetHttpsProxyAggregatedList (..),
    newTargetHttpsProxyAggregatedList,

    -- ** TargetHttpsProxyAggregatedList_Items
    TargetHttpsProxyAggregatedList_Items (..),
    newTargetHttpsProxyAggregatedList_Items,

    -- ** TargetHttpsProxyAggregatedList_Warning
    TargetHttpsProxyAggregatedList_Warning (..),
    newTargetHttpsProxyAggregatedList_Warning,

    -- ** TargetHttpsProxyAggregatedList_Warning_Code
    TargetHttpsProxyAggregatedList_Warning_Code (..),

    -- ** TargetHttpsProxyAggregatedList_Warning_DataItem
    TargetHttpsProxyAggregatedList_Warning_DataItem (..),
    newTargetHttpsProxyAggregatedList_Warning_DataItem,

    -- ** TargetHttpsProxyList
    TargetHttpsProxyList (..),
    newTargetHttpsProxyList,

    -- ** TargetHttpsProxyList_Warning
    TargetHttpsProxyList_Warning (..),
    newTargetHttpsProxyList_Warning,

    -- ** TargetHttpsProxyList_Warning_Code
    TargetHttpsProxyList_Warning_Code (..),

    -- ** TargetHttpsProxyList_Warning_DataItem
    TargetHttpsProxyList_Warning_DataItem (..),
    newTargetHttpsProxyList_Warning_DataItem,

    -- ** TargetInstance
    TargetInstance (..),
    newTargetInstance,

    -- ** TargetInstance_NatPolicy
    TargetInstance_NatPolicy (..),

    -- ** TargetInstanceAggregatedList
    TargetInstanceAggregatedList (..),
    newTargetInstanceAggregatedList,

    -- ** TargetInstanceAggregatedList_Items
    TargetInstanceAggregatedList_Items (..),
    newTargetInstanceAggregatedList_Items,

    -- ** TargetInstanceAggregatedList_Warning
    TargetInstanceAggregatedList_Warning (..),
    newTargetInstanceAggregatedList_Warning,

    -- ** TargetInstanceAggregatedList_Warning_Code
    TargetInstanceAggregatedList_Warning_Code (..),

    -- ** TargetInstanceAggregatedList_Warning_DataItem
    TargetInstanceAggregatedList_Warning_DataItem (..),
    newTargetInstanceAggregatedList_Warning_DataItem,

    -- ** TargetInstanceList
    TargetInstanceList (..),
    newTargetInstanceList,

    -- ** TargetInstanceList_Warning
    TargetInstanceList_Warning (..),
    newTargetInstanceList_Warning,

    -- ** TargetInstanceList_Warning_Code
    TargetInstanceList_Warning_Code (..),

    -- ** TargetInstanceList_Warning_DataItem
    TargetInstanceList_Warning_DataItem (..),
    newTargetInstanceList_Warning_DataItem,

    -- ** TargetInstancesScopedList
    TargetInstancesScopedList (..),
    newTargetInstancesScopedList,

    -- ** TargetInstancesScopedList_Warning
    TargetInstancesScopedList_Warning (..),
    newTargetInstancesScopedList_Warning,

    -- ** TargetInstancesScopedList_Warning_Code
    TargetInstancesScopedList_Warning_Code (..),

    -- ** TargetInstancesScopedList_Warning_DataItem
    TargetInstancesScopedList_Warning_DataItem (..),
    newTargetInstancesScopedList_Warning_DataItem,

    -- ** TargetPool
    TargetPool (..),
    newTargetPool,

    -- ** TargetPool_SessionAffinity
    TargetPool_SessionAffinity (..),

    -- ** TargetPoolAggregatedList
    TargetPoolAggregatedList (..),
    newTargetPoolAggregatedList,

    -- ** TargetPoolAggregatedList_Items
    TargetPoolAggregatedList_Items (..),
    newTargetPoolAggregatedList_Items,

    -- ** TargetPoolAggregatedList_Warning
    TargetPoolAggregatedList_Warning (..),
    newTargetPoolAggregatedList_Warning,

    -- ** TargetPoolAggregatedList_Warning_Code
    TargetPoolAggregatedList_Warning_Code (..),

    -- ** TargetPoolAggregatedList_Warning_DataItem
    TargetPoolAggregatedList_Warning_DataItem (..),
    newTargetPoolAggregatedList_Warning_DataItem,

    -- ** TargetPoolInstanceHealth
    TargetPoolInstanceHealth (..),
    newTargetPoolInstanceHealth,

    -- ** TargetPoolList
    TargetPoolList (..),
    newTargetPoolList,

    -- ** TargetPoolList_Warning
    TargetPoolList_Warning (..),
    newTargetPoolList_Warning,

    -- ** TargetPoolList_Warning_Code
    TargetPoolList_Warning_Code (..),

    -- ** TargetPoolList_Warning_DataItem
    TargetPoolList_Warning_DataItem (..),
    newTargetPoolList_Warning_DataItem,

    -- ** TargetPoolsAddHealthCheckRequest
    TargetPoolsAddHealthCheckRequest (..),
    newTargetPoolsAddHealthCheckRequest,

    -- ** TargetPoolsAddInstanceRequest
    TargetPoolsAddInstanceRequest (..),
    newTargetPoolsAddInstanceRequest,

    -- ** TargetPoolsRemoveHealthCheckRequest
    TargetPoolsRemoveHealthCheckRequest (..),
    newTargetPoolsRemoveHealthCheckRequest,

    -- ** TargetPoolsRemoveInstanceRequest
    TargetPoolsRemoveInstanceRequest (..),
    newTargetPoolsRemoveInstanceRequest,

    -- ** TargetPoolsScopedList
    TargetPoolsScopedList (..),
    newTargetPoolsScopedList,

    -- ** TargetPoolsScopedList_Warning
    TargetPoolsScopedList_Warning (..),
    newTargetPoolsScopedList_Warning,

    -- ** TargetPoolsScopedList_Warning_Code
    TargetPoolsScopedList_Warning_Code (..),

    -- ** TargetPoolsScopedList_Warning_DataItem
    TargetPoolsScopedList_Warning_DataItem (..),
    newTargetPoolsScopedList_Warning_DataItem,

    -- ** TargetReference
    TargetReference (..),
    newTargetReference,

    -- ** TargetSslProxiesSetBackendServiceRequest
    TargetSslProxiesSetBackendServiceRequest (..),
    newTargetSslProxiesSetBackendServiceRequest,

    -- ** TargetSslProxiesSetProxyHeaderRequest
    TargetSslProxiesSetProxyHeaderRequest (..),
    newTargetSslProxiesSetProxyHeaderRequest,

    -- ** TargetSslProxiesSetProxyHeaderRequest_ProxyHeader
    TargetSslProxiesSetProxyHeaderRequest_ProxyHeader (..),

    -- ** TargetSslProxiesSetSslCertificatesRequest
    TargetSslProxiesSetSslCertificatesRequest (..),
    newTargetSslProxiesSetSslCertificatesRequest,

    -- ** TargetSslProxy
    TargetSslProxy (..),
    newTargetSslProxy,

    -- ** TargetSslProxy_ProxyHeader
    TargetSslProxy_ProxyHeader (..),

    -- ** TargetSslProxyList
    TargetSslProxyList (..),
    newTargetSslProxyList,

    -- ** TargetSslProxyList_Warning
    TargetSslProxyList_Warning (..),
    newTargetSslProxyList_Warning,

    -- ** TargetSslProxyList_Warning_Code
    TargetSslProxyList_Warning_Code (..),

    -- ** TargetSslProxyList_Warning_DataItem
    TargetSslProxyList_Warning_DataItem (..),
    newTargetSslProxyList_Warning_DataItem,

    -- ** TargetTcpProxiesSetBackendServiceRequest
    TargetTcpProxiesSetBackendServiceRequest (..),
    newTargetTcpProxiesSetBackendServiceRequest,

    -- ** TargetTcpProxiesSetProxyHeaderRequest
    TargetTcpProxiesSetProxyHeaderRequest (..),
    newTargetTcpProxiesSetProxyHeaderRequest,

    -- ** TargetTcpProxiesSetProxyHeaderRequest_ProxyHeader
    TargetTcpProxiesSetProxyHeaderRequest_ProxyHeader (..),

    -- ** TargetTcpProxy
    TargetTcpProxy (..),
    newTargetTcpProxy,

    -- ** TargetTcpProxy_ProxyHeader
    TargetTcpProxy_ProxyHeader (..),

    -- ** TargetTcpProxyList
    TargetTcpProxyList (..),
    newTargetTcpProxyList,

    -- ** TargetTcpProxyList_Warning
    TargetTcpProxyList_Warning (..),
    newTargetTcpProxyList_Warning,

    -- ** TargetTcpProxyList_Warning_Code
    TargetTcpProxyList_Warning_Code (..),

    -- ** TargetTcpProxyList_Warning_DataItem
    TargetTcpProxyList_Warning_DataItem (..),
    newTargetTcpProxyList_Warning_DataItem,

    -- ** TargetVpnGateway
    TargetVpnGateway (..),
    newTargetVpnGateway,

    -- ** TargetVpnGateway_Status
    TargetVpnGateway_Status (..),

    -- ** TargetVpnGatewayAggregatedList
    TargetVpnGatewayAggregatedList (..),
    newTargetVpnGatewayAggregatedList,

    -- ** TargetVpnGatewayAggregatedList_Items
    TargetVpnGatewayAggregatedList_Items (..),
    newTargetVpnGatewayAggregatedList_Items,

    -- ** TargetVpnGatewayAggregatedList_Warning
    TargetVpnGatewayAggregatedList_Warning (..),
    newTargetVpnGatewayAggregatedList_Warning,

    -- ** TargetVpnGatewayAggregatedList_Warning_Code
    TargetVpnGatewayAggregatedList_Warning_Code (..),

    -- ** TargetVpnGatewayAggregatedList_Warning_DataItem
    TargetVpnGatewayAggregatedList_Warning_DataItem (..),
    newTargetVpnGatewayAggregatedList_Warning_DataItem,

    -- ** TargetVpnGatewayList
    TargetVpnGatewayList (..),
    newTargetVpnGatewayList,

    -- ** TargetVpnGatewayList_Warning
    TargetVpnGatewayList_Warning (..),
    newTargetVpnGatewayList_Warning,

    -- ** TargetVpnGatewayList_Warning_Code
    TargetVpnGatewayList_Warning_Code (..),

    -- ** TargetVpnGatewayList_Warning_DataItem
    TargetVpnGatewayList_Warning_DataItem (..),
    newTargetVpnGatewayList_Warning_DataItem,

    -- ** TargetVpnGatewaysScopedList
    TargetVpnGatewaysScopedList (..),
    newTargetVpnGatewaysScopedList,

    -- ** TargetVpnGatewaysScopedList_Warning
    TargetVpnGatewaysScopedList_Warning (..),
    newTargetVpnGatewaysScopedList_Warning,

    -- ** TargetVpnGatewaysScopedList_Warning_Code
    TargetVpnGatewaysScopedList_Warning_Code (..),

    -- ** TargetVpnGatewaysScopedList_Warning_DataItem
    TargetVpnGatewaysScopedList_Warning_DataItem (..),
    newTargetVpnGatewaysScopedList_Warning_DataItem,

    -- ** TestFailure
    TestFailure (..),
    newTestFailure,

    -- ** TestPermissionsRequest
    TestPermissionsRequest (..),
    newTestPermissionsRequest,

    -- ** TestPermissionsResponse
    TestPermissionsResponse (..),
    newTestPermissionsResponse,

    -- ** Uint128
    Uint128 (..),
    newUint128,

    -- ** UrlMap
    UrlMap (..),
    newUrlMap,

    -- ** UrlMapList
    UrlMapList (..),
    newUrlMapList,

    -- ** UrlMapList_Warning
    UrlMapList_Warning (..),
    newUrlMapList_Warning,

    -- ** UrlMapList_Warning_Code
    UrlMapList_Warning_Code (..),

    -- ** UrlMapList_Warning_DataItem
    UrlMapList_Warning_DataItem (..),
    newUrlMapList_Warning_DataItem,

    -- ** UrlMapReference
    UrlMapReference (..),
    newUrlMapReference,

    -- ** UrlMapTest
    UrlMapTest (..),
    newUrlMapTest,

    -- ** UrlMapTestHeader
    UrlMapTestHeader (..),
    newUrlMapTestHeader,

    -- ** UrlMapValidationResult
    UrlMapValidationResult (..),
    newUrlMapValidationResult,

    -- ** UrlMapsAggregatedList
    UrlMapsAggregatedList (..),
    newUrlMapsAggregatedList,

    -- ** UrlMapsAggregatedList_Items
    UrlMapsAggregatedList_Items (..),
    newUrlMapsAggregatedList_Items,

    -- ** UrlMapsAggregatedList_Warning
    UrlMapsAggregatedList_Warning (..),
    newUrlMapsAggregatedList_Warning,

    -- ** UrlMapsAggregatedList_Warning_Code
    UrlMapsAggregatedList_Warning_Code (..),

    -- ** UrlMapsAggregatedList_Warning_DataItem
    UrlMapsAggregatedList_Warning_DataItem (..),
    newUrlMapsAggregatedList_Warning_DataItem,

    -- ** UrlMapsScopedList
    UrlMapsScopedList (..),
    newUrlMapsScopedList,

    -- ** UrlMapsScopedList_Warning
    UrlMapsScopedList_Warning (..),
    newUrlMapsScopedList_Warning,

    -- ** UrlMapsScopedList_Warning_Code
    UrlMapsScopedList_Warning_Code (..),

    -- ** UrlMapsScopedList_Warning_DataItem
    UrlMapsScopedList_Warning_DataItem (..),
    newUrlMapsScopedList_Warning_DataItem,

    -- ** UrlMapsValidateRequest
    UrlMapsValidateRequest (..),
    newUrlMapsValidateRequest,

    -- ** UrlMapsValidateRequest_LoadBalancingSchemesItem
    UrlMapsValidateRequest_LoadBalancingSchemesItem (..),

    -- ** UrlMapsValidateResponse
    UrlMapsValidateResponse (..),
    newUrlMapsValidateResponse,

    -- ** UrlRewrite
    UrlRewrite (..),
    newUrlRewrite,

    -- ** UsableSubnetwork
    UsableSubnetwork (..),
    newUsableSubnetwork,

    -- ** UsableSubnetworkSecondaryRange
    UsableSubnetworkSecondaryRange (..),
    newUsableSubnetworkSecondaryRange,

    -- ** UsableSubnetworksAggregatedList
    UsableSubnetworksAggregatedList (..),
    newUsableSubnetworksAggregatedList,

    -- ** UsableSubnetworksAggregatedList_Warning
    UsableSubnetworksAggregatedList_Warning (..),
    newUsableSubnetworksAggregatedList_Warning,

    -- ** UsableSubnetworksAggregatedList_Warning_Code
    UsableSubnetworksAggregatedList_Warning_Code (..),

    -- ** UsableSubnetworksAggregatedList_Warning_DataItem
    UsableSubnetworksAggregatedList_Warning_DataItem (..),
    newUsableSubnetworksAggregatedList_Warning_DataItem,

    -- ** UsageExportLocation
    UsageExportLocation (..),
    newUsageExportLocation,

    -- ** VmEndpointNatMappings
    VmEndpointNatMappings (..),
    newVmEndpointNatMappings,

    -- ** VmEndpointNatMappingsInterfaceNatMappings
    VmEndpointNatMappingsInterfaceNatMappings (..),
    newVmEndpointNatMappingsInterfaceNatMappings,

    -- ** VmEndpointNatMappingsList
    VmEndpointNatMappingsList (..),
    newVmEndpointNatMappingsList,

    -- ** VmEndpointNatMappingsList_Warning
    VmEndpointNatMappingsList_Warning (..),
    newVmEndpointNatMappingsList_Warning,

    -- ** VmEndpointNatMappingsList_Warning_Code
    VmEndpointNatMappingsList_Warning_Code (..),

    -- ** VmEndpointNatMappingsList_Warning_DataItem
    VmEndpointNatMappingsList_Warning_DataItem (..),
    newVmEndpointNatMappingsList_Warning_DataItem,

    -- ** VpnGateway
    VpnGateway (..),
    newVpnGateway,

    -- ** VpnGateway_Labels
    VpnGateway_Labels (..),
    newVpnGateway_Labels,

    -- ** VpnGateway_StackType
    VpnGateway_StackType (..),

    -- ** VpnGatewayAggregatedList
    VpnGatewayAggregatedList (..),
    newVpnGatewayAggregatedList,

    -- ** VpnGatewayAggregatedList_Items
    VpnGatewayAggregatedList_Items (..),
    newVpnGatewayAggregatedList_Items,

    -- ** VpnGatewayAggregatedList_Warning
    VpnGatewayAggregatedList_Warning (..),
    newVpnGatewayAggregatedList_Warning,

    -- ** VpnGatewayAggregatedList_Warning_Code
    VpnGatewayAggregatedList_Warning_Code (..),

    -- ** VpnGatewayAggregatedList_Warning_DataItem
    VpnGatewayAggregatedList_Warning_DataItem (..),
    newVpnGatewayAggregatedList_Warning_DataItem,

    -- ** VpnGatewayList
    VpnGatewayList (..),
    newVpnGatewayList,

    -- ** VpnGatewayList_Warning
    VpnGatewayList_Warning (..),
    newVpnGatewayList_Warning,

    -- ** VpnGatewayList_Warning_Code
    VpnGatewayList_Warning_Code (..),

    -- ** VpnGatewayList_Warning_DataItem
    VpnGatewayList_Warning_DataItem (..),
    newVpnGatewayList_Warning_DataItem,

    -- ** VpnGatewayStatus
    VpnGatewayStatus (..),
    newVpnGatewayStatus,

    -- ** VpnGatewayStatusHighAvailabilityRequirementState
    VpnGatewayStatusHighAvailabilityRequirementState (..),
    newVpnGatewayStatusHighAvailabilityRequirementState,

    -- ** VpnGatewayStatusHighAvailabilityRequirementState_State
    VpnGatewayStatusHighAvailabilityRequirementState_State (..),

    -- ** VpnGatewayStatusHighAvailabilityRequirementState_UnsatisfiedReason
    VpnGatewayStatusHighAvailabilityRequirementState_UnsatisfiedReason (..),

    -- ** VpnGatewayStatusTunnel
    VpnGatewayStatusTunnel (..),
    newVpnGatewayStatusTunnel,

    -- ** VpnGatewayStatusVpnConnection
    VpnGatewayStatusVpnConnection (..),
    newVpnGatewayStatusVpnConnection,

    -- ** VpnGatewayVpnGatewayInterface
    VpnGatewayVpnGatewayInterface (..),
    newVpnGatewayVpnGatewayInterface,

    -- ** VpnGatewaysGetStatusResponse
    VpnGatewaysGetStatusResponse (..),
    newVpnGatewaysGetStatusResponse,

    -- ** VpnGatewaysScopedList
    VpnGatewaysScopedList (..),
    newVpnGatewaysScopedList,

    -- ** VpnGatewaysScopedList_Warning
    VpnGatewaysScopedList_Warning (..),
    newVpnGatewaysScopedList_Warning,

    -- ** VpnGatewaysScopedList_Warning_Code
    VpnGatewaysScopedList_Warning_Code (..),

    -- ** VpnGatewaysScopedList_Warning_DataItem
    VpnGatewaysScopedList_Warning_DataItem (..),
    newVpnGatewaysScopedList_Warning_DataItem,

    -- ** VpnTunnel
    VpnTunnel (..),
    newVpnTunnel,

    -- ** VpnTunnel_Status
    VpnTunnel_Status (..),

    -- ** VpnTunnelAggregatedList
    VpnTunnelAggregatedList (..),
    newVpnTunnelAggregatedList,

    -- ** VpnTunnelAggregatedList_Items
    VpnTunnelAggregatedList_Items (..),
    newVpnTunnelAggregatedList_Items,

    -- ** VpnTunnelAggregatedList_Warning
    VpnTunnelAggregatedList_Warning (..),
    newVpnTunnelAggregatedList_Warning,

    -- ** VpnTunnelAggregatedList_Warning_Code
    VpnTunnelAggregatedList_Warning_Code (..),

    -- ** VpnTunnelAggregatedList_Warning_DataItem
    VpnTunnelAggregatedList_Warning_DataItem (..),
    newVpnTunnelAggregatedList_Warning_DataItem,

    -- ** VpnTunnelList
    VpnTunnelList (..),
    newVpnTunnelList,

    -- ** VpnTunnelList_Warning
    VpnTunnelList_Warning (..),
    newVpnTunnelList_Warning,

    -- ** VpnTunnelList_Warning_Code
    VpnTunnelList_Warning_Code (..),

    -- ** VpnTunnelList_Warning_DataItem
    VpnTunnelList_Warning_DataItem (..),
    newVpnTunnelList_Warning_DataItem,

    -- ** VpnTunnelsScopedList
    VpnTunnelsScopedList (..),
    newVpnTunnelsScopedList,

    -- ** VpnTunnelsScopedList_Warning
    VpnTunnelsScopedList_Warning (..),
    newVpnTunnelsScopedList_Warning,

    -- ** VpnTunnelsScopedList_Warning_Code
    VpnTunnelsScopedList_Warning_Code (..),

    -- ** VpnTunnelsScopedList_Warning_DataItem
    VpnTunnelsScopedList_Warning_DataItem (..),
    newVpnTunnelsScopedList_Warning_DataItem,

    -- ** WafExpressionSet
    WafExpressionSet (..),
    newWafExpressionSet,

    -- ** WafExpressionSetExpression
    WafExpressionSetExpression (..),
    newWafExpressionSetExpression,

    -- ** WeightedBackendService
    WeightedBackendService (..),
    newWeightedBackendService,

    -- ** XpnHostList
    XpnHostList (..),
    newXpnHostList,

    -- ** XpnHostList_Warning
    XpnHostList_Warning (..),
    newXpnHostList_Warning,

    -- ** XpnHostList_Warning_Code
    XpnHostList_Warning_Code (..),

    -- ** XpnHostList_Warning_DataItem
    XpnHostList_Warning_DataItem (..),
    newXpnHostList_Warning_DataItem,

    -- ** XpnResourceId
    XpnResourceId (..),
    newXpnResourceId,

    -- ** XpnResourceId_Type
    XpnResourceId_Type (..),

    -- ** Zone
    Zone (..),
    newZone,

    -- ** Zone_Status
    Zone_Status (..),

    -- ** ZoneList
    ZoneList (..),
    newZoneList,

    -- ** ZoneList_Warning
    ZoneList_Warning (..),
    newZoneList_Warning,

    -- ** ZoneList_Warning_Code
    ZoneList_Warning_Code (..),

    -- ** ZoneList_Warning_DataItem
    ZoneList_Warning_DataItem (..),
    newZoneList_Warning_DataItem,

    -- ** ZoneSetLabelsRequest
    ZoneSetLabelsRequest (..),
    newZoneSetLabelsRequest,

    -- ** ZoneSetLabelsRequest_Labels
    ZoneSetLabelsRequest_Labels (..),
    newZoneSetLabelsRequest_Labels,

    -- ** ZoneSetPolicyRequest
    ZoneSetPolicyRequest (..),
    newZoneSetPolicyRequest,

    -- ** InstancesUpdateMinimalAction
    InstancesUpdateMinimalAction (..),

    -- ** InstancesUpdateMostDisruptiveAllowedAction
    InstancesUpdateMostDisruptiveAllowedAction (..),

    -- ** NetworksListPeeringRoutesDirection
    NetworksListPeeringRoutesDirection (..),
  )
where

import Gogol.Compute.Internal.Product
import Gogol.Compute.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Compute Engine API. This contains the host and root path used as a starting point for constructing service requests.
computeService :: Core.ServiceConfig
computeService =
  Core.defaultService
    (Core.ServiceId "compute:v1")
    "compute.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View and manage your Google Compute Engine resources
type Compute'FullControl = "https://www.googleapis.com/auth/compute"

-- | View your Google Compute Engine resources
type Compute'Readonly = "https://www.googleapis.com/auth/compute.readonly"

-- | Manage your data and permissions in Cloud Storage and see the email address for your Google Account
type Devstorage'FullControl = "https://www.googleapis.com/auth/devstorage.full_control"

-- | View your data in Google Cloud Storage
type Devstorage'ReadOnly = "https://www.googleapis.com/auth/devstorage.read_only"

-- | Manage your data in Cloud Storage and see the email address of your Google Account
type Devstorage'ReadWrite = "https://www.googleapis.com/auth/devstorage.read_write"
