{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types
    (
    -- * Service Configuration
      computeService

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformScope
    , storageReadOnlyScope
    , storageReadWriteScope
    , computeReadOnlyScope
    , storageFullControlScope

    -- * HTTPSHealthCheckListWarningCode
    , HTTPSHealthCheckListWarningCode (..)

    -- * InstanceAggregatedListWarning
    , InstanceAggregatedListWarning
    , instanceAggregatedListWarning
    , ialwData
    , ialwCode
    , ialwMessage

    -- * TargetHTTPSProxyList
    , TargetHTTPSProxyList
    , targetHTTPSProxyList
    , thplNextPageToken
    , thplKind
    , thplItems
    , thplSelfLink
    , thplWarning
    , thplId

    -- * RoutersScopedList
    , RoutersScopedList
    , routersScopedList
    , rslRouters
    , rslWarning

    -- * RouterStatusResponse
    , RouterStatusResponse
    , routerStatusResponse
    , rsrKind
    , rsrResult

    -- * RegionInstanceGroupManagersDeleteInstancesRequest
    , RegionInstanceGroupManagersDeleteInstancesRequest
    , regionInstanceGroupManagersDeleteInstancesRequest
    , rigmdirInstances

    -- * InterconnectDiagnosticsLinkLACPStatus
    , InterconnectDiagnosticsLinkLACPStatus
    , interconnectDiagnosticsLinkLACPStatus
    , idllacpsState
    , idllacpsNeighborSystemId
    , idllacpsGoogleSystemId

    -- * InterconnectAttachmentState
    , InterconnectAttachmentState (..)

    -- * AddressesScopedList
    , AddressesScopedList
    , addressesScopedList
    , aslAddresses
    , aslWarning

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * SchedulingOnHostMaintenance
    , SchedulingOnHostMaintenance (..)

    -- * InstanceGroupManagerUpdatePolicy
    , InstanceGroupManagerUpdatePolicy
    , instanceGroupManagerUpdatePolicy
    , igmupMaxSurge
    , igmupMaxUnavailable
    , igmupMinimalAction
    , igmupType

    -- * RegionInstanceGroupsListInstancesRequest
    , RegionInstanceGroupsListInstancesRequest
    , regionInstanceGroupsListInstancesRequest
    , riglirInstanceState
    , riglirPortName

    -- * BackendServiceAggregatedListWarning
    , BackendServiceAggregatedListWarning
    , backendServiceAggregatedListWarning
    , bsalwData
    , bsalwCode
    , bsalwMessage

    -- * SSLPolicy
    , SSLPolicy
    , sslPolicy
    , spKind
    , spFingerprint
    , spProFile
    , spWarnings
    , spCustomFeatures
    , spSelfLink
    , spName
    , spCreationTimestamp
    , spEnabledFeatures
    , spId
    , spMinTLSVersion
    , spDescription

    -- * AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    , AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType (..)

    -- * BackendServiceListWarningDataItem
    , BackendServiceListWarningDataItem
    , backendServiceListWarningDataItem
    , bslwdiValue
    , bslwdiKey

    -- * FirewallDeniedItem
    , FirewallDeniedItem
    , firewallDeniedItem
    , fdiIPProtocol
    , fdiPorts

    -- * InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- * MachineTypeAggregatedListItems
    , MachineTypeAggregatedListItems
    , machineTypeAggregatedListItems
    , mtaliAddtional

    -- * BackendServiceListWarningCode
    , BackendServiceListWarningCode (..)

    -- * DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems
    , dtaliAddtional

    -- * InstancesSetLabelsRequest
    , InstancesSetLabelsRequest
    , instancesSetLabelsRequest
    , islrLabels
    , islrLabelFingerprint

    -- * RouterAggregatedList
    , RouterAggregatedList
    , routerAggregatedList
    , ralNextPageToken
    , ralKind
    , ralItems
    , ralSelfLink
    , ralWarning
    , ralId

    -- * FirewallList
    , FirewallList
    , firewallList
    , flNextPageToken
    , flKind
    , flItems
    , flSelfLink
    , flWarning
    , flId

    -- * InstancesScopedListWarning
    , InstancesScopedListWarning
    , instancesScopedListWarning
    , islwData
    , islwCode
    , islwMessage

    -- * RegionInstanceGroupManagersRecreateRequest
    , RegionInstanceGroupManagersRecreateRequest
    , regionInstanceGroupManagersRecreateRequest
    , rigmrrInstances

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * InstanceListWarningCode
    , InstanceListWarningCode (..)

    -- * TargetHTTPSProxyQuicOverride
    , TargetHTTPSProxyQuicOverride (..)

    -- * BackendServicesScopedListWarning
    , BackendServicesScopedListWarning
    , backendServicesScopedListWarning
    , bsslwData
    , bsslwCode
    , bsslwMessage

    -- * SecurityPolicyRuleMatcher
    , SecurityPolicyRuleMatcher
    , securityPolicyRuleMatcher
    , sprmVersionedExpr
    , sprmConfig

    -- * InstanceGroupList
    , InstanceGroupList
    , instanceGroupList
    , iglNextPageToken
    , iglKind
    , iglItems
    , iglSelfLink
    , iglWarning
    , iglId

    -- * InstancesSetMachineTypeRequest
    , InstancesSetMachineTypeRequest
    , instancesSetMachineTypeRequest
    , ismtrMachineType

    -- * VMEndpointNATMAppings
    , VMEndpointNATMAppings
    , vMEndpointNATMAppings
    , vmenatmaInstanceName
    , vmenatmaInterfaceNATMAppings

    -- * CustomerEncryptionKey
    , CustomerEncryptionKey
    , customerEncryptionKey
    , cekKmsKeyName
    , cekSha256
    , cekRawKey

    -- * AutoscalerAggregatedListItems
    , AutoscalerAggregatedListItems
    , autoscalerAggregatedListItems
    , aaliAddtional

    -- * InstanceListWarningDataItem
    , InstanceListWarningDataItem
    , instanceListWarningDataItem
    , ilwdiValue
    , ilwdiKey

    -- * InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- * RouterNATNATIPAllocateOption
    , RouterNATNATIPAllocateOption (..)

    -- * DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- * HTTPSHealthCheckListWarningDataItem
    , HTTPSHealthCheckListWarningDataItem
    , httpsHealthCheckListWarningDataItem
    , hhclwdiValue
    , hhclwdiKey

    -- * OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- * Snapshot
    , Snapshot
    , snapshot
    , sStorageBytesStatus
    , sStatus
    , sDiskSizeGb
    , sSourceDiskId
    , sKind
    , sSourceDiskEncryptionKey
    , sStorageBytes
    , sSelfLink
    , sSnapshotEncryptionKey
    , sName
    , sStorageLocations
    , sCreationTimestamp
    , sLicenseCodes
    , sId
    , sLabels
    , sLicenses
    , sSourceDisk
    , sLabelFingerprint
    , sDescription

    -- * RouterStatus
    , RouterStatus
    , routerStatus
    , rsBestRoutesForRouter
    , rsBGPPeerStatus
    , rsNetwork
    , rsNATStatus
    , rsBestRoutes

    -- * AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuUtilizationTargetType

    -- * NodeGroupAggregatedListWarningCode
    , NodeGroupAggregatedListWarningCode (..)

    -- * ForwardingRuleList
    , ForwardingRuleList
    , forwardingRuleList
    , frlNextPageToken
    , frlKind
    , frlItems
    , frlSelfLink
    , frlWarning
    , frlId

    -- * NodeGroup
    , NodeGroup
    , nodeGroup
    , ngStatus
    , ngSize
    , ngKind
    , ngZone
    , ngSelfLink
    , ngName
    , ngCreationTimestamp
    , ngId
    , ngNodeTemplate
    , ngDescription

    -- * VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- * SubnetworkSecondaryRange
    , SubnetworkSecondaryRange
    , subnetworkSecondaryRange
    , ssrRangeName
    , ssrIPCIdRRange

    -- * NodeTypesScopedList
    , NodeTypesScopedList
    , nodeTypesScopedList
    , ntslNodeTypes
    , ntslWarning

    -- * BackendServiceProtocol
    , BackendServiceProtocol (..)

    -- * RegionInstanceGroupsListInstancesWarning
    , RegionInstanceGroupsListInstancesWarning
    , regionInstanceGroupsListInstancesWarning
    , rigliwData
    , rigliwCode
    , rigliwMessage

    -- * NetworkEndpointGroupsDetachEndpointsRequest
    , NetworkEndpointGroupsDetachEndpointsRequest
    , networkEndpointGroupsDetachEndpointsRequest
    , negderNetworkEndpoints

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs
    , acExemptedMembers

    -- * NetworkEndpointGroupNetworkEndpointType
    , NetworkEndpointGroupNetworkEndpointType (..)

    -- * BackendBucketListWarningCode
    , BackendBucketListWarningCode (..)

    -- * AcceleratorTypeAggregatedListWarningDataItem
    , AcceleratorTypeAggregatedListWarningDataItem
    , acceleratorTypeAggregatedListWarningDataItem
    , atalwdiValue
    , atalwdiKey

    -- * InstanceGroupsSetNamedPortsRequest
    , InstanceGroupsSetNamedPortsRequest
    , instanceGroupsSetNamedPortsRequest
    , igsnprFingerprint
    , igsnprNamedPorts

    -- * AcceleratorTypesScopedListWarningCode
    , AcceleratorTypesScopedListWarningCode (..)

    -- * NodeTemplateNodeAffinityLabels
    , NodeTemplateNodeAffinityLabels
    , nodeTemplateNodeAffinityLabels
    , ntnalAddtional

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olWarning
    , olId

    -- * NodeGroupListWarning
    , NodeGroupListWarning
    , nodeGroupListWarning
    , nglwData
    , nglwCode
    , nglwMessage

    -- * DiskList
    , DiskList
    , diskList
    , dlNextPageToken
    , dlKind
    , dlItems
    , dlSelfLink
    , dlWarning
    , dlId

    -- * NetworkEndpointGroupsListNetworkEndpointsWarning
    , NetworkEndpointGroupsListNetworkEndpointsWarning
    , networkEndpointGroupsListNetworkEndpointsWarning
    , neglnewData
    , neglnewCode
    , neglnewMessage

    -- * NodeGroupsScopedListWarningCode
    , NodeGroupsScopedListWarningCode (..)

    -- * TargetPoolsAddInstanceRequest
    , TargetPoolsAddInstanceRequest
    , targetPoolsAddInstanceRequest
    , tpairInstances

    -- * NodeGroupsDeleteNodesRequest
    , NodeGroupsDeleteNodesRequest
    , nodeGroupsDeleteNodesRequest
    , ngdnrNodes

    -- * RegionAutoscalerList
    , RegionAutoscalerList
    , regionAutoscalerList
    , rNextPageToken
    , rKind
    , rItems
    , rSelfLink
    , rWarning
    , rId

    -- * HealthCheckListWarningDataItem
    , HealthCheckListWarningDataItem
    , healthCheckListWarningDataItem
    , hclwdiValue
    , hclwdiKey

    -- * NodeGroupAggregatedListWarningDataItem
    , NodeGroupAggregatedListWarningDataItem
    , nodeGroupAggregatedListWarningDataItem
    , ngalwdiValue
    , ngalwdiKey

    -- * InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- * NodeGroupNode
    , NodeGroupNode
    , nodeGroupNode
    , ngnStatus
    , ngnName
    , ngnInstances
    , ngnNodeType

    -- * TargetTCPProxiesSetProxyHeaderRequestProxyHeader
    , TargetTCPProxiesSetProxyHeaderRequestProxyHeader (..)

    -- * InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlWarning
    , igmlId

    -- * InstanceGroupManagerVersion
    , InstanceGroupManagerVersion
    , instanceGroupManagerVersion
    , igmvInstanceTemplate
    , igmvTargetSize
    , igmvName

    -- * NetworkEndpointGroupsScopedListWarning
    , NetworkEndpointGroupsScopedListWarning
    , networkEndpointGroupsScopedListWarning
    , negslwData
    , negslwCode
    , negslwMessage

    -- * SubnetworksScopedListWarning
    , SubnetworksScopedListWarning
    , subnetworksScopedListWarning
    , sslwData
    , sslwCode
    , sslwMessage

    -- * NodeGroupsSetNodeTemplateRequest
    , NodeGroupsSetNodeTemplateRequest
    , nodeGroupsSetNodeTemplateRequest
    , ngsntrNodeTemplate

    -- * AcceleratorTypeListWarning
    , AcceleratorTypeListWarning
    , acceleratorTypeListWarning
    , atlwData
    , atlwCode
    , atlwMessage

    -- * AttachedDiskType
    , AttachedDiskType (..)

    -- * Image
    , Image
    , image
    , iStatus
    , iSourceSnapshotId
    , iImageEncryptionKey
    , iSourceImage
    , iDiskSizeGb
    , iSourceType
    , iSourceDiskId
    , iKind
    , iSourceDiskEncryptionKey
    , iGuestOSFeatures
    , iArchiveSizeBytes
    , iFamily
    , iRawDisk
    , iSelfLink
    , iName
    , iSourceImageId
    , iCreationTimestamp
    , iSourceImageEncryptionKey
    , iLicenseCodes
    , iId
    , iLabels
    , iLicenses
    , iSourceDisk
    , iLabelFingerprint
    , iDescription
    , iSourceSnapshotEncryptionKey
    , iDeprecated
    , iSourceSnapshot

    -- * RouterBGPPeerManagementType
    , RouterBGPPeerManagementType (..)

    -- * RouterNATSubnetworkToNATSourceIPRangesToNATItem
    , RouterNATSubnetworkToNATSourceIPRangesToNATItem (..)

    -- * AcceleratorTypeAggregatedListWarningCode
    , AcceleratorTypeAggregatedListWarningCode (..)

    -- * NetworksAddPeeringRequest
    , NetworksAddPeeringRequest
    , networksAddPeeringRequest
    , naprNetworkPeering
    , naprPeerNetwork
    , naprName
    , naprAutoCreateRoutes

    -- * NodeTemplatesScopedList
    , NodeTemplatesScopedList
    , nodeTemplatesScopedList
    , nNodeTemplates
    , nWarning

    -- * URLMapListWarning
    , URLMapListWarning
    , urlMapListWarning
    , umlwData
    , umlwCode
    , umlwMessage

    -- * NodeGroupsScopedListWarningDataItem
    , NodeGroupsScopedListWarningDataItem
    , nodeGroupsScopedListWarningDataItem
    , ngslwdiValue
    , ngslwdiKey

    -- * URLMap
    , URLMap
    , urlMap
    , umTests
    , umKind
    , umFingerprint
    , umDefaultService
    , umSelfLink
    , umName
    , umCreationTimestamp
    , umPathMatchers
    , umId
    , umHostRules
    , umDescription

    -- * ImageListWarning
    , ImageListWarning
    , imageListWarning
    , ilwData
    , ilwCode
    , ilwMessage

    -- * HealthCheckListWarningCode
    , HealthCheckListWarningCode (..)

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * SSLPolicyReference
    , SSLPolicyReference
    , sslPolicyReference
    , sprSSLPolicy

    -- * InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems
    , igaliAddtional

    -- * TargetPoolList
    , TargetPoolList
    , targetPoolList
    , tplNextPageToken
    , tplKind
    , tplItems
    , tplSelfLink
    , tplWarning
    , tplId

    -- * SSLPolicyProFile
    , SSLPolicyProFile (..)

    -- * AcceleratorType
    , AcceleratorType
    , acceleratorType
    , atKind
    , atZone
    , atMaximumCardsPerInstance
    , atSelfLink
    , atName
    , atCreationTimestamp
    , atId
    , atDescription
    , atDeprecated

    -- * BackendBucketListWarningDataItem
    , BackendBucketListWarningDataItem
    , backendBucketListWarningDataItem
    , bblwdiValue
    , bblwdiKey

    -- * AcceleratorTypesScopedListWarningDataItem
    , AcceleratorTypesScopedListWarningDataItem
    , acceleratorTypesScopedListWarningDataItem
    , atslwdiValue
    , atslwdiKey

    -- * InterconnectOutageNotificationSource
    , InterconnectOutageNotificationSource (..)

    -- * RegionDiskTypeList
    , RegionDiskTypeList
    , regionDiskTypeList
    , rdtlNextPageToken
    , rdtlKind
    , rdtlItems
    , rdtlSelfLink
    , rdtlWarning
    , rdtlId

    -- * TargetInstanceAggregatedList
    , TargetInstanceAggregatedList
    , targetInstanceAggregatedList
    , tialNextPageToken
    , tialKind
    , tialItems
    , tialSelfLink
    , tialWarning
    , tialId

    -- * NodeGroupsListNodesWarningDataItem
    , NodeGroupsListNodesWarningDataItem
    , nodeGroupsListNodesWarningDataItem
    , nglnwdiValue
    , nglnwdiKey

    -- * UsableSubnetworksAggregatedList
    , UsableSubnetworksAggregatedList
    , usableSubnetworksAggregatedList
    , usalNextPageToken
    , usalKind
    , usalItems
    , usalSelfLink
    , usalWarning
    , usalId

    -- * InterconnectLinkType
    , InterconnectLinkType (..)

    -- * DisksScopedList
    , DisksScopedList
    , disksScopedList
    , dslWarning
    , dslDisks

    -- * InterconnectLocationListWarningDataItem
    , InterconnectLocationListWarningDataItem
    , interconnectLocationListWarningDataItem
    , illwdiValue
    , illwdiKey

    -- * InstanceGroupManagersScopedList
    , InstanceGroupManagersScopedList
    , instanceGroupManagersScopedList
    , igmslWarning
    , igmslInstanceGroupManagers

    -- * SubnetworkListWarning
    , SubnetworkListWarning
    , subnetworkListWarning
    , slwData
    , slwCode
    , slwMessage

    -- * NetworkEndpointGroupListWarning
    , NetworkEndpointGroupListWarning
    , networkEndpointGroupListWarning
    , neglwData
    , neglwCode
    , neglwMessage

    -- * HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcTCPHealthCheck
    , hcHTTP2HealthCheck
    , hcKind
    , hcSSLHealthCheck
    , hcSelfLink
    , hcCheckIntervalSec
    , hcName
    , hcCreationTimestamp
    , hcHTTPHealthCheck
    , hcId
    , hcType
    , hcTimeoutSec
    , hcDescription
    , hcUnhealthyThreshold
    , hcHTTPSHealthCheck

    -- * TargetSSLProxyProxyHeader
    , TargetSSLProxyProxyHeader (..)

    -- * HTTPHealthCheckListWarning
    , HTTPHealthCheckListWarning
    , hTTPHealthCheckListWarning
    , httphclwData
    , httphclwCode
    , httphclwMessage

    -- * SSLPoliciesListWarning
    , SSLPoliciesListWarning
    , sslPoliciesListWarning
    , splwData
    , splwCode
    , splwMessage

    -- * CommitmentAggregatedListItems
    , CommitmentAggregatedListItems
    , commitmentAggregatedListItems
    , caliAddtional

    -- * DiskAggregatedList
    , DiskAggregatedList
    , diskAggregatedList
    , dalNextPageToken
    , dalKind
    , dalItems
    , dalSelfLink
    , dalWarning
    , dalId

    -- * InstanceGroupsListInstancesWarningDataItem
    , InstanceGroupsListInstancesWarningDataItem
    , instanceGroupsListInstancesWarningDataItem
    , igliwdiValue
    , igliwdiKey

    -- * InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- * InterconnectListWarning
    , InterconnectListWarning
    , interconnectListWarning
    , iData
    , iCode
    , iMessage

    -- * ForwardingRulesScopedList
    , ForwardingRulesScopedList
    , forwardingRulesScopedList
    , frslWarning
    , frslForwardingRules

    -- * RouterBGPAdvertiseMode
    , RouterBGPAdvertiseMode (..)

    -- * NodeGroupsListNodesWarningCode
    , NodeGroupsListNodesWarningCode (..)

    -- * InstanceReference
    , InstanceReference
    , instanceReference
    , iInstance

    -- * InterconnectDiagnosticsLinkOpticalPowerState
    , InterconnectDiagnosticsLinkOpticalPowerState (..)

    -- * OperationAggregatedList
    , OperationAggregatedList
    , operationAggregatedList
    , oalNextPageToken
    , oalKind
    , oalItems
    , oalSelfLink
    , oalWarning
    , oalId

    -- * OperationsScopedList
    , OperationsScopedList
    , operationsScopedList
    , oslWarning
    , oslOperations

    -- * NamedPort
    , NamedPort
    , namedPort
    , npName
    , npPort

    -- * NetworkEndpointGroupsListEndpointsRequest
    , NetworkEndpointGroupsListEndpointsRequest
    , networkEndpointGroupsListEndpointsRequest
    , neglerHealthStatus

    -- * InterconnectLocationListWarningCode
    , InterconnectLocationListWarningCode (..)

    -- * InstanceGroupsListInstancesWarningCode
    , InstanceGroupsListInstancesWarningCode (..)

    -- * RegionInstanceGroupsListInstancesRequestInstanceState
    , RegionInstanceGroupsListInstancesRequestInstanceState (..)

    -- * SubnetworkAggregatedListWarningDataItem
    , SubnetworkAggregatedListWarningDataItem
    , subnetworkAggregatedListWarningDataItem
    , salwdiValue
    , salwdiKey

    -- * ProjectXpnProjectStatus
    , ProjectXpnProjectStatus (..)

    -- * InterconnectDiagnosticsLinkStatus
    , InterconnectDiagnosticsLinkStatus
    , interconnectDiagnosticsLinkStatus
    , idlsLacpStatus
    , idlsReceivingOpticalPower
    , idlsGoogleDemarc
    , idlsCircuitId
    , idlsArpCaches
    , idlsTransmittingOpticalPower

    -- * BackendServiceReference
    , BackendServiceReference
    , backendServiceReference
    , bsrBackendService

    -- * NetworkEndpointGroupAggregatedListWarningDataItem
    , NetworkEndpointGroupAggregatedListWarningDataItem
    , networkEndpointGroupAggregatedListWarningDataItem
    , negalwdiValue
    , negalwdiKey

    -- * SSLHealthCheckPortSpecification
    , SSLHealthCheckPortSpecification (..)

    -- * TargetInstanceList
    , TargetInstanceList
    , targetInstanceList
    , tilNextPageToken
    , tilKind
    , tilItems
    , tilSelfLink
    , tilWarning
    , tilId

    -- * TargetTCPProxyListWarning
    , TargetTCPProxyListWarning
    , targetTCPProxyListWarning
    , ttplwData
    , ttplwCode
    , ttplwMessage

    -- * InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalNextPageToken
    , igmalKind
    , igmalItems
    , igmalSelfLink
    , igmalWarning
    , igmalId

    -- * BackendBucket
    , BackendBucket
    , backendBucket
    , bbKind
    , bbEnableCdn
    , bbBucketName
    , bbCdnPolicy
    , bbSelfLink
    , bbName
    , bbCreationTimestamp
    , bbId
    , bbDescription

    -- * AccessConfigNetworkTier
    , AccessConfigNetworkTier (..)

    -- * ProjectsEnableXpnResourceRequest
    , ProjectsEnableXpnResourceRequest
    , projectsEnableXpnResourceRequest
    , pexrrXpnResource

    -- * ConditionSys
    , ConditionSys (..)

    -- * ImageSourceType
    , ImageSourceType (..)

    -- * TargetPoolsScopedList
    , TargetPoolsScopedList
    , targetPoolsScopedList
    , tpslWarning
    , tpslTargetPools

    -- * InterconnectAttachmentAggregatedListItems
    , InterconnectAttachmentAggregatedListItems
    , interconnectAttachmentAggregatedListItems
    , iaaliAddtional

    -- * InstanceGroupManagerAutoHealingPolicy
    , InstanceGroupManagerAutoHealingPolicy
    , instanceGroupManagerAutoHealingPolicy
    , igmahpHealthCheck
    , igmahpInitialDelaySec

    -- * LogConfigCounterOptions
    , LogConfigCounterOptions
    , logConfigCounterOptions
    , lccoField
    , lccoMetric

    -- * SubnetworkAggregatedListWarningCode
    , SubnetworkAggregatedListWarningCode (..)

    -- * InstancesSetMinCPUPlatformRequest
    , InstancesSetMinCPUPlatformRequest
    , instancesSetMinCPUPlatformRequest
    , ismcprMinCPUPlatform

    -- * NetworkEndpointGroupAggregatedListWarningCode
    , NetworkEndpointGroupAggregatedListWarningCode (..)

    -- * ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralWarning
    , fralId

    -- * TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- * TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalNextPageToken
    , tpalKind
    , tpalItems
    , tpalSelfLink
    , tpalWarning
    , tpalId

    -- * OperationsScopedListWarningDataItem
    , OperationsScopedListWarningDataItem
    , operationsScopedListWarningDataItem
    , oslwdiValue
    , oslwdiKey

    -- * BackendServiceSessionAffinity
    , BackendServiceSessionAffinity (..)

    -- * GlobalSetLabelsRequest
    , GlobalSetLabelsRequest
    , globalSetLabelsRequest
    , gslrLabels
    , gslrLabelFingerprint

    -- * TargetPool
    , TargetPool
    , targetPool
    , tpSessionAffinity
    , tpBackupPool
    , tpKind
    , tpSelfLink
    , tpName
    , tpCreationTimestamp
    , tpInstances
    , tpId
    , tpFailoverRatio
    , tpRegion
    , tpDescription
    , tpHealthChecks

    -- * ImageList
    , ImageList
    , imageList
    , ilNextPageToken
    , ilKind
    , ilItems
    , ilSelfLink
    , ilWarning
    , ilId

    -- * OperationAggregatedListWarningDataItem
    , OperationAggregatedListWarningDataItem
    , operationAggregatedListWarningDataItem
    , oalwdiValue
    , oalwdiKey

    -- * ForwardingRuleListWarning
    , ForwardingRuleListWarning
    , forwardingRuleListWarning
    , frlwData
    , frlwCode
    , frlwMessage

    -- * VPNTunnelsScopedListWarning
    , VPNTunnelsScopedListWarning
    , vpnTunnelsScopedListWarning
    , vtslwData
    , vtslwCode
    , vtslwMessage

    -- * RegionDisksResizeRequest
    , RegionDisksResizeRequest
    , regionDisksResizeRequest
    , rdrrSizeGb

    -- * NodeTypesScopedListWarning
    , NodeTypesScopedListWarning
    , nodeTypesScopedListWarning
    , ntslwData
    , ntslwCode
    , ntslwMessage

    -- * NodeTemplateNodeTypeFlexibility
    , NodeTemplateNodeTypeFlexibility
    , nodeTemplateNodeTypeFlexibility
    , ntntfMemory
    , ntntfCPUs
    , ntntfLocalSsd

    -- * ForwardingRulesScopedListWarningCode
    , ForwardingRulesScopedListWarningCode (..)

    -- * HealthStatusForNetworkEndpointHealthState
    , HealthStatusForNetworkEndpointHealthState (..)

    -- * LicenseResourceRequirements
    , LicenseResourceRequirements
    , licenseResourceRequirements
    , lrrMinMemoryMb
    , lrrMinGuestCPUCount

    -- * RegionDiskTypeListWarning
    , RegionDiskTypeListWarning
    , regionDiskTypeListWarning
    , rdtlwData
    , rdtlwCode
    , rdtlwMessage

    -- * OperationsScopedListWarningCode
    , OperationsScopedListWarningCode (..)

    -- * OperationAggregatedListWarningCode
    , OperationAggregatedListWarningCode (..)

    -- * TargetSSLProxiesSetBackendServiceRequest
    , TargetSSLProxiesSetBackendServiceRequest
    , targetSSLProxiesSetBackendServiceRequest
    , tspsbsrService

    -- * ForwardingRule
    , ForwardingRule
    , forwardingRule
    , frNetworkTier
    , frIPAddress
    , frLoadBalancingScheme
    , frKind
    , frIPVersion
    , frAllPorts
    , frNetwork
    , frPortRange
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frServiceName
    , frSubnetwork
    , frPorts
    , frId
    , frRegion
    , frServiceLabel
    , frDescription
    , frTarget
    , frBackendService

    -- * URLMapList
    , URLMapList
    , urlMapList
    , umlNextPageToken
    , umlKind
    , umlItems
    , umlSelfLink
    , umlWarning
    , umlId

    -- * ForwardingRulesScopedListWarningDataItem
    , ForwardingRulesScopedListWarningDataItem
    , forwardingRulesScopedListWarningDataItem
    , frslwdiValue
    , frslwdiKey

    -- * TargetInstanceAggregatedListWarning
    , TargetInstanceAggregatedListWarning
    , targetInstanceAggregatedListWarning
    , tialwData
    , tialwCode
    , tialwMessage

    -- * InstanceGroupManagersScopedListWarningDataItem
    , InstanceGroupManagersScopedListWarningDataItem
    , instanceGroupManagersScopedListWarningDataItem
    , igmslwdiValue
    , igmslwdiKey

    -- * SubnetworksScopedList
    , SubnetworksScopedList
    , subnetworksScopedList
    , sslSubnetworks
    , sslWarning

    -- * NetworkEndpointGroupsScopedList
    , NetworkEndpointGroupsScopedList
    , networkEndpointGroupsScopedList
    , negslNetworkEndpointGroups
    , negslWarning

    -- * DiskAggregatedListWarningCode
    , DiskAggregatedListWarningCode (..)

    -- * AcceleratorTypeList
    , AcceleratorTypeList
    , acceleratorTypeList
    , atlNextPageToken
    , atlKind
    , atlItems
    , atlSelfLink
    , atlWarning
    , atlId

    -- * DiskAggregatedListWarningDataItem
    , DiskAggregatedListWarningDataItem
    , diskAggregatedListWarningDataItem
    , dalwdiValue
    , dalwdiKey

    -- * TargetPoolListWarning
    , TargetPoolListWarning
    , targetPoolListWarning
    , tplwData
    , tplwCode
    , tplwMessage

    -- * UsableSubnetworksAggregatedListWarningCode
    , UsableSubnetworksAggregatedListWarningCode (..)

    -- * NodeTemplatesScopedListWarning
    , NodeTemplatesScopedListWarning
    , nodeTemplatesScopedListWarning
    , nData
    , nCode
    , nMessage

    -- * TargetPoolAggregatedListWarningDataItem
    , TargetPoolAggregatedListWarningDataItem
    , targetPoolAggregatedListWarningDataItem
    , tpalwdiValue
    , tpalwdiKey

    -- * DisksScopedListWarningCode
    , DisksScopedListWarningCode (..)

    -- * Project
    , Project
    , project
    , pXpnProjectStatus
    , pKind
    , pUsageExportLocation
    , pSelfLink
    , pName
    , pDefaultServiceAccount
    , pDefaultNetworkTier
    , pCreationTimestamp
    , pEnabledFeatures
    , pQuotas
    , pId
    , pDescription
    , pCommonInstanceMetadata

    -- * RegionInstanceGroupManagersListInstancesResponse
    , RegionInstanceGroupManagersListInstancesResponse
    , regionInstanceGroupManagersListInstancesResponse
    , rigmlirManagedInstances

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oDescription
    , oTargetLink
    , oClientOperationId

    -- * NetworkEndpoint
    , NetworkEndpoint
    , networkEndpoint
    , neIPAddress
    , nePort
    , neInstance

    -- * DisksScopedListWarningDataItem
    , DisksScopedListWarningDataItem
    , disksScopedListWarningDataItem
    , dslwdiValue
    , dslwdiKey

    -- * InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- * Disk
    , Disk
    , disk
    , dStatus
    , dSourceSnapshotId
    , dLastAttachTimestamp
    , dUsers
    , dSourceImage
    , dReplicaZones
    , dDiskEncryptionKey
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dGuestOSFeatures
    , dZone
    , dSelfLink
    , dName
    , dSourceImageId
    , dCreationTimestamp
    , dSourceImageEncryptionKey
    , dLicenseCodes
    , dId
    , dLabels
    , dLicenses
    , dRegion
    , dOptions
    , dPhysicalBlockSizeBytes
    , dType
    , dLabelFingerprint
    , dDescription
    , dSourceSnapshotEncryptionKey
    , dSourceSnapshot

    -- * UsableSubnetworksAggregatedListWarningDataItem
    , UsableSubnetworksAggregatedListWarningDataItem
    , usableSubnetworksAggregatedListWarningDataItem
    , usalwdiValue
    , usalwdiKey

    -- * NodeGroupList
    , NodeGroupList
    , nodeGroupList
    , nglNextPageToken
    , nglKind
    , nglItems
    , nglSelfLink
    , nglWarning
    , nglId

    -- * SSLPolicyWarningsItemCode
    , SSLPolicyWarningsItemCode (..)

    -- * DiskMoveRequest
    , DiskMoveRequest
    , diskMoveRequest
    , dmrTargetDisk
    , dmrDestinationZone

    -- * ForwardingRuleAggregatedListWarningCode
    , ForwardingRuleAggregatedListWarningCode (..)

    -- * SSLPolicyWarningsItemDataItem
    , SSLPolicyWarningsItemDataItem
    , sslPolicyWarningsItemDataItem
    , spwidiValue
    , spwidiKey

    -- * AutoscalingPolicyLoadBalancingUtilization
    , AutoscalingPolicyLoadBalancingUtilization
    , autoscalingPolicyLoadBalancingUtilization
    , aplbuUtilizationTarget

    -- * TargetPoolAggregatedListWarningCode
    , TargetPoolAggregatedListWarningCode (..)

    -- * NetworkEndpointGroupsListNetworkEndpoints
    , NetworkEndpointGroupsListNetworkEndpoints
    , networkEndpointGroupsListNetworkEndpoints
    , neglneNextPageToken
    , neglneKind
    , neglneItems
    , neglneWarning
    , neglneId

    -- * ForwardingRuleAggregatedListWarningDataItem
    , ForwardingRuleAggregatedListWarningDataItem
    , forwardingRuleAggregatedListWarningDataItem
    , fralwdiValue
    , fralwdiKey

    -- * TargetPoolsScopedListWarningDataItem
    , TargetPoolsScopedListWarningDataItem
    , targetPoolsScopedListWarningDataItem
    , tpslwdiValue
    , tpslwdiKey

    -- * InstanceGroupManager
    , InstanceGroupManager
    , instanceGroupManager
    , igmStatus
    , igmKind
    , igmFingerprint
    , igmBaseInstanceName
    , igmZone
    , igmAutoHealingPolicies
    , igmVersions
    , igmInstanceTemplate
    , igmUpdatePolicy
    , igmTargetSize
    , igmSelfLink
    , igmCurrentActions
    , igmName
    , igmCreationTimestamp
    , igmDistributionPolicy
    , igmId
    , igmRegion
    , igmTargetPools
    , igmDescription
    , igmInstanceGroup
    , igmNamedPorts

    -- * InstanceGroupManagerListWarning
    , InstanceGroupManagerListWarning
    , instanceGroupManagerListWarning
    , igmlwData
    , igmlwCode
    , igmlwMessage

    -- * RegionInstanceGroupsListInstances
    , RegionInstanceGroupsListInstances
    , regionInstanceGroupsListInstances
    , rigliNextPageToken
    , rigliKind
    , rigliItems
    , rigliSelfLink
    , rigliWarning
    , rigliId

    -- * DiskListWarning
    , DiskListWarning
    , diskListWarning
    , dlwData
    , dlwCode
    , dlwMessage

    -- * TCPHealthCheck
    , TCPHealthCheck
    , tcpHealthCheck
    , thcResponse
    , thcPortSpecification
    , thcProxyHeader
    , thcPortName
    , thcPort
    , thcRequest

    -- * InstanceGroupManagerAggregatedListWarningDataItem
    , InstanceGroupManagerAggregatedListWarningDataItem
    , instanceGroupManagerAggregatedListWarningDataItem
    , igmalwdiValue
    , igmalwdiKey

    -- * TestPermissionsResponse
    , TestPermissionsResponse
    , testPermissionsResponse
    , tprPermissions

    -- * TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- * RegionAutoscalerListWarning
    , RegionAutoscalerListWarning
    , regionAutoscalerListWarning
    , ralwData
    , ralwCode
    , ralwMessage

    -- * TargetInstanceListWarningCode
    , TargetInstanceListWarningCode (..)

    -- * InterconnectLocationRegionInfoLocationPresence
    , InterconnectLocationRegionInfoLocationPresence (..)

    -- * SSLHealthCheckProxyHeader
    , SSLHealthCheckProxyHeader (..)

    -- * TargetVPNGatewayStatus
    , TargetVPNGatewayStatus (..)

    -- * TargetInstanceListWarningDataItem
    , TargetInstanceListWarningDataItem
    , targetInstanceListWarningDataItem
    , tilwdiValue
    , tilwdiKey

    -- * InstanceGroupManagerAggregatedListWarningCode
    , InstanceGroupManagerAggregatedListWarningCode (..)

    -- * OperationListWarning
    , OperationListWarning
    , operationListWarning
    , olwData
    , olwCode
    , olwMessage

    -- * InstanceGroupsRemoveInstancesRequest
    , InstanceGroupsRemoveInstancesRequest
    , instanceGroupsRemoveInstancesRequest
    , igrirInstances

    -- * InterconnectAttachmentPartnerMetadata
    , InterconnectAttachmentPartnerMetadata
    , interconnectAttachmentPartnerMetadata
    , iapmPortalURL
    , iapmInterconnectName
    , iapmPartnerName

    -- * SnapshotStatus
    , SnapshotStatus (..)

    -- * SecurityPolicyRuleMatcherVersionedExpr
    , SecurityPolicyRuleMatcherVersionedExpr (..)

    -- * MachineTypeListWarningDataItem
    , MachineTypeListWarningDataItem
    , machineTypeListWarningDataItem
    , mtlwdiValue
    , mtlwdiKey

    -- * NetworksRemovePeeringRequest
    , NetworksRemovePeeringRequest
    , networksRemovePeeringRequest
    , nrprName

    -- * TargetHTTPProxyListWarningDataItem
    , TargetHTTPProxyListWarningDataItem
    , targetHTTPProxyListWarningDataItem
    , thttpplwdiValue
    , thttpplwdiKey

    -- * MachineTypeAggregatedListWarning
    , MachineTypeAggregatedListWarning
    , machineTypeAggregatedListWarning
    , mtalwData
    , mtalwCode
    , mtalwMessage

    -- * AutoscalerListWarningCode
    , AutoscalerListWarningCode (..)

    -- * NodeTemplateAggregatedListWarningDataItem
    , NodeTemplateAggregatedListWarningDataItem
    , nodeTemplateAggregatedListWarningDataItem
    , ntalwdiValue
    , ntalwdiKey

    -- * BackendBucketList
    , BackendBucketList
    , backendBucketList
    , bblNextPageToken
    , bblKind
    , bblItems
    , bblSelfLink
    , bblWarning
    , bblId

    -- * InterconnectAttachmentPrivateInfo
    , InterconnectAttachmentPrivateInfo
    , interconnectAttachmentPrivateInfo
    , iapiTag8021q

    -- * AcceleratorTypesScopedList
    , AcceleratorTypesScopedList
    , acceleratorTypesScopedList
    , atslAcceleratorTypes
    , atslWarning

    -- * BackendServiceCdnPolicy
    , BackendServiceCdnPolicy
    , backendServiceCdnPolicy
    , bscpSignedURLCacheMaxAgeSec
    , bscpSignedURLKeyNames
    , bscpCacheKeyPolicy

    -- * DiskTypeListWarningCode
    , DiskTypeListWarningCode (..)

    -- * RouteWarningsItemDataItem
    , RouteWarningsItemDataItem
    , routeWarningsItemDataItem
    , rwidiValue
    , rwidiKey

    -- * NodeGroupAggregatedList
    , NodeGroupAggregatedList
    , nodeGroupAggregatedList
    , ngalNextPageToken
    , ngalKind
    , ngalItems
    , ngalSelfLink
    , ngalWarning
    , ngalId

    -- * AddressPurpose
    , AddressPurpose (..)

    -- * NodeTypeAggregatedListWarningCode
    , NodeTypeAggregatedListWarningCode (..)

    -- * TargetInstancesScopedListWarningCode
    , TargetInstancesScopedListWarningCode (..)

    -- * VPNTunnelListWarning
    , VPNTunnelListWarning
    , vpnTunnelListWarning
    , vtlwData
    , vtlwCode
    , vtlwMessage

    -- * BackendServiceAggregatedListItems
    , BackendServiceAggregatedListItems
    , backendServiceAggregatedListItems
    , bsaliAddtional

    -- * VPNTunnelAggregatedListWarningCode
    , VPNTunnelAggregatedListWarningCode (..)

    -- * InstanceAggregatedListItems
    , InstanceAggregatedListItems
    , instanceAggregatedListItems
    , ialiAddtional

    -- * AutoscalersScopedListWarning
    , AutoscalersScopedListWarning
    , autoscalersScopedListWarning
    , aslwData
    , aslwCode
    , aslwMessage

    -- * DiskInstantiationConfig
    , DiskInstantiationConfig
    , diskInstantiationConfig
    , dicAutoDelete
    , dicInstantiateFrom
    , dicCustomImage
    , dicDeviceName

    -- * DiskTypeAggregatedListWarning
    , DiskTypeAggregatedListWarning
    , diskTypeAggregatedListWarning
    , dtalwData
    , dtalwCode
    , dtalwMessage

    -- * DiskTypeListWarningDataItem
    , DiskTypeListWarningDataItem
    , diskTypeListWarningDataItem
    , dtlwdiValue
    , dtlwdiKey

    -- * SecurityPolicyRule
    , SecurityPolicyRule
    , securityPolicyRule
    , sprPriority
    , sprKind
    , sprAction
    , sprPreview
    , sprMatch
    , sprDescription

    -- * InterconnectsGetDiagnosticsResponse
    , InterconnectsGetDiagnosticsResponse
    , interconnectsGetDiagnosticsResponse
    , igdrResult

    -- * VPNTunnelAggregatedListWarningDataItem
    , VPNTunnelAggregatedListWarningDataItem
    , vpnTunnelAggregatedListWarningDataItem
    , vtalwdiValue
    , vtalwdiKey

    -- * FixedOrPercent
    , FixedOrPercent
    , fixedOrPercent
    , fopCalculated
    , fopPercent
    , fopFixed

    -- * FirewallLogConfig
    , FirewallLogConfig
    , firewallLogConfig
    , flcEnable

    -- * ShieldedInstanceIntegrityPolicy
    , ShieldedInstanceIntegrityPolicy
    , shieldedInstanceIntegrityPolicy
    , siipUpdateAutoLearnPolicy

    -- * TargetHTTPProxyListWarningCode
    , TargetHTTPProxyListWarningCode (..)

    -- * RouterNAT
    , RouterNAT
    , routerNAT
    , rnatNATIPAllocateOption
    , rnatICMPIdleTimeoutSec
    , rnatUdpIdleTimeoutSec
    , rnatNATIPs
    , rnatSubnetworks
    , rnatMinPortsPerVM
    , rnatName
    , rnatSourceSubnetworkIPRangesToNAT
    , rnatTCPEstablishedIdleTimeoutSec
    , rnatTCPTransitoryIdleTimeoutSec

    -- * AutoscalerAggregatedListWarning
    , AutoscalerAggregatedListWarning
    , autoscalerAggregatedListWarning
    , aalwData
    , aalwCode
    , aalwMessage

    -- * AutoscalerListWarningDataItem
    , AutoscalerListWarningDataItem
    , autoscalerListWarningDataItem
    , alwdiValue
    , alwdiKey

    -- * MachineTypeListWarningCode
    , MachineTypeListWarningCode (..)

    -- * NodeTypeListWarning
    , NodeTypeListWarning
    , nodeTypeListWarning
    , ntlwData
    , ntlwCode
    , ntlwMessage

    -- * HealthCheckList
    , HealthCheckList
    , healthCheckList
    , hclNextPageToken
    , hclKind
    , hclItems
    , hclSelfLink
    , hclWarning
    , hclId

    -- * ManagedInstanceLastAttemptErrors
    , ManagedInstanceLastAttemptErrors
    , managedInstanceLastAttemptErrors
    , milaeErrors

    -- * GuestOSFeatureType
    , GuestOSFeatureType (..)

    -- * RouteWarningsItemCode
    , RouteWarningsItemCode (..)

    -- * RouterStatusNATStatus
    , RouterStatusNATStatus
    , routerStatusNATStatus
    , rsnatsUserAllocatedNATIPResources
    , rsnatsName
    , rsnatsAutoAllocatedNATIPs
    , rsnatsMinExtraNATIPsNeeded
    , rsnatsNumVMEndpointsWithNATMAppings
    , rsnatsUserAllocatedNATIPs

    -- * TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- * NodeTypeAggregatedListWarningDataItem
    , NodeTypeAggregatedListWarningDataItem
    , nodeTypeAggregatedListWarningDataItem
    , nValue
    , nKey

    -- * TargetInstancesScopedListWarningDataItem
    , TargetInstancesScopedListWarningDataItem
    , targetInstancesScopedListWarningDataItem
    , tislwdiValue
    , tislwdiKey

    -- * MachineTypesScopedListWarning
    , MachineTypesScopedListWarning
    , machineTypesScopedListWarning
    , mtslwData
    , mtslwCode
    , mtslwMessage

    -- * ZoneSetLabelsRequest
    , ZoneSetLabelsRequest
    , zoneSetLabelsRequest
    , zslrLabels
    , zslrLabelFingerprint

    -- * TargetInstance
    , TargetInstance
    , targetInstance
    , tiKind
    , tiNATPolicy
    , tiZone
    , tiSelfLink
    , tiName
    , tiCreationTimestamp
    , tiId
    , tiDescription
    , tiInstance

    -- * TargetPoolInstanceHealth
    , TargetPoolInstanceHealth
    , targetPoolInstanceHealth
    , tpihKind
    , tpihHealthStatus

    -- * RouterBGPPeerAdvertiseMode
    , RouterBGPPeerAdvertiseMode (..)

    -- * RegionInstanceGroupManagerListWarningCode
    , RegionInstanceGroupManagerListWarningCode (..)

    -- * AcceleratorTypeAggregatedList
    , AcceleratorTypeAggregatedList
    , acceleratorTypeAggregatedList
    , atalNextPageToken
    , atalKind
    , atalItems
    , atalSelfLink
    , atalWarning
    , atalId

    -- * SnapshotStorageBytesStatus
    , SnapshotStorageBytesStatus (..)

    -- * NetworkRoutingConfig
    , NetworkRoutingConfig
    , networkRoutingConfig
    , nrcRoutingMode

    -- * NodeTemplateListWarning
    , NodeTemplateListWarning
    , nodeTemplateListWarning
    , nodData
    , nodCode
    , nodMessage

    -- * InstanceGroupManagersListManagedInstancesResponse
    , InstanceGroupManagersListManagedInstancesResponse
    , instanceGroupManagersListManagedInstancesResponse
    , igmlmirManagedInstances

    -- * InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipServiceAccounts
    , ipNetworkInterfaces
    , ipGuestAccelerators
    , ipMachineType
    , ipMetadata
    , ipShieldedInstanceConfig
    , ipLabels
    , ipScheduling
    , ipMinCPUPlatform
    , ipDisks
    , ipCanIPForward
    , ipDescription
    , ipTags

    -- * ProjectsListXpnHostsRequest
    , ProjectsListXpnHostsRequest
    , projectsListXpnHostsRequest
    , plxhrOrganization

    -- * RegionListWarning
    , RegionListWarning
    , regionListWarning
    , rlwData
    , rlwCode
    , rlwMessage

    -- * HTTP2HealthCheck
    , HTTP2HealthCheck
    , hTTP2HealthCheck
    , httphcResponse
    , httphcPortSpecification
    , httphcRequestPath
    , httphcHost
    , httphcProxyHeader
    , httphcPortName
    , httphcPort

    -- * NodeTemplateAggregatedListWarningCode
    , NodeTemplateAggregatedListWarningCode (..)

    -- * NodeGroupsScopedList
    , NodeGroupsScopedList
    , nodeGroupsScopedList
    , ngslNodeGroups
    , ngslWarning

    -- * DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- * RegionInstanceGroupManagerListWarningDataItem
    , RegionInstanceGroupManagerListWarningDataItem
    , regionInstanceGroupManagerListWarningDataItem
    , rigmlwdiValue
    , rigmlwdiKey

    -- * RuleAction
    , RuleAction (..)

    -- * AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- * AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipDiskName
    , adipSourceImageEncryptionKey
    , adipDiskType
    , adipLabels
    , adipDescription

    -- * UsableSubnetworkSecondaryRange
    , UsableSubnetworkSecondaryRange
    , usableSubnetworkSecondaryRange
    , ussrRangeName
    , ussrIPCIdRRange

    -- * NetworkEndpointGroupsAttachEndpointsRequest
    , NetworkEndpointGroupsAttachEndpointsRequest
    , networkEndpointGroupsAttachEndpointsRequest
    , negaerNetworkEndpoints

    -- * AddressesScopedListWarningDataItem
    , AddressesScopedListWarningDataItem
    , addressesScopedListWarningDataItem
    , aslwdiValue
    , aslwdiKey

    -- * ImageStatus
    , ImageStatus (..)

    -- * InstanceGroupListWarningCode
    , InstanceGroupListWarningCode (..)

    -- * InstanceGroupListWarningDataItem
    , InstanceGroupListWarningDataItem
    , instanceGroupListWarningDataItem
    , iglwdiValue
    , iglwdiKey

    -- * NetworkInterface
    , NetworkInterface
    , networkInterface
    , niKind
    , niFingerprint
    , niAliasIPRanges
    , niNetwork
    , niName
    , niNetworkIP
    , niSubnetwork
    , niAccessConfigs

    -- * FirewallListWarningCode
    , FirewallListWarningCode (..)

    -- * RouterListWarning
    , RouterListWarning
    , routerListWarning
    , rData
    , rCode
    , rMessage

    -- * FirewallListWarningDataItem
    , FirewallListWarningDataItem
    , firewallListWarningDataItem
    , flwdiValue
    , flwdiKey

    -- * InterconnectAttachmentType
    , InterconnectAttachmentType (..)

    -- * TargetPoolsRemoveHealthCheckRequest
    , TargetPoolsRemoveHealthCheckRequest
    , targetPoolsRemoveHealthCheckRequest
    , tprhcrHealthChecks

    -- * AutoscalerStatusDetailsType
    , AutoscalerStatusDetailsType (..)

    -- * FirewallDirection
    , FirewallDirection (..)

    -- * NodeGroupNodeStatus
    , NodeGroupNodeStatus (..)

    -- * TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride
    , TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride (..)

    -- * RegionInstanceGroupManagersSetTargetPoolsRequest
    , RegionInstanceGroupManagersSetTargetPoolsRequest
    , regionInstanceGroupManagersSetTargetPoolsRequest
    , rigmstprFingerprint
    , rigmstprTargetPools

    -- * BackendBucketCdnPolicy
    , BackendBucketCdnPolicy
    , backendBucketCdnPolicy
    , bbcpSignedURLCacheMaxAgeSec
    , bbcpSignedURLKeyNames

    -- * TargetSSLProxyList
    , TargetSSLProxyList
    , targetSSLProxyList
    , tsplNextPageToken
    , tsplKind
    , tsplItems
    , tsplSelfLink
    , tsplWarning
    , tsplId

    -- * CustomerEncryptionKeyProtectedDisk
    , CustomerEncryptionKeyProtectedDisk
    , customerEncryptionKeyProtectedDisk
    , cekpdDiskEncryptionKey
    , cekpdSource

    -- * HealthStatusHealthState
    , HealthStatusHealthState (..)

    -- * InstanceTemplateList
    , InstanceTemplateList
    , instanceTemplateList
    , itlNextPageToken
    , itlKind
    , itlItems
    , itlSelfLink
    , itlWarning
    , itlId

    -- * Reference
    , Reference
    , reference
    , refKind
    , refReferrer
    , refReferenceType
    , refTarget

    -- * InstanceGroupAggregatedListWarning
    , InstanceGroupAggregatedListWarning
    , instanceGroupAggregatedListWarning
    , igalwData
    , igalwCode
    , igalwMessage

    -- * RouteList
    , RouteList
    , routeList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlWarning
    , rlId

    -- * DeprecationStatusState
    , DeprecationStatusState (..)

    -- * InstanceListReferrers
    , InstanceListReferrers
    , instanceListReferrers
    , ilrNextPageToken
    , ilrKind
    , ilrItems
    , ilrSelfLink
    , ilrWarning
    , ilrId

    -- * NodeGroupStatus
    , NodeGroupStatus (..)

    -- * Router
    , Router
    , router
    , rouBGPPeers
    , rouBGP
    , rouKind
    , rouNetwork
    , rouInterfaces
    , rouSelfLink
    , rouName
    , rouCreationTimestamp
    , rouId
    , rouRegion
    , rouNATs
    , rouDescription

    -- * RouterAggregatedListWarningCode
    , RouterAggregatedListWarningCode (..)

    -- * RoutersScopedListWarningCode
    , RoutersScopedListWarningCode (..)

    -- * RouterAggregatedListWarningDataItem
    , RouterAggregatedListWarningDataItem
    , routerAggregatedListWarningDataItem
    , ralwdiValue
    , ralwdiKey

    -- * TargetHTTPSProxyListWarningCode
    , TargetHTTPSProxyListWarningCode (..)

    -- * RoutersScopedListWarningDataItem
    , RoutersScopedListWarningDataItem
    , routersScopedListWarningDataItem
    , rslwdiValue
    , rslwdiKey

    -- * SubnetworksSetPrivateIPGoogleAccessRequest
    , SubnetworksSetPrivateIPGoogleAccessRequest
    , subnetworksSetPrivateIPGoogleAccessRequest
    , sspigarPrivateIPGoogleAccess

    -- * TargetHTTPSProxyListWarningDataItem
    , TargetHTTPSProxyListWarningDataItem
    , targetHTTPSProxyListWarningDataItem
    , thplwdiValue
    , thplwdiKey

    -- * InterconnectDiagnosticsLinkLACPStatusState
    , InterconnectDiagnosticsLinkLACPStatusState (..)

    -- * ManagedInstanceCurrentAction
    , ManagedInstanceCurrentAction (..)

    -- * TargetVPNGatewayList
    , TargetVPNGatewayList
    , targetVPNGatewayList
    , tvglNextPageToken
    , tvglKind
    , tvglItems
    , tvglSelfLink
    , tvglWarning
    , tvglId

    -- * TargetInstanceNATPolicy
    , TargetInstanceNATPolicy (..)

    -- * SSLCertificateList
    , SSLCertificateList
    , sslCertificateList
    , sclNextPageToken
    , sclKind
    , sclItems
    , sclSelfLink
    , sclWarning
    , sclId

    -- * FirewallAllowedItem
    , FirewallAllowedItem
    , firewallAllowedItem
    , faiIPProtocol
    , faiPorts

    -- * RouterAdvertisedIPRange
    , RouterAdvertisedIPRange
    , routerAdvertisedIPRange
    , rairRange
    , rairDescription

    -- * RouterListWarningDataItem
    , RouterListWarningDataItem
    , routerListWarningDataItem
    , rlwdiValue
    , rlwdiKey

    -- * Rule
    , Rule
    , rule
    , rAction
    , rNotIns
    , rIns
    , rLogConfigs
    , rConditions
    , rPermissions
    , rDescription

    -- * BackendServiceAggregatedList
    , BackendServiceAggregatedList
    , backendServiceAggregatedList
    , bsalNextPageToken
    , bsalKind
    , bsalItems
    , bsalSelfLink
    , bsalWarning
    , bsalId

    -- * Network
    , Network
    , network
    , nAutoCreateSubnetworks
    , nKind
    , nRoutingConfig
    , nSubnetworks
    , nIPv4Range
    , nSelfLink
    , nName
    , nCreationTimestamp
    , nId
    , nGatewayIPv4
    , nDescription
    , nPeerings

    -- * RoutersScopedListWarning
    , RoutersScopedListWarning
    , routersScopedListWarning
    , rslwData
    , rslwCode
    , rslwMessage

    -- * UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- * RouterBGPPeerAdvertisedGroupsItem
    , RouterBGPPeerAdvertisedGroupsItem (..)

    -- * AccessConfigType
    , AccessConfigType (..)

    -- * TargetHTTPSProxyListWarning
    , TargetHTTPSProxyListWarning
    , targetHTTPSProxyListWarning
    , thplwData
    , thplwCode
    , thplwMessage

    -- * AddressesScopedListWarning
    , AddressesScopedListWarning
    , addressesScopedListWarning
    , aData
    , aCode
    , aMessage

    -- * SecurityPolicy
    , SecurityPolicy
    , securityPolicy
    , secRules
    , secKind
    , secFingerprint
    , secSelfLink
    , secName
    , secCreationTimestamp
    , secId
    , secDescription

    -- * InstanceGroupAggregatedListWarningDataItem
    , InstanceGroupAggregatedListWarningDataItem
    , instanceGroupAggregatedListWarningDataItem
    , igalwdiValue
    , igalwdiKey

    -- * ForwardingRuleIPVersion
    , ForwardingRuleIPVersion (..)

    -- * RouterListWarningCode
    , RouterListWarningCode (..)

    -- * ImageRawDisk
    , ImageRawDisk
    , imageRawDisk
    , irdContainerType
    , irdSource
    , irdSha1Checksum

    -- * InstanceAggregatedList
    , InstanceAggregatedList
    , instanceAggregatedList
    , ialNextPageToken
    , ialKind
    , ialItems
    , ialSelfLink
    , ialWarning
    , ialId

    -- * ForwardingRuleReference
    , ForwardingRuleReference
    , forwardingRuleReference
    , frrForwardingRule

    -- * TargetTCPProxiesSetBackendServiceRequest
    , TargetTCPProxiesSetBackendServiceRequest
    , targetTCPProxiesSetBackendServiceRequest
    , ttpsbsrService

    -- * SSLHealthCheck
    , SSLHealthCheck
    , sslHealthCheck
    , shcResponse
    , shcPortSpecification
    , shcProxyHeader
    , shcPortName
    , shcPort
    , shcRequest

    -- * Address
    , Address
    , address
    , aPrefixLength
    , aNetworkTier
    , aStatus
    , aUsers
    , aKind
    , aIPVersion
    , aNetwork
    , aAddress
    , aPurpose
    , aSelfLink
    , aName
    , aCreationTimestamp
    , aSubnetwork
    , aId
    , aRegion
    , aDescription
    , aAddressType

    -- * NodeGroupAggregatedListItems
    , NodeGroupAggregatedListItems
    , nodeGroupAggregatedListItems
    , ngaliAddtional

    -- * InstanceGroupAggregatedListWarningCode
    , InstanceGroupAggregatedListWarningCode (..)

    -- * InstanceGroupListWarning
    , InstanceGroupListWarning
    , instanceGroupListWarning
    , iglwData
    , iglwCode
    , iglwMessage

    -- * AttachedDiskInitializeParamsLabels
    , AttachedDiskInitializeParamsLabels
    , attachedDiskInitializeParamsLabels
    , adiplAddtional

    -- * Zone
    , Zone
    , zone
    , zStatus
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zId
    , zRegion
    , zAvailableCPUPlatforms
    , zDescription
    , zDeprecated

    -- * RouterBGP
    , RouterBGP
    , routerBGP
    , rbASN
    , rbAdvertiseMode
    , rbAdvertisedGroups
    , rbAdvertisedIPRanges

    -- * ProjectsSetDefaultNetworkTierRequestNetworkTier
    , ProjectsSetDefaultNetworkTierRequestNetworkTier (..)

    -- * FirewallListWarning
    , FirewallListWarning
    , firewallListWarning
    , flwData
    , flwCode
    , flwMessage

    -- * BackendServicesScopedList
    , BackendServicesScopedList
    , backendServicesScopedList
    , bsslWarning
    , bsslBackendServices

    -- * InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- * TargetSSLProxiesSetSSLCertificatesRequest
    , TargetSSLProxiesSetSSLCertificatesRequest
    , targetSSLProxiesSetSSLCertificatesRequest
    , tspsscrSSLCertificates

    -- * HealthStatusForNetworkEndpoint
    , HealthStatusForNetworkEndpoint
    , healthStatusForNetworkEndpoint
    , hsfneHealthCheck
    , hsfneForwardingRule
    , hsfneHealthState
    , hsfneBackendService

    -- * RouterAggregatedListWarning
    , RouterAggregatedListWarning
    , routerAggregatedListWarning
    , rouData
    , rouCode
    , rouMessage

    -- * InstancesScopedList
    , InstancesScopedList
    , instancesScopedList
    , islWarning
    , islInstances

    -- * AcceleratorTypeAggregatedListItems
    , AcceleratorTypeAggregatedListItems
    , acceleratorTypeAggregatedListItems
    , ataliAddtional

    -- * TargetVPNGatewayAggregatedListWarningDataItem
    , TargetVPNGatewayAggregatedListWarningDataItem
    , targetVPNGatewayAggregatedListWarningDataItem
    , tvgalwdiValue
    , tvgalwdiKey

    -- * BackendServiceLoadBalancingScheme
    , BackendServiceLoadBalancingScheme (..)

    -- * HealthCheckReference
    , HealthCheckReference
    , healthCheckReference
    , hcrHealthCheck

    -- * TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems
    , tialiAddtional

    -- * TargetHTTPSProxiesSetQuicOverrideRequest
    , TargetHTTPSProxiesSetQuicOverrideRequest
    , targetHTTPSProxiesSetQuicOverrideRequest
    , thpsqorQuicOverride

    -- * TargetSSLProxyListWarning
    , TargetSSLProxyListWarning
    , targetSSLProxyListWarning
    , tsplwData
    , tsplwCode
    , tsplwMessage

    -- * InstanceTemplateListWarning
    , InstanceTemplateListWarning
    , instanceTemplateListWarning
    , itlwData
    , itlwCode
    , itlwMessage

    -- * InstanceListReferrersWarning
    , InstanceListReferrersWarning
    , instanceListReferrersWarning
    , ilrwData
    , ilrwCode
    , ilrwMessage

    -- * RouteListWarning
    , RouteListWarning
    , routeListWarning
    , rlwlData
    , rlwlCode
    , rlwlMessage

    -- * TargetTCPProxyProxyHeader
    , TargetTCPProxyProxyHeader (..)

    -- * InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalNextPageToken
    , igalKind
    , igalItems
    , igalSelfLink
    , igalWarning
    , igalId

    -- * TargetVPNGatewayAggregatedListWarningCode
    , TargetVPNGatewayAggregatedListWarningCode (..)

    -- * OperationStatus
    , OperationStatus (..)

    -- * Route
    , Route
    , route
    , rrNextHopPeering
    , rrPriority
    , rrKind
    , rrNextHopGateway
    , rrNextHopNetwork
    , rrNetwork
    , rrWarnings
    , rrNextHopIP
    , rrDestRange
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrId
    , rrNextHopVPNTunnel
    , rrDescription
    , rrTags
    , rrNextHopInstance

    -- * TargetVPNGatewaysScopedListWarningDataItem
    , TargetVPNGatewaysScopedListWarningDataItem
    , targetVPNGatewaysScopedListWarningDataItem
    , tvgslwdiValue
    , tvgslwdiKey

    -- * LogConfigCloudAuditOptionsLogName
    , LogConfigCloudAuditOptionsLogName (..)

    -- * LicenseCodeState
    , LicenseCodeState (..)

    -- * InterconnectLocationRegionInfo
    , InterconnectLocationRegionInfo
    , interconnectLocationRegionInfo
    , ilriLocationPresence
    , ilriExpectedRttMs
    , ilriRegion

    -- * TCPHealthCheckPortSpecification
    , TCPHealthCheckPortSpecification (..)

    -- * TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- * TargetHTTPSProxiesSetSSLCertificatesRequest
    , TargetHTTPSProxiesSetSSLCertificatesRequest
    , targetHTTPSProxiesSetSSLCertificatesRequest
    , thpsscrSSLCertificates

    -- * InstanceTemplate
    , InstanceTemplate
    , instanceTemplate
    , itSourceInstance
    , itKind
    , itSelfLink
    , itName
    , itCreationTimestamp
    , itId
    , itSourceInstanceParams
    , itDescription
    , itProperties

    -- * XpnResourceId
    , XpnResourceId
    , xpnResourceId
    , xriId
    , xriType

    -- * RouterList
    , RouterList
    , routerList
    , rllNextPageToken
    , rllKind
    , rllItems
    , rllSelfLink
    , rllWarning
    , rllId

    -- * TargetSSLProxy
    , TargetSSLProxy
    , targetSSLProxy
    , tspSSLPolicy
    , tspSSLCertificates
    , tspService
    , tspKind
    , tspSelfLink
    , tspName
    , tspCreationTimestamp
    , tspId
    , tspProxyHeader
    , tspDescription

    -- * InstanceGroupManagerStatus
    , InstanceGroupManagerStatus
    , instanceGroupManagerStatus
    , igmsIsStable

    -- * SSLCertificateListWarning
    , SSLCertificateListWarning
    , sslCertificateListWarning
    , sclwData
    , sclwCode
    , sclwMessage

    -- * SnapshotListWarningDataItem
    , SnapshotListWarningDataItem
    , snapshotListWarningDataItem
    , slwdiValue
    , slwdiKey

    -- * TargetVPNGateway
    , TargetVPNGateway
    , targetVPNGateway
    , tvgStatus
    , tvgKind
    , tvgNetwork
    , tvgSelfLink
    , tvgName
    , tvgCreationTimestamp
    , tvgId
    , tvgRegion
    , tvgTunnels
    , tvgDescription
    , tvgForwardingRules

    -- * DiskStatus
    , DiskStatus (..)

    -- * ResourceCommitment
    , ResourceCommitment
    , resourceCommitment
    , rcAmount
    , rcType

    -- * SnapshotListWarningCode
    , SnapshotListWarningCode (..)

    -- * BackendServiceIAP
    , BackendServiceIAP
    , backendServiceIAP
    , bsiapEnabled
    , bsiapOAuth2ClientSecretSha256
    , bsiapOAuth2ClientSecret
    , bsiapOAuth2ClientId

    -- * TargetVPNGatewayListWarning
    , TargetVPNGatewayListWarning
    , targetVPNGatewayListWarning
    , tvglwData
    , tvglwCode
    , tvglwMessage

    -- * InterconnectAttachmentEdgeAvailabilityDomain
    , InterconnectAttachmentEdgeAvailabilityDomain (..)

    -- * ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- * HTTPHealthCheckProxyHeader
    , HTTPHealthCheckProxyHeader (..)

    -- * VMEndpointNATMAppingsListWarningDataItem
    , VMEndpointNATMAppingsListWarningDataItem
    , vMEndpointNATMAppingsListWarningDataItem
    , vmenatmalwdiValue
    , vmenatmalwdiKey

    -- * InterconnectLocationContinent
    , InterconnectLocationContinent (..)

    -- * URLMapsValidateResponse
    , URLMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- * SSLCertificate
    , SSLCertificate
    , sslCertificate
    , scPrivateKey
    , scKind
    , scSelfLink
    , scName
    , scCreationTimestamp
    , scId
    , scCertificate
    , scDescription

    -- * VMEndpointNATMAppingsListWarningCode
    , VMEndpointNATMAppingsListWarningCode (..)

    -- * RouterStatusBGPPeerStatus
    , RouterStatusBGPPeerStatus
    , routerStatusBGPPeerStatus
    , rsbpsStatus
    , rsbpsIPAddress
    , rsbpsState
    , rsbpsPeerIPAddress
    , rsbpsUptime
    , rsbpsNumLearnedRoutes
    , rsbpsName
    , rsbpsUptimeSeconds
    , rsbpsAdvertisedRoutes
    , rsbpsLinkedVPNTunnel

    -- * NodeTemplateStatus
    , NodeTemplateStatus (..)

    -- * URLMapReference
    , URLMapReference
    , urlMapReference
    , umrURLMap

    -- * AttachedDiskMode
    , AttachedDiskMode (..)

    -- * TargetPoolsAddHealthCheckRequest
    , TargetPoolsAddHealthCheckRequest
    , targetPoolsAddHealthCheckRequest
    , tpahcrHealthChecks

    -- * InstanceGroupManagerUpdatePolicyType
    , InstanceGroupManagerUpdatePolicyType (..)

    -- * CommitmentsScopedList
    , CommitmentsScopedList
    , commitmentsScopedList
    , cslWarning
    , cslCommitments

    -- * TargetVPNGatewayListWarningCode
    , TargetVPNGatewayListWarningCode (..)

    -- * DiskAggregatedListItems
    , DiskAggregatedListItems
    , diskAggregatedListItems
    , daliAddtional

    -- * TargetVPNGatewayAggregatedListWarning
    , TargetVPNGatewayAggregatedListWarning
    , targetVPNGatewayAggregatedListWarning
    , tvgalwData
    , tvgalwCode
    , tvgalwMessage

    -- * UsageExportLocation
    , UsageExportLocation
    , usageExportLocation
    , uelReportNamePrefix
    , uelBucketName

    -- * InstanceTemplateListWarningCode
    , InstanceTemplateListWarningCode (..)

    -- * ZoneList
    , ZoneList
    , zoneList
    , zlNextPageToken
    , zlKind
    , zlItems
    , zlSelfLink
    , zlWarning
    , zlId

    -- * SSLCertificateListWarningDataItem
    , SSLCertificateListWarningDataItem
    , sslCertificateListWarningDataItem
    , sclwdiValue
    , sclwdiKey

    -- * TargetSSLProxyListWarningCode
    , TargetSSLProxyListWarningCode (..)

    -- * DistributionPolicyZoneConfiguration
    , DistributionPolicyZoneConfiguration
    , distributionPolicyZoneConfiguration
    , dpzcZone

    -- * RegionStatus
    , RegionStatus (..)

    -- * TargetTCPProxiesSetProxyHeaderRequest
    , TargetTCPProxiesSetProxyHeaderRequest
    , targetTCPProxiesSetProxyHeaderRequest
    , ttpsphrProxyHeader

    -- * InterconnectAttachmentBandwidth
    , InterconnectAttachmentBandwidth (..)

    -- * RouterBGPPeer
    , RouterBGPPeer
    , routerBGPPeer
    , rbpIPAddress
    , rbpInterfaceName
    , rbpPeerIPAddress
    , rbpAdvertisedRoutePriority
    , rbpPeerASN
    , rbpAdvertiseMode
    , rbpName
    , rbpAdvertisedGroups
    , rbpManagementType
    , rbpAdvertisedIPRanges

    -- * SubnetworksExpandIPCIdRRangeRequest
    , SubnetworksExpandIPCIdRRangeRequest
    , subnetworksExpandIPCIdRRangeRequest
    , seicirrrIPCIdRRange

    -- * ManagedInstance
    , ManagedInstance
    , managedInstance
    , miLastAttempt
    , miCurrentAction
    , miVersion
    , miId
    , miInstanceStatus
    , miInstance

    -- * InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems
    , igmaliAddtional

    -- * InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- * Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxConnections
    , bMaxConnectionsPerInstance
    , bMaxRatePerEndpoint
    , bMaxConnectionsPerEndpoint
    , bMaxRatePerInstance
    , bDescription
    , bCapacityScaler

    -- * TargetVPNGatewaysScopedListWarning
    , TargetVPNGatewaysScopedListWarning
    , targetVPNGatewaysScopedListWarning
    , tvgslwData
    , tvgslwCode
    , tvgslwMessage

    -- * TargetSSLProxiesSetProxyHeaderRequestProxyHeader
    , TargetSSLProxiesSetProxyHeaderRequestProxyHeader (..)

    -- * AddressList
    , AddressList
    , addressList
    , alNextPageToken
    , alKind
    , alItems
    , alSelfLink
    , alWarning
    , alId

    -- * TargetVPNGatewayListWarningDataItem
    , TargetVPNGatewayListWarningDataItem
    , targetVPNGatewayListWarningDataItem
    , tvglwdiValue
    , tvglwdiKey

    -- * ForwardingRuleAggregatedListItems
    , ForwardingRuleAggregatedListItems
    , forwardingRuleAggregatedListItems
    , fraliAddtional

    -- * HTTP2HealthCheckPortSpecification
    , HTTP2HealthCheckPortSpecification (..)

    -- * InterconnectAttachmentAggregatedList
    , InterconnectAttachmentAggregatedList
    , interconnectAttachmentAggregatedList
    , iaalNextPageToken
    , iaalKind
    , iaalItems
    , iaalSelfLink
    , iaalWarning
    , iaalId

    -- * InstanceListReferrersWarningCode
    , InstanceListReferrersWarningCode (..)

    -- * ConditionOp
    , ConditionOp (..)

    -- * RouteListWarningCode
    , RouteListWarningCode (..)

    -- * OperationAggregatedListItems
    , OperationAggregatedListItems
    , operationAggregatedListItems
    , oaliAddtional

    -- * InstanceGroupManagerActionsSummary
    , InstanceGroupManagerActionsSummary
    , instanceGroupManagerActionsSummary
    , igmasDeleting
    , igmasRestarting
    , igmasNone
    , igmasCreating
    , igmasVerifying
    , igmasRefreshing
    , igmasCreatingWithoutRetries
    , igmasRecreating
    , igmasAbandoning

    -- * XpnHostList
    , XpnHostList
    , xpnHostList
    , xhlNextPageToken
    , xhlKind
    , xhlItems
    , xhlSelfLink
    , xhlWarning
    , xhlId

    -- * VPNTunnelStatus
    , VPNTunnelStatus (..)

    -- * InstanceTemplateListWarningDataItem
    , InstanceTemplateListWarningDataItem
    , instanceTemplateListWarningDataItem
    , itlwdiValue
    , itlwdiKey

    -- * SSLCertificateListWarningCode
    , SSLCertificateListWarningCode (..)

    -- * ServiceAccount
    , ServiceAccount
    , serviceAccount
    , saEmail
    , saScopes

    -- * SnapshotListWarning
    , SnapshotListWarning
    , snapshotListWarning
    , sData
    , sCode
    , sMessage

    -- * RegionInstanceGroupManagersAbandonInstancesRequest
    , RegionInstanceGroupManagersAbandonInstancesRequest
    , regionInstanceGroupManagersAbandonInstancesRequest
    , rigmairInstances

    -- * NetworkList
    , NetworkList
    , networkList
    , nlNextPageToken
    , nlKind
    , nlItems
    , nlSelfLink
    , nlWarning
    , nlId

    -- * NetworkPeering
    , NetworkPeering
    , networkPeering
    , netState
    , netExchangeSubnetRoutes
    , netStateDetails
    , netNetwork
    , netName
    , netAutoCreateRoutes

    -- * TargetSSLProxyListWarningDataItem
    , TargetSSLProxyListWarningDataItem
    , targetSSLProxyListWarningDataItem
    , tsplwdiValue
    , tsplwdiKey

    -- * InstanceGroupsListInstancesRequest
    , InstanceGroupsListInstancesRequest
    , instanceGroupsListInstancesRequest
    , iglirInstanceState

    -- * DiskInstantiationConfigInstantiateFrom
    , DiskInstantiationConfigInstantiateFrom (..)

    -- * InstanceListReferrersWarningDataItem
    , InstanceListReferrersWarningDataItem
    , instanceListReferrersWarningDataItem
    , ilrwdiValue
    , ilrwdiKey

    -- * RouteListWarningDataItem
    , RouteListWarningDataItem
    , routeListWarningDataItem
    , rValue
    , rKey

    -- * InterconnectAttachmentsScopedList
    , InterconnectAttachmentsScopedList
    , interconnectAttachmentsScopedList
    , iaslWarning
    , iaslInterconnectAttachments

    -- * SecurityPolicyList
    , SecurityPolicyList
    , securityPolicyList
    , splNextPageToken
    , splKind
    , splItems
    , splWarning
    , splId

    -- * BackendBalancingMode
    , BackendBalancingMode (..)

    -- * RouterBGPAdvertisedGroupsItem
    , RouterBGPAdvertisedGroupsItem (..)

    -- * CommitmentAggregatedList
    , CommitmentAggregatedList
    , commitmentAggregatedList
    , calNextPageToken
    , calKind
    , calItems
    , calSelfLink
    , calWarning
    , calId

    -- * RegionInstanceGroupList
    , RegionInstanceGroupList
    , regionInstanceGroupList
    , riglNextPageToken
    , riglKind
    , riglItems
    , riglSelfLink
    , riglWarning
    , riglId

    -- * VMEndpointNATMAppingsListWarning
    , VMEndpointNATMAppingsListWarning
    , vMEndpointNATMAppingsListWarning
    , vmenatmalwData
    , vmenatmalwCode
    , vmenatmalwMessage

    -- * TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems
    , tpaliAddtional

    -- * NodeGroupsAddNodesRequest
    , NodeGroupsAddNodesRequest
    , nodeGroupsAddNodesRequest
    , nganrAdditionalNodeCount

    -- * NodeTypeAggregatedList
    , NodeTypeAggregatedList
    , nodeTypeAggregatedList
    , ntalNextPageToken
    , ntalKind
    , ntalItems
    , ntalSelfLink
    , ntalWarning
    , ntalId

    -- * TargetInstancesScopedList
    , TargetInstancesScopedList
    , targetInstancesScopedList
    , tislWarning
    , tislTargetInstances

    -- * NetworkEndpointGroupListWarningCode
    , NetworkEndpointGroupListWarningCode (..)

    -- * NetworkRoutingConfigRoutingMode
    , NetworkRoutingConfigRoutingMode (..)

    -- * SubnetworkListWarningCode
    , SubnetworkListWarningCode (..)

    -- * SubnetworkListWarningDataItem
    , SubnetworkListWarningDataItem
    , subnetworkListWarningDataItem
    , sValue
    , sKey

    -- * NetworkEndpointGroupListWarningDataItem
    , NetworkEndpointGroupListWarningDataItem
    , networkEndpointGroupListWarningDataItem
    , neglwdiValue
    , neglwdiKey

    -- * ProjectsDisableXpnResourceRequest
    , ProjectsDisableXpnResourceRequest
    , projectsDisableXpnResourceRequest
    , pdxrrXpnResource

    -- * CommitmentStatus
    , CommitmentStatus (..)

    -- * AddressAggregatedListItems
    , AddressAggregatedListItems
    , addressAggregatedListItems
    , aAddtional

    -- * InterconnectListWarningCode
    , InterconnectListWarningCode (..)

    -- * AutoscalerList
    , AutoscalerList
    , autoscalerList
    , autNextPageToken
    , autKind
    , autItems
    , autSelfLink
    , autWarning
    , autId

    -- * NetworkEndpointGroupAggregatedListWarning
    , NetworkEndpointGroupAggregatedListWarning
    , networkEndpointGroupAggregatedListWarning
    , negalwData
    , negalwCode
    , negalwMessage

    -- * SSLPolicyMinTLSVersion
    , SSLPolicyMinTLSVersion (..)

    -- * InterconnectListWarningDataItem
    , InterconnectListWarningDataItem
    , interconnectListWarningDataItem
    , iValue
    , iKey

    -- * SubnetworkAggregatedListWarning
    , SubnetworkAggregatedListWarning
    , subnetworkAggregatedListWarning
    , salwData
    , salwCode
    , salwMessage

    -- * InterconnectLocation
    , InterconnectLocation
    , interconnectLocation
    , intFacilityProviderFacilityId
    , intStatus
    , intRegionInfos
    , intKind
    , intAddress
    , intFacilityProvider
    , intSelfLink
    , intPeeringdbFacilityId
    , intName
    , intCity
    , intAvailabilityZone
    , intCreationTimestamp
    , intId
    , intContinent
    , intDescription

    -- * TargetSSLProxiesSetProxyHeaderRequest
    , TargetSSLProxiesSetProxyHeaderRequest
    , targetSSLProxiesSetProxyHeaderRequest
    , tspsphrProxyHeader

    -- * HTTPHealthCheckListWarningCode
    , HTTPHealthCheckListWarningCode (..)

    -- * SSLPoliciesListWarningCode
    , SSLPoliciesListWarningCode (..)

    -- * VPNTunnelAggregatedList
    , VPNTunnelAggregatedList
    , vpnTunnelAggregatedList
    , vtalNextPageToken
    , vtalKind
    , vtalItems
    , vtalSelfLink
    , vtalWarning
    , vtalId

    -- * SSLPoliciesListWarningDataItem
    , SSLPoliciesListWarningDataItem
    , sslPoliciesListWarningDataItem
    , splwdiValue
    , splwdiKey

    -- * InterconnectCircuitInfo
    , InterconnectCircuitInfo
    , interconnectCircuitInfo
    , iciGoogleCircuitId
    , iciCustomerDemarcId
    , iciGoogleDemarcId

    -- * AttachedDisk
    , AttachedDisk
    , attachedDisk
    , adDiskEncryptionKey
    , adKind
    , adMode
    , adGuestOSFeatures
    , adBoot
    , adAutoDelete
    , adInitializeParams
    , adDeviceName
    , adInterface
    , adSource
    , adLicenses
    , adType
    , adIndex

    -- * HTTPHealthCheckListWarningDataItem
    , HTTPHealthCheckListWarningDataItem
    , hTTPHealthCheckListWarningDataItem
    , httphclwdiValue
    , httphclwdiKey

    -- * InterconnectAttachmentOperationalStatus
    , InterconnectAttachmentOperationalStatus (..)

    -- * DiskTypeList
    , DiskTypeList
    , diskTypeList
    , dtlNextPageToken
    , dtlKind
    , dtlItems
    , dtlSelfLink
    , dtlWarning
    , dtlId

    -- * TargetTCPProxyListWarningCode
    , TargetTCPProxyListWarningCode (..)

    -- * RegionInstanceGroupsSetNamedPortsRequest
    , RegionInstanceGroupsSetNamedPortsRequest
    , regionInstanceGroupsSetNamedPortsRequest
    , rigsnprFingerprint
    , rigsnprNamedPorts

    -- * TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- * TargetTCPProxyListWarningDataItem
    , TargetTCPProxyListWarningDataItem
    , targetTCPProxyListWarningDataItem
    , ttplwdiValue
    , ttplwdiKey

    -- * ProjectsGetXpnResources
    , ProjectsGetXpnResources
    , projectsGetXpnResources
    , pgxrNextPageToken
    , pgxrKind
    , pgxrResources

    -- * NetworkEndpointWithHealthStatus
    , NetworkEndpointWithHealthStatus
    , networkEndpointWithHealthStatus
    , newhsHealths
    , newhsNetworkEndpoint

    -- * MachineTypeList
    , MachineTypeList
    , machineTypeList
    , mtlNextPageToken
    , mtlKind
    , mtlItems
    , mtlSelfLink
    , mtlWarning
    , mtlId

    -- * TargetHTTPProxyList
    , TargetHTTPProxyList
    , targetHTTPProxyList
    , thttpplNextPageToken
    , thttpplKind
    , thttpplItems
    , thttpplSelfLink
    , thttpplWarning
    , thttpplId

    -- * NodeGroupsListNodesWarning
    , NodeGroupsListNodesWarning
    , nodeGroupsListNodesWarning
    , nglnwData
    , nglnwCode
    , nglnwMessage

    -- * NodeTemplateAggregatedList
    , NodeTemplateAggregatedList
    , nodeTemplateAggregatedList
    , nodNextPageToken
    , nodKind
    , nodItems
    , nodSelfLink
    , nodWarning
    , nodId

    -- * InterconnectLocationListWarning
    , InterconnectLocationListWarning
    , interconnectLocationListWarning
    , illwData
    , illwCode
    , illwMessage

    -- * InstanceGroupsListInstancesWarning
    , InstanceGroupsListInstancesWarning
    , instanceGroupsListInstancesWarning
    , igliwData
    , igliwCode
    , igliwMessage

    -- * RegionInstanceGroupManagerList
    , RegionInstanceGroupManagerList
    , regionInstanceGroupManagerList
    , rigmlNextPageToken
    , rigmlKind
    , rigmlItems
    , rigmlSelfLink
    , rigmlWarning
    , rigmlId

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * ForwardingRuleIPProtocol
    , ForwardingRuleIPProtocol (..)

    -- * DiskTypesScopedList
    , DiskTypesScopedList
    , diskTypesScopedList
    , dtslDiskTypes
    , dtslWarning

    -- * NetworkEndpointGroupsListEndpointsRequestHealthStatus
    , NetworkEndpointGroupsListEndpointsRequestHealthStatus (..)

    -- * LogConfigCloudAuditOptions
    , LogConfigCloudAuditOptions
    , logConfigCloudAuditOptions
    , lccaoAuthorizationLoggingOptions
    , lccaoLogName

    -- * ImageListWarningCode
    , ImageListWarningCode (..)

    -- * AddressStatus
    , AddressStatus (..)

    -- * ProjectsSetDefaultNetworkTierRequest
    , ProjectsSetDefaultNetworkTierRequest
    , projectsSetDefaultNetworkTierRequest
    , psdntrNetworkTier

    -- * ImageListWarningDataItem
    , ImageListWarningDataItem
    , imageListWarningDataItem
    , imaValue
    , imaKey

    -- * AcceleratorTypeListWarningDataItem
    , AcceleratorTypeListWarningDataItem
    , acceleratorTypeListWarningDataItem
    , atlwdiValue
    , atlwdiKey

    -- * InterconnectOutageNotification
    , InterconnectOutageNotification
    , interconnectOutageNotification
    , ionState
    , ionAffectedCircuits
    , ionStartTime
    , ionIssueType
    , ionName
    , ionEndTime
    , ionSource
    , ionDescription

    -- * NodeTemplateList
    , NodeTemplateList
    , nodeTemplateList
    , ntlNextPageToken
    , ntlKind
    , ntlItems
    , ntlSelfLink
    , ntlWarning
    , ntlId

    -- * AcceleratorTypeListWarningCode
    , AcceleratorTypeListWarningCode (..)

    -- * DiskTypeAggregatedList
    , DiskTypeAggregatedList
    , diskTypeAggregatedList
    , dtalNextPageToken
    , dtalKind
    , dtalItems
    , dtalSelfLink
    , dtalWarning
    , dtalId

    -- * HTTPHealthCheck
    , HTTPHealthCheck
    , hTTPHealthCheck
    , hResponse
    , hPortSpecification
    , hRequestPath
    , hHost
    , hProxyHeader
    , hPortName
    , hPort

    -- * URLMapListWarningDataItem
    , URLMapListWarningDataItem
    , urlMapListWarningDataItem
    , umlwdiValue
    , umlwdiKey

    -- * AddressNetworkTier
    , AddressNetworkTier (..)

    -- * RouterNATSubnetworkToNAT
    , RouterNATSubnetworkToNAT
    , routerNATSubnetworkToNAT
    , rnatstnatSourceIPRangesToNAT
    , rnatstnatName
    , rnatstnatSecondaryIPRangeNames

    -- * BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghKind
    , bsghHealthStatus

    -- * URLMapListWarningCode
    , URLMapListWarningCode (..)

    -- * InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- * AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- * LogConfigDataAccessOptions
    , LogConfigDataAccessOptions
    , logConfigDataAccessOptions
    , lcdaoLogMode

    -- * AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalWarning
    , aalId

    -- * RouterAggregatedListItems
    , RouterAggregatedListItems
    , routerAggregatedListItems
    , raliAddtional

    -- * AcceleratorTypesScopedListWarning
    , AcceleratorTypesScopedListWarning
    , acceleratorTypesScopedListWarning
    , atslwData
    , atslwCode
    , atslwMessage

    -- * TargetTCPProxy
    , TargetTCPProxy
    , targetTCPProxy
    , ttpService
    , ttpKind
    , ttpSelfLink
    , ttpName
    , ttpCreationTimestamp
    , ttpId
    , ttpProxyHeader
    , ttpDescription

    -- * SchedulingNodeAffinityOperator
    , SchedulingNodeAffinityOperator (..)

    -- * BackendBucketListWarning
    , BackendBucketListWarning
    , backendBucketListWarning
    , bblwData
    , bblwCode
    , bblwMessage

    -- * ProjectDefaultNetworkTier
    , ProjectDefaultNetworkTier (..)

    -- * ImageLabels
    , ImageLabels
    , imageLabels
    , iAddtional

    -- * NodeGroupListWarningCode
    , NodeGroupListWarningCode (..)

    -- * DistributionPolicy
    , DistributionPolicy
    , distributionPolicy
    , dpZones

    -- * RouterNATSourceSubnetworkIPRangesToNAT
    , RouterNATSourceSubnetworkIPRangesToNAT (..)

    -- * NodeGroupListWarningDataItem
    , NodeGroupListWarningDataItem
    , nodeGroupListWarningDataItem
    , nglwdiValue
    , nglwdiKey

    -- * HTTPSHealthCheckProxyHeader
    , HTTPSHealthCheckProxyHeader (..)

    -- * AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- * NodeGroupAggregatedListWarning
    , NodeGroupAggregatedListWarning
    , nodeGroupAggregatedListWarning
    , ngalwData
    , ngalwCode
    , ngalwMessage

    -- * RegionList
    , RegionList
    , regionList
    , regNextPageToken
    , regKind
    , regItems
    , regSelfLink
    , regWarning
    , regId

    -- * AttachedDiskInterface
    , AttachedDiskInterface (..)

    -- * SchedulingNodeAffinity
    , SchedulingNodeAffinity
    , schedulingNodeAffinity
    , snaOperator
    , snaValues
    , snaKey

    -- * HealthCheckType
    , HealthCheckType (..)

    -- * RegionInstanceGroupsListInstancesWarningCode
    , RegionInstanceGroupsListInstancesWarningCode (..)

    -- * ZoneStatus
    , ZoneStatus (..)

    -- * VPNTunnelList
    , VPNTunnelList
    , vpnTunnelList
    , vtlNextPageToken
    , vtlKind
    , vtlItems
    , vtlSelfLink
    , vtlWarning
    , vtlId

    -- * AcceleratorTypeAggregatedListWarning
    , AcceleratorTypeAggregatedListWarning
    , acceleratorTypeAggregatedListWarning
    , atalwData
    , atalwCode
    , atalwMessage

    -- * RegionInstanceGroupsListInstancesWarningDataItem
    , RegionInstanceGroupsListInstancesWarningDataItem
    , regionInstanceGroupsListInstancesWarningDataItem
    , rigliwdiValue
    , rigliwdiKey

    -- * Interconnect
    , Interconnect
    , interconnect
    , iiState
    , iiInterconnectType
    , iiLocation
    , iiPeerIPAddress
    , iiKind
    , iiExpectedOutages
    , iiProvisionedLinkCount
    , iiCustomerName
    , iiRequestedLinkCount
    , iiOperationalStatus
    , iiSelfLink
    , iiName
    , iiGoogleReferenceId
    , iiCreationTimestamp
    , iiAdminEnabled
    , iiId
    , iiInterconnectAttachments
    , iiLinkType
    , iiGoogleIPAddress
    , iiDescription
    , iiNocContactEmail
    , iiCircuitInfos

    -- * MachineTypeScratchDisksItem
    , MachineTypeScratchDisksItem
    , machineTypeScratchDisksItem
    , mtsdiDiskGb

    -- * NetworkEndpointGroupsScopedListWarningDataItem
    , NetworkEndpointGroupsScopedListWarningDataItem
    , networkEndpointGroupsScopedListWarningDataItem
    , negslwdiValue
    , negslwdiKey

    -- * SubnetworksScopedListWarningDataItem
    , SubnetworksScopedListWarningDataItem
    , subnetworksScopedListWarningDataItem
    , sslwdiValue
    , sslwdiKey

    -- * NetworkEndpointGroupsScopedListWarningCode
    , NetworkEndpointGroupsScopedListWarningCode (..)

    -- * MachineTypesScopedList
    , MachineTypesScopedList
    , machineTypesScopedList
    , mtslMachineTypes
    , mtslWarning

    -- * SubnetworksScopedListWarningCode
    , SubnetworksScopedListWarningCode (..)

    -- * NetworkEndpointGroup
    , NetworkEndpointGroup
    , networkEndpointGroup
    , negSize
    , negKind
    , negNetwork
    , negZone
    , negSelfLink
    , negName
    , negCreationTimestamp
    , negDefaultPort
    , negSubnetwork
    , negNetworkEndpointType
    , negId
    , negDescription

    -- * NetworkEndpointGroupsListNetworkEndpointsWarningCode
    , NetworkEndpointGroupsListNetworkEndpointsWarningCode (..)

    -- * Subnetwork
    , Subnetwork
    , subnetwork
    , subKind
    , subFingerprint
    , subNetwork
    , subGatewayAddress
    , subSelfLink
    , subEnableFlowLogs
    , subName
    , subSecondaryIPRanges
    , subCreationTimestamp
    , subIPCIdRRange
    , subId
    , subRegion
    , subDescription
    , subPrivateIPGoogleAccess

    -- * HealthCheckListWarning
    , HealthCheckListWarning
    , healthCheckListWarning
    , hclwData
    , hclwCode
    , hclwMessage

    -- * MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalNextPageToken
    , mtalKind
    , mtalItems
    , mtalSelfLink
    , mtalWarning
    , mtalId

    -- * NetworkEndpointGroupsListNetworkEndpointsWarningDataItem
    , NetworkEndpointGroupsListNetworkEndpointsWarningDataItem
    , networkEndpointGroupsListNetworkEndpointsWarningDataItem
    , neglnewdiValue
    , neglnewdiKey

    -- * NodeGroupsScopedListWarning
    , NodeGroupsScopedListWarning
    , nodeGroupsScopedListWarning
    , ngslwData
    , ngslwCode
    , ngslwMessage

    -- * NodeTypeList
    , NodeTypeList
    , nodeTypeList
    , ntltNextPageToken
    , ntltKind
    , ntltItems
    , ntltSelfLink
    , ntltWarning
    , ntltId

    -- * QuotaMetric
    , QuotaMetric (..)

    -- * DiskType
    , DiskType
    , diskType
    , dtKind
    , dtZone
    , dtSelfLink
    , dtName
    , dtCreationTimestamp
    , dtId
    , dtRegion
    , dtValidDiskSize
    , dtDescription
    , dtDefaultDiskSizeGb
    , dtDeprecated

    -- * NodeTemplateAggregatedListWarning
    , NodeTemplateAggregatedListWarning
    , nodeTemplateAggregatedListWarning
    , ntalwData
    , ntalwCode
    , ntalwMessage

    -- * AutoscalerAggregatedListWarningDataItem
    , AutoscalerAggregatedListWarningDataItem
    , autoscalerAggregatedListWarningDataItem
    , aalwdiValue
    , aalwdiKey

    -- * ZoneSetLabelsRequestLabels
    , ZoneSetLabelsRequestLabels
    , zoneSetLabelsRequestLabels
    , zslrlAddtional

    -- * InterconnectState
    , InterconnectState (..)

    -- * NodeTypeListWarningDataItem
    , NodeTypeListWarningDataItem
    , nodeTypeListWarningDataItem
    , ntlwdiValue
    , ntlwdiKey

    -- * URLMapValidationResult
    , URLMapValidationResult
    , urlMapValidationResult
    , umvrLoadErrors
    , umvrLoadSucceeded
    , umvrTestPassed
    , umvrTestFailures

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mFingerprint
    , mItems

    -- * RouteWarningsItem
    , RouteWarningsItem
    , routeWarningsItem
    , rwiData
    , rwiCode
    , rwiMessage

    -- * NodeGroupsListNodes
    , NodeGroupsListNodes
    , nodeGroupsListNodes
    , nglnNextPageToken
    , nglnKind
    , nglnItems
    , nglnSelfLink
    , nglnWarning
    , nglnId

    -- * InterconnectLocationList
    , InterconnectLocationList
    , interconnectLocationList
    , illNextPageToken
    , illKind
    , illItems
    , illSelfLink
    , illWarning
    , illId

    -- * SSLPoliciesListAvailableFeaturesResponse
    , SSLPoliciesListAvailableFeaturesResponse
    , sslPoliciesListAvailableFeaturesResponse
    , splafrFeatures

    -- * InstancePropertiesLabels
    , InstancePropertiesLabels
    , instancePropertiesLabels
    , iplAddtional

    -- * AutoscalerAggregatedListWarningCode
    , AutoscalerAggregatedListWarningCode (..)

    -- * AddressIPVersion
    , AddressIPVersion (..)

    -- * MachineTypesScopedListWarningDataItem
    , MachineTypesScopedListWarningDataItem
    , machineTypesScopedListWarningDataItem
    , mtslwdiValue
    , mtslwdiKey

    -- * InstanceStatus
    , InstanceStatus (..)

    -- * NodeTypeListWarningCode
    , NodeTypeListWarningCode (..)

    -- * DiskTypeListWarning
    , DiskTypeListWarning
    , diskTypeListWarning
    , dtlwData
    , dtlwCode
    , dtlwMessage

    -- * NodeTemplateListWarningDataItem
    , NodeTemplateListWarningDataItem
    , nodeTemplateListWarningDataItem
    , nodValue
    , nodKey

    -- * RegionListWarningDataItem
    , RegionListWarningDataItem
    , regionListWarningDataItem
    , regValue
    , regKey

    -- * MachineTypesScopedListWarningCode
    , MachineTypesScopedListWarningCode (..)

    -- * InstancesSetMachineResourcesRequest
    , InstancesSetMachineResourcesRequest
    , instancesSetMachineResourcesRequest
    , ismrrGuestAccelerators

    -- * InstancesSetServiceAccountRequest
    , InstancesSetServiceAccountRequest
    , instancesSetServiceAccountRequest
    , issarEmail
    , issarScopes

    -- * SecurityPolicyReference
    , SecurityPolicyReference
    , securityPolicyReference
    , sprSecurityPolicy

    -- * DiskTypesScopedListWarningDataItem
    , DiskTypesScopedListWarningDataItem
    , diskTypesScopedListWarningDataItem
    , dtslwdiValue
    , dtslwdiKey

    -- * NodeTemplateListWarningCode
    , NodeTemplateListWarningCode (..)

    -- * VMEndpointNATMAppingsInterfaceNATMAppings
    , VMEndpointNATMAppingsInterfaceNATMAppings
    , vMEndpointNATMAppingsInterfaceNATMAppings
    , vmenatmainatmaSourceAliasIPRange
    , vmenatmainatmaSourceVirtualIP
    , vmenatmainatmaNATIPPortRanges
    , vmenatmainatmaNumTotalNATPorts

    -- * VPNTunnelAggregatedListWarning
    , VPNTunnelAggregatedListWarning
    , vpnTunnelAggregatedListWarning
    , vtalwData
    , vtalwCode
    , vtalwMessage

    -- * TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppURLMap
    , thttppKind
    , thttppSelfLink
    , thttppName
    , thttppCreationTimestamp
    , thttppId
    , thttppDescription

    -- * ShieldedInstanceConfig
    , ShieldedInstanceConfig
    , shieldedInstanceConfig
    , sicEnableVtpm
    , sicEnableIntegrityMonitoring
    , sicEnableSecureBoot

    -- * MachineType
    , MachineType
    , machineType
    , mtIsSharedCPU
    , mtKind
    , mtImageSpaceGb
    , mtZone
    , mtSelfLink
    , mtName
    , mtCreationTimestamp
    , mtScratchDisks
    , mtId
    , mtGuestCPUs
    , mtMaximumPersistentDisksSizeGb
    , mtMaximumPersistentDisks
    , mtMemoryMb
    , mtDescription
    , mtDeprecated

    -- * AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorType

    -- * AutoscalerListWarning
    , AutoscalerListWarning
    , autoscalerListWarning
    , alwData
    , alwCode
    , alwMessage

    -- * RegionListWarningCode
    , RegionListWarningCode (..)

    -- * RouterInterfaceManagementType
    , RouterInterfaceManagementType (..)

    -- * DiskTypesScopedListWarningCode
    , DiskTypesScopedListWarningCode (..)

    -- * MachineTypeAggregatedListWarningDataItem
    , MachineTypeAggregatedListWarningDataItem
    , machineTypeAggregatedListWarningDataItem
    , mtalwdiValue
    , mtalwdiKey

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * NodeTypeAggregatedListWarning
    , NodeTypeAggregatedListWarning
    , nodeTypeAggregatedListWarning
    , ntalwtData
    , ntalwtCode
    , ntalwtMessage

    -- * TargetInstancesScopedListWarning
    , TargetInstancesScopedListWarning
    , targetInstancesScopedListWarning
    , tislwData
    , tislwCode
    , tislwMessage

    -- * NetworkEndpointGroupAggregatedList
    , NetworkEndpointGroupAggregatedList
    , networkEndpointGroupAggregatedList
    , negalNextPageToken
    , negalKind
    , negalItems
    , negalSelfLink
    , negalWarning
    , negalId

    -- * SubnetworkAggregatedList
    , SubnetworkAggregatedList
    , subnetworkAggregatedList
    , salNextPageToken
    , salKind
    , salItems
    , salSelfLink
    , salWarning
    , salId

    -- * MachineTypeAggregatedListWarningCode
    , MachineTypeAggregatedListWarningCode (..)

    -- * VPNTunnelListWarningDataItem
    , VPNTunnelListWarningDataItem
    , vpnTunnelListWarningDataItem
    , vtlwdiValue
    , vtlwdiKey

    -- * InterconnectDiagnosticsLinkOpticalPower
    , InterconnectDiagnosticsLinkOpticalPower
    , interconnectDiagnosticsLinkOpticalPower
    , idlopState
    , idlopValue

    -- * DisksResizeRequest
    , DisksResizeRequest
    , disksResizeRequest
    , drrSizeGb

    -- * AutoscalersScopedListWarningDataItem
    , AutoscalersScopedListWarningDataItem
    , autoscalersScopedListWarningDataItem
    , aValue
    , aKey

    -- * LogConfigDataAccessOptionsLogMode
    , LogConfigDataAccessOptionsLogMode (..)

    -- * InterconnectOutageNotificationState
    , InterconnectOutageNotificationState (..)

    -- * ZoneSetPolicyRequest
    , ZoneSetPolicyRequest
    , zoneSetPolicyRequest
    , zsprEtag
    , zsprBindings
    , zsprPolicy

    -- * VPNTunnelListWarningCode
    , VPNTunnelListWarningCode (..)

    -- * AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- * HTTPSHealthCheckPortSpecification
    , HTTPSHealthCheckPortSpecification (..)

    -- * DiskTypeAggregatedListWarningDataItem
    , DiskTypeAggregatedListWarningDataItem
    , diskTypeAggregatedListWarningDataItem
    , dtalwdiValue
    , dtalwdiKey

    -- * ShieldedInstanceIdentityEntry
    , ShieldedInstanceIdentityEntry
    , shieldedInstanceIdentityEntry
    , siieEkCert
    , siieEkPub

    -- * ForwardingRuleLoadBalancingScheme
    , ForwardingRuleLoadBalancingScheme (..)

    -- * RegionInstanceGroupManagerListWarning
    , RegionInstanceGroupManagerListWarning
    , regionInstanceGroupManagerListWarning
    , rigmlwData
    , rigmlwCode
    , rigmlwMessage

    -- * RegionInstanceGroupManagersSetTemplateRequest
    , RegionInstanceGroupManagersSetTemplateRequest
    , regionInstanceGroupManagersSetTemplateRequest
    , rigmstrInstanceTemplate

    -- * InstanceGroupsListInstances
    , InstanceGroupsListInstances
    , instanceGroupsListInstances
    , igliNextPageToken
    , igliKind
    , igliItems
    , igliSelfLink
    , igliWarning
    , igliId

    -- * DiskTypeAggregatedListWarningCode
    , DiskTypeAggregatedListWarningCode (..)

    -- * Autoscaler
    , Autoscaler
    , autoscaler
    , aaStatus
    , aaKind
    , aaZone
    , aaStatusDetails
    , aaSelfLink
    , aaName
    , aaCreationTimestamp
    , aaAutoscalingPolicy
    , aaId
    , aaRegion
    , aaDescription
    , aaTarget

    -- * MachineTypeListWarning
    , MachineTypeListWarning
    , machineTypeListWarning
    , mtlwData
    , mtlwCode
    , mtlwMessage

    -- * TargetHTTPProxyListWarning
    , TargetHTTPProxyListWarning
    , targetHTTPProxyListWarning
    , thttpplwData
    , thttpplwCode
    , thttpplwMessage

    -- * DiskAggregatedListWarning
    , DiskAggregatedListWarning
    , diskAggregatedListWarning
    , dalwData
    , dalwCode
    , dalwMessage

    -- * TargetPoolAggregatedListWarning
    , TargetPoolAggregatedListWarning
    , targetPoolAggregatedListWarning
    , tpalwData
    , tpalwCode
    , tpalwMessage

    -- * UsableSubnetworksAggregatedListWarning
    , UsableSubnetworksAggregatedListWarning
    , usableSubnetworksAggregatedListWarning
    , usalwData
    , usalwCode
    , usalwMessage

    -- * DisksScopedListWarning
    , DisksScopedListWarning
    , disksScopedListWarning
    , dslwData
    , dslwCode
    , dslwMessage

    -- * NodeTemplatesScopedListWarningDataItem
    , NodeTemplatesScopedListWarningDataItem
    , nodeTemplatesScopedListWarningDataItem
    , ntslwdiValue
    , ntslwdiKey

    -- * TargetVPNGatewayAggregatedListItems
    , TargetVPNGatewayAggregatedListItems
    , targetVPNGatewayAggregatedListItems
    , tvgaliAddtional

    -- * DiskLabels
    , DiskLabels
    , diskLabels
    , dlAddtional

    -- * InstanceGroupManagerListWarningDataItem
    , InstanceGroupManagerListWarningDataItem
    , instanceGroupManagerListWarningDataItem
    , igmlwdiValue
    , igmlwdiKey

    -- * InterconnectInterconnectType
    , InterconnectInterconnectType (..)

    -- * ForwardingRuleAggregatedListWarning
    , ForwardingRuleAggregatedListWarning
    , forwardingRuleAggregatedListWarning
    , fralwData
    , fralwCode
    , fralwMessage

    -- * InstanceGroupManagerListWarningCode
    , InstanceGroupManagerListWarningCode (..)

    -- * SSLPolicyWarningsItem
    , SSLPolicyWarningsItem
    , sslPolicyWarningsItem
    , spwiData
    , spwiCode
    , spwiMessage

    -- * RouterStatusBGPPeerStatusStatus
    , RouterStatusBGPPeerStatusStatus (..)

    -- * GlobalSetPolicyRequest
    , GlobalSetPolicyRequest
    , globalSetPolicyRequest
    , gsprEtag
    , gsprBindings
    , gsprPolicy

    -- * RegionAutoscalerListWarningDataItem
    , RegionAutoscalerListWarningDataItem
    , regionAutoscalerListWarningDataItem
    , ralwdiaValue
    , ralwdiaKey

    -- * DiskListWarningCode
    , DiskListWarningCode (..)

    -- * GlobalSetLabelsRequestLabels
    , GlobalSetLabelsRequestLabels
    , globalSetLabelsRequestLabels
    , gslrlAddtional

    -- * TargetPoolsScopedListWarning
    , TargetPoolsScopedListWarning
    , targetPoolsScopedListWarning
    , tpslwData
    , tpslwCode
    , tpslwMessage

    -- * HealthStatus
    , HealthStatus
    , healthStatus
    , hsIPAddress
    , hsHealthState
    , hsPort
    , hsInstance

    -- * TargetTCPProxyList
    , TargetTCPProxyList
    , targetTCPProxyList
    , ttplNextPageToken
    , ttplKind
    , ttplItems
    , ttplSelfLink
    , ttplWarning
    , ttplId

    -- * Region
    , Region
    , region
    , regeStatus
    , regeZones
    , regeKind
    , regeSelfLink
    , regeName
    , regeCreationTimestamp
    , regeQuotas
    , regeId
    , regeDescription
    , regeDeprecated

    -- * RegionAutoscalerListWarningCode
    , RegionAutoscalerListWarningCode (..)

    -- * OperationListWarningDataItem
    , OperationListWarningDataItem
    , operationListWarningDataItem
    , olwdiValue
    , olwdiKey

    -- * GuestOSFeature
    , GuestOSFeature
    , guestOSFeature
    , gofType

    -- * VPNTunnel
    , VPNTunnel
    , vpnTunnel
    , vtDetailedStatus
    , vtStatus
    , vtLocalTrafficSelector
    , vtKind
    , vtPeerIP
    , vtRouter
    , vtTargetVPNGateway
    , vtRemoteTrafficSelector
    , vtSelfLink
    , vtSharedSecret
    , vtName
    , vtCreationTimestamp
    , vtSharedSecretHash
    , vtId
    , vtIkeVersion
    , vtRegion
    , vtDescription

    -- * InstanceGroupManagerAggregatedListWarning
    , InstanceGroupManagerAggregatedListWarning
    , instanceGroupManagerAggregatedListWarning
    , igmalwData
    , igmalwCode
    , igmalwMessage

    -- * DiskListWarningDataItem
    , DiskListWarningDataItem
    , diskListWarningDataItem
    , dlwdiValue
    , dlwdiKey

    -- * CommitmentPlan
    , CommitmentPlan (..)

    -- * OperationListWarningCode
    , OperationListWarningCode (..)

    -- * SourceInstanceParams
    , SourceInstanceParams
    , sourceInstanceParams
    , sipDiskConfigs

    -- * AliasIPRange
    , AliasIPRange
    , aliasIPRange
    , airIPCIdRRange
    , airSubnetworkRangeName

    -- * ForwardingRuleListWarningCode
    , ForwardingRuleListWarningCode (..)

    -- * NodeTypesScopedListWarningDataItem
    , NodeTypesScopedListWarningDataItem
    , nodeTypesScopedListWarningDataItem
    , ntslwditValue
    , ntslwditKey

    -- * VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- * TargetInstanceListWarning
    , TargetInstanceListWarning
    , targetInstanceListWarning
    , tilwData
    , tilwCode
    , tilwMessage

    -- * NodeTypesScopedListWarningCode
    , NodeTypesScopedListWarningCode (..)

    -- * NodeType
    , NodeType
    , nodeType
    , ntKind
    , ntZone
    , ntCPUPlatform
    , ntLocalSsdGb
    , ntSelfLink
    , ntName
    , ntCreationTimestamp
    , ntId
    , ntGuestCPUs
    , ntMemoryMb
    , ntDescription
    , ntDeprecated

    -- * AuthorizationLoggingOptions
    , AuthorizationLoggingOptions
    , authorizationLoggingOptions
    , aloPermissionType

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pRules
    , pVersion
    , pBindings
    , pIAMOwned

    -- * OperationAggregatedListWarning
    , OperationAggregatedListWarning
    , operationAggregatedListWarning
    , oalwData
    , oalwCode
    , oalwMessage

    -- * TargetInstanceAggregatedListWarningDataItem
    , TargetInstanceAggregatedListWarningDataItem
    , targetInstanceAggregatedListWarningDataItem
    , tialwdiValue
    , tialwdiKey

    -- * OperationsScopedListWarning
    , OperationsScopedListWarning
    , operationsScopedListWarning
    , oslwData
    , oslwCode
    , oslwMessage

    -- * RegionDiskTypeListWarningDataItem
    , RegionDiskTypeListWarningDataItem
    , regionDiskTypeListWarningDataItem
    , rdtlwdiValue
    , rdtlwdiKey

    -- * ForwardingRuleListWarningDataItem
    , ForwardingRuleListWarningDataItem
    , forwardingRuleListWarningDataItem
    , frlwdiValue
    , frlwdiKey

    -- * Scheduling
    , Scheduling
    , scheduling
    , sAutomaticRestart
    , sNodeAffinities
    , sOnHostMaintenance
    , sPreemptible

    -- * TargetInstanceAggregatedListWarningCode
    , TargetInstanceAggregatedListWarningCode (..)

    -- * RegionDiskTypeListWarningCode
    , RegionDiskTypeListWarningCode (..)

    -- * VPNTunnelsScopedListWarningDataItem
    , VPNTunnelsScopedListWarningDataItem
    , vpnTunnelsScopedListWarningDataItem
    , vtslwdiValue
    , vtslwdiKey

    -- * InterconnectList
    , InterconnectList
    , interconnectList
    , intnNextPageToken
    , intnKind
    , intnItems
    , intnSelfLink
    , intnWarning
    , intnId

    -- * TargetPoolListWarningDataItem
    , TargetPoolListWarningDataItem
    , targetPoolListWarningDataItem
    , tplwdiValue
    , tplwdiKey

    -- * NodeTemplate
    , NodeTemplate
    , nodeTemplate
    , nttStatus
    , nttKind
    , nttSelfLink
    , nttName
    , nttStatusMessage
    , nttCreationTimestamp
    , nttNodeAffinityLabels
    , nttId
    , nttNodeTypeFlexibility
    , nttNodeType
    , nttRegion
    , nttDescription

    -- * NetworkEndpointGroupList
    , NetworkEndpointGroupList
    , networkEndpointGroupList
    , neglNextPageToken
    , neglKind
    , neglItems
    , neglSelfLink
    , neglWarning
    , neglId

    -- * SubnetworkList
    , SubnetworkList
    , subnetworkList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slWarning
    , slId

    -- * AddressAddressType
    , AddressAddressType (..)

    -- * TargetPoolListWarningCode
    , TargetPoolListWarningCode (..)

    -- * ForwardingRulesScopedListWarning
    , ForwardingRulesScopedListWarning
    , forwardingRulesScopedListWarning
    , frslwData
    , frslwCode
    , frslwMessage

    -- * HTTPHealthCheckList
    , HTTPHealthCheckList
    , hTTPHealthCheckList
    , httphclNextPageToken
    , httphclKind
    , httphclItems
    , httphclSelfLink
    , httphclWarning
    , httphclId

    -- * InstanceGroupManagersScopedListWarning
    , InstanceGroupManagersScopedListWarning
    , instanceGroupManagersScopedListWarning
    , igmslwData
    , igmslwCode
    , igmslwMessage

    -- * SSLPoliciesList
    , SSLPoliciesList
    , sslPoliciesList
    , sslplNextPageToken
    , sslplKind
    , sslplItems
    , sslplSelfLink
    , sslplWarning
    , sslplId

    -- * NodeTemplatesScopedListWarningCode
    , NodeTemplatesScopedListWarningCode (..)

    -- * URLMapsValidateRequest
    , URLMapsValidateRequest
    , urlMapsValidateRequest
    , umvrResource

    -- * InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- * NetworkListWarningCode
    , NetworkListWarningCode (..)

    -- * Commitment
    , Commitment
    , commitment
    , cStatus
    , cKind
    , cPlan
    , cResources
    , cEndTimestamp
    , cSelfLink
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cId
    , cRegion
    , cStartTimestamp
    , cDescription

    -- * HTTPSHealthCheckList
    , HTTPSHealthCheckList
    , httpsHealthCheckList
    , hhclNextPageToken
    , hhclKind
    , hhclItems
    , hhclSelfLink
    , hhclWarning
    , hhclId

    -- * AddressListWarningDataItem
    , AddressListWarningDataItem
    , addressListWarningDataItem
    , addValue
    , addKey

    -- * OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- * CommitmentListWarning
    , CommitmentListWarning
    , commitmentListWarning
    , clwData
    , clwCode
    , clwMessage

    -- * License
    , License
    , license
    , lChargesUseFee
    , lKind
    , lResourceRequirements
    , lTransferable
    , lSelfLink
    , lName
    , lCreationTimestamp
    , lId
    , lDescription
    , lLicenseCode

    -- * PathRule
    , PathRule
    , pathRule
    , prService
    , prPaths

    -- * LicenseCodeLicenseAlias
    , LicenseCodeLicenseAlias
    , licenseCodeLicenseAlias
    , lclaSelfLink
    , lclaDescription

    -- * XpnHostListWarningCode
    , XpnHostListWarningCode (..)

    -- * InterconnectAttachmentsScopedListWarningDataItem
    , InterconnectAttachmentsScopedListWarningDataItem
    , interconnectAttachmentsScopedListWarningDataItem
    , iaslwdiValue
    , iaslwdiKey

    -- * SecurityPolicyListWarningDataItem
    , SecurityPolicyListWarningDataItem
    , securityPolicyListWarningDataItem
    , secValue
    , secKey

    -- * InterconnectAttachmentAggregatedListWarningCode
    , InterconnectAttachmentAggregatedListWarningCode (..)

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * CommitmentsScopedListWarningDataItem
    , CommitmentsScopedListWarningDataItem
    , commitmentsScopedListWarningDataItem
    , cslwdiValue
    , cslwdiKey

    -- * InterconnectAttachment
    , InterconnectAttachment
    , interconnectAttachment
    , iaState
    , iaPartnerASN
    , iaPairingKey
    , iaKind
    , iaCustomerRouterIPAddress
    , iaPartnerMetadata
    , iaRouter
    , iaOperationalStatus
    , iaSelfLink
    , iaName
    , iaBandwidth
    , iaGoogleReferenceId
    , iaCreationTimestamp
    , iaEdgeAvailabilityDomain
    , iaInterconnect
    , iaAdminEnabled
    , iaVLANTag8021q
    , iaCloudRouterIPAddress
    , iaId
    , iaCandidateSubnets
    , iaRegion
    , iaType
    , iaDescription
    , iaPrivateInterconnectInfo

    -- * InstanceList
    , InstanceList
    , instanceList
    , insNextPageToken
    , insKind
    , insItems
    , insSelfLink
    , insWarning
    , insId

    -- * RegionSetLabelsRequestLabels
    , RegionSetLabelsRequestLabels
    , regionSetLabelsRequestLabels
    , rslrlAddtional

    -- * NetworkListWarningDataItem
    , NetworkListWarningDataItem
    , networkListWarningDataItem
    , nlwdiValue
    , nlwdiKey

    -- * AddressListWarningCode
    , AddressListWarningCode (..)

    -- * NetworkPeeringState
    , NetworkPeeringState (..)

    -- * CacheKeyPolicy
    , CacheKeyPolicy
    , cacheKeyPolicy
    , ckpQueryStringWhiteList
    , ckpIncludeHost
    , ckpIncludeProtocol
    , ckpQueryStringBlackList
    , ckpIncludeQueryString

    -- * ZoneListWarningCode
    , ZoneListWarningCode (..)

    -- * CommitmentAggregatedListWarningDataItem
    , CommitmentAggregatedListWarningDataItem
    , commitmentAggregatedListWarningDataItem
    , calwdiValue
    , calwdiKey

    -- * RegionInstanceGroupListWarningDataItem
    , RegionInstanceGroupListWarningDataItem
    , regionInstanceGroupListWarningDataItem
    , riglwdiValue
    , riglwdiKey

    -- * SubnetworkAggregatedListItems
    , SubnetworkAggregatedListItems
    , subnetworkAggregatedListItems
    , saliAddtional

    -- * NetworkEndpointGroupAggregatedListItems
    , NetworkEndpointGroupAggregatedListItems
    , networkEndpointGroupAggregatedListItems
    , negaliAddtional

    -- * InterconnectAttachmentAggregatedListWarningDataItem
    , InterconnectAttachmentAggregatedListWarningDataItem
    , interconnectAttachmentAggregatedListWarningDataItem
    , iaalwdiValue
    , iaalwdiKey

    -- * AuthorizationLoggingOptionsPermissionType
    , AuthorizationLoggingOptionsPermissionType (..)

    -- * InterconnectAttachmentListWarning
    , InterconnectAttachmentListWarning
    , interconnectAttachmentListWarning
    , intData
    , intCode
    , intMessage

    -- * InterconnectOutageNotificationIssueType
    , InterconnectOutageNotificationIssueType (..)

    -- * CommitmentsScopedListWarningCode
    , CommitmentsScopedListWarningCode (..)

    -- * Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cSys
    , cSvc

    -- * AddressAggregatedListWarning
    , AddressAggregatedListWarning
    , addressAggregatedListWarning
    , addData
    , addCode
    , addMessage

    -- * ManagedInstanceLastAttempt
    , ManagedInstanceLastAttempt
    , managedInstanceLastAttempt
    , milaErrors

    -- * LicensesListResponseWarning
    , LicensesListResponseWarning
    , licensesListResponseWarning
    , llrwData
    , llrwCode
    , llrwMessage

    -- * AutoscalerStatusDetails
    , AutoscalerStatusDetails
    , autoscalerStatusDetails
    , asdType
    , asdMessage

    -- * HTTP2HealthCheckProxyHeader
    , HTTP2HealthCheckProxyHeader (..)

    -- * BackendServiceList
    , BackendServiceList
    , backendServiceList
    , bslNextPageToken
    , bslKind
    , bslItems
    , bslSelfLink
    , bslWarning
    , bslId

    -- * XpnHostListWarningDataItem
    , XpnHostListWarningDataItem
    , xpnHostListWarningDataItem
    , xhlwdiValue
    , xhlwdiKey

    -- * InterconnectAttachmentsScopedListWarningCode
    , InterconnectAttachmentsScopedListWarningCode (..)

    -- * SecurityPolicyListWarningCode
    , SecurityPolicyListWarningCode (..)

    -- * ZoneListWarningDataItem
    , ZoneListWarningDataItem
    , zoneListWarningDataItem
    , zlwdiValue
    , zlwdiKey

    -- * RegionSetPolicyRequest
    , RegionSetPolicyRequest
    , regionSetPolicyRequest
    , rsprEtag
    , rsprBindings
    , rsprPolicy

    -- * CommitmentAggregatedListWarningCode
    , CommitmentAggregatedListWarningCode (..)

    -- * RegionInstanceGroupListWarningCode
    , RegionInstanceGroupListWarningCode (..)

    -- * InstanceGroupsScopedListWarning
    , InstanceGroupsScopedListWarning
    , instanceGroupsScopedListWarning
    , igslwData
    , igslwCode
    , igslwMessage

    -- * InterconnectLocationStatus
    , InterconnectLocationStatus (..)

    -- * AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget

    -- * InstanceGroupsScopedListWarningCode
    , InstanceGroupsScopedListWarningCode (..)

    -- * InterconnectOperationalStatus
    , InterconnectOperationalStatus (..)

    -- * InstanceGroupsScopedListWarningDataItem
    , InstanceGroupsScopedListWarningDataItem
    , instanceGroupsScopedListWarningDataItem
    , igslwdiValue
    , igslwdiKey

    -- * SecurityPolicyRuleMatcherConfig
    , SecurityPolicyRuleMatcherConfig
    , securityPolicyRuleMatcherConfig
    , sprmcSrcIPRanges

    -- * LicensesListResponseWarningDataItem
    , LicensesListResponseWarningDataItem
    , licensesListResponseWarningDataItem
    , llrwdiValue
    , llrwdiKey

    -- * LicensesListResponseWarningCode
    , LicensesListResponseWarningCode (..)

    -- * XpnHostListWarning
    , XpnHostListWarning
    , xpnHostListWarning
    , xhlwData
    , xhlwCode
    , xhlwMessage

    -- * ResourceGroupReference
    , ResourceGroupReference
    , resourceGroupReference
    , rgrGroup

    -- * VMEndpointNATMAppingsList
    , VMEndpointNATMAppingsList
    , vMEndpointNATMAppingsList
    , vmenatmalNextPageToken
    , vmenatmalKind
    , vmenatmalResult
    , vmenatmalSelfLink
    , vmenatmalWarning
    , vmenatmalId

    -- * Firewall
    , Firewall
    , firewall
    , fSourceTags
    , fSourceServiceAccounts
    , fPriority
    , fDirection
    , fKind
    , fDisabled
    , fTargetTags
    , fNetwork
    , fSourceRanges
    , fSelfLink
    , fName
    , fDenied
    , fCreationTimestamp
    , fId
    , fAllowed
    , fDestinationRanges
    , fLogConfig
    , fTargetServiceAccounts
    , fDescription

    -- * InterconnectAttachmentsScopedListWarning
    , InterconnectAttachmentsScopedListWarning
    , interconnectAttachmentsScopedListWarning
    , iaslwData
    , iaslwCode
    , iaslwMessage

    -- * HostRule
    , HostRule
    , hostRule
    , hrHosts
    , hrDescription
    , hrPathMatcher

    -- * SecurityPolicyListWarning
    , SecurityPolicyListWarning
    , securityPolicyListWarning
    , secData
    , secCode
    , secMessage

    -- * Quota
    , Quota
    , quota
    , qOwner
    , qMetric
    , qLimit
    , qUsage

    -- * InstanceGroup
    , InstanceGroup
    , instanceGroup
    , ig1Size
    , ig1Kind
    , ig1Fingerprint
    , ig1Network
    , ig1Zone
    , ig1SelfLink
    , ig1Name
    , ig1CreationTimestamp
    , ig1Subnetwork
    , ig1Id
    , ig1Region
    , ig1Description
    , ig1NamedPorts

    -- * AddressListWarning
    , AddressListWarning
    , addressListWarning
    , alwlData
    , alwlCode
    , alwlMessage

    -- * RegionSetLabelsRequest
    , RegionSetLabelsRequest
    , regionSetLabelsRequest
    , rslrLabels
    , rslrLabelFingerprint

    -- * RouterInterface
    , RouterInterface
    , routerInterface
    , riLinkedInterconnectAttachment
    , riName
    , riManagementType
    , riIPRange
    , riLinkedVPNTunnel

    -- * InstanceWithNamedPortsStatus
    , InstanceWithNamedPortsStatus (..)

    -- * NetworkListWarning
    , NetworkListWarning
    , networkListWarning
    , nlwData
    , nlwCode
    , nlwMessage

    -- * TCPHealthCheckProxyHeader
    , TCPHealthCheckProxyHeader (..)

    -- * SnapshotList
    , SnapshotList
    , snapshotList
    , snaNextPageToken
    , snaKind
    , snaItems
    , snaSelfLink
    , snaWarning
    , snaId

    -- * InterconnectDiagnostics
    , InterconnectDiagnostics
    , interconnectDiagnostics
    , idMACAddress
    , idArpCaches
    , idLinks

    -- * CommitmentListWarningCode
    , CommitmentListWarningCode (..)

    -- * HTTPHealthCheckPortSpecification
    , HTTPHealthCheckPortSpecification (..)

    -- * LicenseCode
    , LicenseCode
    , licenseCode
    , lcState
    , lcKind
    , lcTransferable
    , lcSelfLink
    , lcName
    , lcCreationTimestamp
    , lcId
    , lcLicenseAlias
    , lcDescription

    -- * TestFailure
    , TestFailure
    , testFailure
    , tfPath
    , tfExpectedService
    , tfHost
    , tfActualService

    -- * CommitmentListWarningDataItem
    , CommitmentListWarningDataItem
    , commitmentListWarningDataItem
    , clwdiValue
    , clwdiKey

    -- * ConditionIAM
    , ConditionIAM (..)

    -- * ManagedInstanceVersion
    , ManagedInstanceVersion
    , managedInstanceVersion
    , mivInstanceTemplate
    , mivName

    -- * CommitmentsScopedListWarning
    , CommitmentsScopedListWarning
    , commitmentsScopedListWarning
    , cslwData
    , cslwCode
    , cslwMessage

    -- * SerialPortOutput
    , SerialPortOutput
    , serialPortOutput
    , spoNext
    , spoContents
    , spoKind
    , spoStart
    , spoSelfLink

    -- * TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalNextPageToken
    , tvgalKind
    , tvgalItems
    , tvgalSelfLink
    , tvgalWarning
    , tvgalId

    -- * InterconnectAttachmentAggregatedListWarning
    , InterconnectAttachmentAggregatedListWarning
    , interconnectAttachmentAggregatedListWarning
    , iaalwData
    , iaalwCode
    , iaalwMessage

    -- * MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiValue
    , miiKey

    -- * SignedURLKey
    , SignedURLKey
    , signedURLKey
    , sukKeyValue
    , sukKeyName

    -- * TargetHTTPSProxy
    , TargetHTTPSProxy
    , targetHTTPSProxy
    , thpSSLPolicy
    , thpURLMap
    , thpSSLCertificates
    , thpQuicOverride
    , thpKind
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpDescription

    -- * ConnectionDraining
    , ConnectionDraining
    , connectionDraining
    , cdDrainingTimeoutSec

    -- * InterconnectAttachmentListWarningDataItem
    , InterconnectAttachmentListWarningDataItem
    , interconnectAttachmentListWarningDataItem
    , ialwdiValue
    , ialwdiKey

    -- * AddressAggregatedListWarningCode
    , AddressAggregatedListWarningCode (..)

    -- * CacheInvalidationRule
    , CacheInvalidationRule
    , cacheInvalidationRule
    , cirPath
    , cirHost

    -- * AddressAggregatedListWarningDataItem
    , AddressAggregatedListWarningDataItem
    , addressAggregatedListWarningDataItem
    , aalwdiaValue
    , aalwdiaKey

    -- * InterconnectAttachmentListWarningCode
    , InterconnectAttachmentListWarningCode (..)

    -- * TargetVPNGatewaysScopedList
    , TargetVPNGatewaysScopedList
    , targetVPNGatewaysScopedList
    , tvgslTargetVPNGateways
    , tvgslWarning

    -- * CommitmentAggregatedListWarning
    , CommitmentAggregatedListWarning
    , commitmentAggregatedListWarning
    , calwData
    , calwCode
    , calwMessage

    -- * RegionInstanceGroupListWarning
    , RegionInstanceGroupListWarning
    , regionInstanceGroupListWarning
    , riglwData
    , riglwCode
    , riglwMessage

    -- * AccessConfig
    , AccessConfig
    , accessConfig
    , acNetworkTier
    , acSetPublicPtr
    , acKind
    , acName
    , acNATIP
    , acPublicPtrDomainName
    , acType

    -- * LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

    -- * ZoneListWarning
    , ZoneListWarning
    , zoneListWarning
    , zlwData
    , zlwCode
    , zlwMessage

    -- * ManagedInstanceLastAttemptErrorsErrorsItem
    , ManagedInstanceLastAttemptErrorsErrorsItem
    , managedInstanceLastAttemptErrorsErrorsItem
    , milaeeiLocation
    , milaeeiCode
    , milaeeiMessage

    -- * InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- * InstancesScopedListWarningDataItem
    , InstancesScopedListWarningDataItem
    , instancesScopedListWarningDataItem
    , islwdiValue
    , islwdiKey

    -- * SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , slAddtional

    -- * BackendServicesScopedListWarningDataItem
    , BackendServicesScopedListWarningDataItem
    , backendServicesScopedListWarningDataItem
    , bsslwdiValue
    , bsslwdiKey

    -- * NodeTemplateAggregatedListItems
    , NodeTemplateAggregatedListItems
    , nodeTemplateAggregatedListItems
    , ntaliAddtional

    -- * BackendService
    , BackendService
    , backendService
    , bsSessionAffinity
    , bsBackends
    , bsAffinityCookieTtlSec
    , bsIap
    , bsLoadBalancingScheme
    , bsKind
    , bsEnableCDN
    , bsFingerprint
    , bsProtocol
    , bsCustomRequestHeaders
    , bsSecurityPolicy
    , bsCdnPolicy
    , bsSelfLink
    , bsName
    , bsCreationTimestamp
    , bsId
    , bsRegion
    , bsConnectionDraining
    , bsTimeoutSec
    , bsDescription
    , bsPortName
    , bsHealthChecks
    , bsPort

    -- * InstanceListWarning
    , InstanceListWarning
    , instanceListWarning
    , insData
    , insCode
    , insMessage

    -- * InstanceMoveRequest
    , InstanceMoveRequest
    , instanceMoveRequest
    , imrTargetInstance
    , imrDestinationZone

    -- * XpnResourceIdType
    , XpnResourceIdType (..)

    -- * InterconnectDiagnosticsARPEntry
    , InterconnectDiagnosticsARPEntry
    , interconnectDiagnosticsARPEntry
    , idarpeIPAddress
    , idarpeMACAddress

    -- * ShieldedInstanceIdentity
    , ShieldedInstanceIdentity
    , shieldedInstanceIdentity
    , siiSigningKey
    , siiKind
    , siiEncryptionKey

    -- * BackendServicesScopedListWarningCode
    , BackendServicesScopedListWarningCode (..)

    -- * CommitmentList
    , CommitmentList
    , commitmentList
    , clNextPageToken
    , clKind
    , clItems
    , clSelfLink
    , clWarning
    , clId

    -- * TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- * InstancesSetLabelsRequestLabels
    , InstancesSetLabelsRequestLabels
    , instancesSetLabelsRequestLabels
    , islrlAddtional

    -- * InstanceGroupsScopedList
    , InstanceGroupsScopedList
    , instanceGroupsScopedList
    , igslWarning
    , igslInstanceGroups

    -- * InstancesStartWithEncryptionKeyRequest
    , InstancesStartWithEncryptionKeyRequest
    , instancesStartWithEncryptionKeyRequest
    , iswekrDisks

    -- * HTTPSHealthCheck
    , HTTPSHealthCheck
    , httpsHealthCheck
    , hhcResponse
    , hhcPortSpecification
    , hhcRequestPath
    , hhcHost
    , hhcProxyHeader
    , hhcPortName
    , hhcPort

    -- * AutoscalerStatus
    , AutoscalerStatus (..)

    -- * ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- * InstanceAggregatedListWarningCode
    , InstanceAggregatedListWarningCode (..)

    -- * VPNTunnelAggregatedListItems
    , VPNTunnelAggregatedListItems
    , vpnTunnelAggregatedListItems
    , vtaliAddtional

    -- * ResourceCommitmentType
    , ResourceCommitmentType (..)

    -- * InstanceAggregatedListWarningDataItem
    , InstanceAggregatedListWarningDataItem
    , instanceAggregatedListWarningDataItem
    , insValue
    , insKey

    -- * Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- * AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addNextPageToken
    , addKind
    , addItems
    , addSelfLink
    , addWarning
    , addId

    -- * InterconnectAttachmentList
    , InterconnectAttachmentList
    , interconnectAttachmentList
    , ialaNextPageToken
    , ialaKind
    , ialaItems
    , ialaSelfLink
    , ialaWarning
    , ialaId

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ForwardingRuleNetworkTier
    , ForwardingRuleNetworkTier (..)

    -- * URLMapTest
    , URLMapTest
    , urlMapTest
    , umtPath
    , umtService
    , umtHost
    , umtDescription

    -- * HTTPSHealthCheckListWarning
    , HTTPSHealthCheckListWarning
    , httpsHealthCheckListWarning
    , hhclwData
    , hhclwCode
    , hhclwMessage

    -- * NodeTypeAggregatedListItems
    , NodeTypeAggregatedListItems
    , nodeTypeAggregatedListItems
    , nAddtional

    -- * RoutersPreviewResponse
    , RoutersPreviewResponse
    , routersPreviewResponse
    , rprResource

    -- * LicensesListResponse
    , LicensesListResponse
    , licensesListResponse
    , llrNextPageToken
    , llrItems
    , llrSelfLink
    , llrWarning
    , llrId

    -- * BackendServiceAggregatedListWarningDataItem
    , BackendServiceAggregatedListWarningDataItem
    , backendServiceAggregatedListWarningDataItem
    , bsalwdiValue
    , bsalwdiKey

    -- * Instance
    , Instance
    , instance'
    , i1Status
    , i1ServiceAccounts
    , i1DeletionProtection
    , i1Hostname
    , i1NetworkInterfaces
    , i1ShieldedInstanceIntegrityPolicy
    , i1Kind
    , i1Zone
    , i1CPUPlatform
    , i1SelfLink
    , i1GuestAccelerators
    , i1Name
    , i1StatusMessage
    , i1CreationTimestamp
    , i1MachineType
    , i1Metadata
    , i1ShieldedInstanceConfig
    , i1Id
    , i1Labels
    , i1StartRestricted
    , i1Scheduling
    , i1MinCPUPlatform
    , i1Disks
    , i1CanIPForward
    , i1LabelFingerprint
    , i1Description
    , i1Tags

    -- * PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultService
    , pmName
    , pmPathRules
    , pmDescription

    -- * InstanceGroupManagerUpdatePolicyMinimalAction
    , InstanceGroupManagerUpdatePolicyMinimalAction (..)

    -- * BackendServiceListWarning
    , BackendServiceListWarning
    , backendServiceListWarning
    , bslwData
    , bslwCode
    , bslwMessage

    -- * BackendServiceAggregatedListWarningCode
    , BackendServiceAggregatedListWarningCode (..)
    ) where

import           Network.Google.Compute.Types.Product
import           Network.Google.Compute.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Compute Engine API. This contains the host and root path used as a starting point for constructing service requests.
computeService :: ServiceConfig
computeService
  = defaultService (ServiceId "compute:v1")
      "www.googleapis.com"

-- | View and manage your Google Compute Engine resources
computeScope :: Proxy '["https://www.googleapis.com/auth/compute"]
computeScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View your data in Google Cloud Storage
storageReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_only"]
storageReadOnlyScope = Proxy

-- | Manage your data in Google Cloud Storage
storageReadWriteScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
storageReadWriteScope = Proxy

-- | View your Google Compute Engine resources
computeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/compute.readonly"]
computeReadOnlyScope = Proxy

-- | Manage your data and permissions in Google Cloud Storage
storageFullControlScope :: Proxy '["https://www.googleapis.com/auth/devstorage.full_control"]
storageFullControlScope = Proxy
