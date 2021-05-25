{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * RegionInstanceGroupManagersListErrorsResponse
    , RegionInstanceGroupManagersListErrorsResponse
    , regionInstanceGroupManagersListErrorsResponse
    , rigmlerNextPageToken
    , rigmlerItems

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

    -- * BackendBucketCdnPolicyCacheMode
    , BackendBucketCdnPolicyCacheMode (..)

    -- * InterconnectDiagnosticsLinkLACPStatus
    , InterconnectDiagnosticsLinkLACPStatus
    , interconnectDiagnosticsLinkLACPStatus
    , idllacpsState
    , idllacpsNeighborSystemId
    , idllacpsGoogleSystemId

    -- * AdvancedMachineFeatures
    , AdvancedMachineFeatures
    , advancedMachineFeatures
    , amfThreadsPerCore
    , amfEnableNestedVirtualization

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
    , igmupInstanceRedistributionType
    , igmupMaxSurge
    , igmupMaxUnavailable
    , igmupMinimalAction
    , igmupType
    , igmupReplacementMethod

    -- * RegionInstanceGroupsListInstancesRequest
    , RegionInstanceGroupsListInstancesRequest
    , regionInstanceGroupsListInstancesRequest
    , riglirInstanceState
    , riglirPortName

    -- * HTTPHeaderMatch
    , HTTPHeaderMatch
    , hTTPHeaderMatch
    , httphmSuffixMatch
    , httphmHeaderName
    , httphmRangeMatch
    , httphmPresentMatch
    , httphmExactMatch
    , httphmPrefixMatch
    , httphmRegexMatch
    , httphmInvertMatch

    -- * PacketMirroringsScopedListWarning
    , PacketMirroringsScopedListWarning
    , packetMirroringsScopedListWarning
    , pmslwData
    , pmslwCode
    , pmslwMessage

    -- * RegionInstanceGroupManagersApplyUpdatesRequestMinimalAction
    , RegionInstanceGroupManagersApplyUpdatesRequestMinimalAction (..)

    -- * BackendServiceAggregatedListWarning
    , BackendServiceAggregatedListWarning
    , backendServiceAggregatedListWarning
    , bsalwData
    , bsalwCode
    , bsalwMessage

    -- * ExchangedPeeringRoute
    , ExchangedPeeringRoute
    , exchangedPeeringRoute
    , eprImported
    , eprPriority
    , eprDestRange
    , eprNextHopRegion
    , eprType

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

    -- * TargetHTTPProxyAggregatedListItems
    , TargetHTTPProxyAggregatedListItems
    , targetHTTPProxyAggregatedListItems
    , thttppaliAddtional

    -- * BackendServiceListWarningCode
    , BackendServiceListWarningCode (..)

    -- * SubnetworkStackType
    , SubnetworkStackType (..)

    -- * DiskTypeAggregatedListItems
    , DiskTypeAggregatedListItems
    , diskTypeAggregatedListItems
    , dtaliAddtional

    -- * PreservedStatePreservedDiskAutoDelete
    , PreservedStatePreservedDiskAutoDelete (..)

    -- * DistributionPolicyTargetShape
    , DistributionPolicyTargetShape (..)

    -- * InstancesSetLabelsRequest
    , InstancesSetLabelsRequest
    , instancesSetLabelsRequest
    , islrLabels
    , islrLabelFingerprint

    -- * RouterAggregatedList
    , RouterAggregatedList
    , routerAggregatedList
    , ralUnreachables
    , ralNextPageToken
    , ralKind
    , ralItems
    , ralSelfLink
    , ralWarning
    , ralId

    -- * GlobalNetworkEndpointGroupsDetachEndpointsRequest
    , GlobalNetworkEndpointGroupsDetachEndpointsRequest
    , globalNetworkEndpointGroupsDetachEndpointsRequest
    , gnegderNetworkEndpoints

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

    -- * HealthCheckLogConfig
    , HealthCheckLogConfig
    , healthCheckLogConfig
    , hclcEnable

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

    -- * PacketMirroringAggregatedListWarning
    , PacketMirroringAggregatedListWarning
    , packetMirroringAggregatedListWarning
    , pmalwData
    , pmalwCode
    , pmalwMessage

    -- * PacketMirroringListWarningDataItem
    , PacketMirroringListWarningDataItem
    , packetMirroringListWarningDataItem
    , pmlwdiValue
    , pmlwdiKey

    -- * SecurityPolicyRuleMatcher
    , SecurityPolicyRuleMatcher
    , securityPolicyRuleMatcher
    , sprmVersionedExpr
    , sprmExpr
    , sprmConfig

    -- * PublicDelegatedPrefixPublicDelegatedSubPrefix
    , PublicDelegatedPrefixPublicDelegatedSubPrefix
    , publicDelegatedPrefixPublicDelegatedSubPrefix
    , pdppdspIsAddress
    , pdppdspStatus
    , pdppdspDelegateeProject
    , pdppdspName
    , pdppdspIPCIdRRange
    , pdppdspRegion
    , pdppdspDescription

    -- * SubnetworkPurpose
    , SubnetworkPurpose (..)

    -- * HealthChecksAggregatedListWarning
    , HealthChecksAggregatedListWarning
    , healthChecksAggregatedListWarning
    , hcalwData
    , hcalwCode
    , hcalwMessage

    -- * PerInstanceConfig
    , PerInstanceConfig
    , perInstanceConfig
    , picStatus
    , picFingerprint
    , picName
    , picPreservedState

    -- * PacketMirroringListWarningCode
    , PacketMirroringListWarningCode (..)

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

    -- * ReservationStatus
    , ReservationStatus (..)

    -- * CustomerEncryptionKey
    , CustomerEncryptionKey
    , customerEncryptionKey
    , cekKmsKeyServiceAccount
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

    -- * InterconnectAttachmentEncryption
    , InterconnectAttachmentEncryption (..)

    -- * RouterNATNATIPAllocateOption
    , RouterNATNATIPAllocateOption (..)

    -- * Screenshot
    , Screenshot
    , screenshot
    , sContents
    , sKind

    -- * GuestAttributesValue
    , GuestAttributesValue
    , guestAttributesValue
    , gavItems

    -- * InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , instancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , igefrefpRules
    , igefrefpShortName
    , igefrefpName
    , igefrefpDisplayName
    , igefrefpType

    -- * DeprecationStatus
    , DeprecationStatus
    , deprecationStatus
    , dsState
    , dsDeleted
    , dsReplacement
    , dsObsolete
    , dsDeprecated

    -- * HTTPRouteRuleMatch
    , HTTPRouteRuleMatch
    , hTTPRouteRuleMatch
    , httprrmHeaderMatches
    , httprrmFullPathMatch
    , httprrmQueryParameterMatches
    , httprrmIgnoreCase
    , httprrmPrefixMatch
    , httprrmMetadataFilters
    , httprrmRegexMatch

    -- * HTTPSHealthCheckListWarningDataItem
    , HTTPSHealthCheckListWarningDataItem
    , httpsHealthCheckListWarningDataItem
    , hhclwdiValue
    , hhclwdiKey

    -- * ServerBindingType
    , ServerBindingType (..)

    -- * BulkInsertInstanceResource
    , BulkInsertInstanceResource
    , bulkInsertInstanceResource
    , biirNamePattern
    , biirInstanceProperties
    , biirCount
    , biirSourceInstanceTemplate
    , biirPerInstanceProperties
    , biirLocationPolicy
    , biirMinCount

    -- * OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- * FirewallPolicyRuleMatcher
    , FirewallPolicyRuleMatcher
    , firewallPolicyRuleMatcher
    , fprmSrcIPRanges
    , fprmDestIPRanges
    , fprmLayer4Configs

    -- * Snapshot
    , Snapshot
    , snapshot
    , snaStorageBytesStatus
    , snaSatisfiesPzs
    , snaStatus
    , snaChainName
    , snaDiskSizeGb
    , snaDownloadBytes
    , snaSourceDiskId
    , snaKind
    , snaSourceDiskEncryptionKey
    , snaStorageBytes
    , snaSelfLink
    , snaSnapshotEncryptionKey
    , snaAutoCreated
    , snaName
    , snaStorageLocations
    , snaCreationTimestamp
    , snaLicenseCodes
    , snaId
    , snaLabels
    , snaLicenses
    , snaSourceDisk
    , snaLocationHint
    , snaLabelFingerprint
    , snaDescription

    -- * InstancesUpdateMostDisruptiveAllowedAction
    , InstancesUpdateMostDisruptiveAllowedAction (..)

    -- * RouterStatus
    , RouterStatus
    , routerStatus
    , rsBestRoutesForRouter
    , rsBGPPeerStatus
    , rsNetwork
    , rsNATStatus
    , rsBestRoutes

    -- * InstanceManagedByIgmErrorInstanceActionDetailsAction
    , InstanceManagedByIgmErrorInstanceActionDetailsAction (..)

    -- * AutoscalingPolicyCustomMetricUtilization
    , AutoscalingPolicyCustomMetricUtilization
    , autoscalingPolicyCustomMetricUtilization
    , apcmuUtilizationTarget
    , apcmuMetric
    , apcmuFilter
    , apcmuSingleInstanceAssignment
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
    , ngFingerprint
    , ngZone
    , ngMaintenanceWindow
    , ngSelfLink
    , ngName
    , ngCreationTimestamp
    , ngAutoscalingPolicy
    , ngId
    , ngMaintenancePolicy
    , ngNodeTemplate
    , ngLocationHint
    , ngDescription

    -- * SubnetworkIPv6AccessType
    , SubnetworkIPv6AccessType (..)

    -- * VPNTunnelsScopedList
    , VPNTunnelsScopedList
    , vpnTunnelsScopedList
    , vtslVPNTunnels
    , vtslWarning

    -- * URLMapsScopedListWarningCode
    , URLMapsScopedListWarningCode (..)

    -- * ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete
    , ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete (..)

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

    -- * FirewallPolicyAssociation
    , FirewallPolicyAssociation
    , firewallPolicyAssociation
    , fpaShortName
    , fpaFirewallPolicyId
    , fpaName
    , fpaDisplayName
    , fpaAttachmentTarget

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

    -- * PublicDelegatedPrefixAggregatedListWarning
    , PublicDelegatedPrefixAggregatedListWarning
    , publicDelegatedPrefixAggregatedListWarning
    , pdpalwData
    , pdpalwCode
    , pdpalwMessage

    -- * AcceleratorTypesScopedListWarningCode
    , AcceleratorTypesScopedListWarningCode (..)

    -- * NodeTemplateNodeAffinityLabels
    , NodeTemplateNodeAffinityLabels
    , nodeTemplateNodeAffinityLabels
    , ntnalAddtional

    -- * PublicDelegatedPrefixListWarningCode
    , PublicDelegatedPrefixListWarningCode (..)

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

    -- * RegionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , RegionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , regionInstanceGroupManagersListInstanceConfigsRespWarningDataItem
    , rigmlicrwdiValue
    , rigmlicrwdiKey

    -- * NodeGroupsScopedListWarningCode
    , NodeGroupsScopedListWarningCode (..)

    -- * PublicAdvertisedPrefixListWarningCode
    , PublicAdvertisedPrefixListWarningCode (..)

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

    -- * VPNGatewaysScopedList
    , VPNGatewaysScopedList
    , vpnGatewaysScopedList
    , vgslVPNGateways
    , vgslWarning

    -- * HTTPRouteRule
    , HTTPRouteRule
    , hTTPRouteRule
    , httprrPriority
    , httprrService
    , httprrHeaderAction
    , httprrRouteAction
    , httprrMatchRules
    , httprrDescription
    , httprrURLRedirect

    -- * ResourcePolicyListWarningDataItem
    , ResourcePolicyListWarningDataItem
    , resourcePolicyListWarningDataItem
    , rplwdiValue
    , rplwdiKey

    -- * NetworksUpdatePeeringRequest
    , NetworksUpdatePeeringRequest
    , networksUpdatePeeringRequest
    , nuprNetworkPeering

    -- * NodeGroupAggregatedListWarningDataItem
    , NodeGroupAggregatedListWarningDataItem
    , nodeGroupAggregatedListWarningDataItem
    , ngalwdiValue
    , ngalwdiKey

    -- * InstanceGroupsAddInstancesRequest
    , InstanceGroupsAddInstancesRequest
    , instanceGroupsAddInstancesRequest
    , igairInstances

    -- * TargetHTTPSProxyAggregatedListItems
    , TargetHTTPSProxyAggregatedListItems
    , targetHTTPSProxyAggregatedListItems
    , thpaliAddtional

    -- * HealthCheckService
    , HealthCheckService
    , healthCheckService
    , hcsNotificationEndpoints
    , hcsKind
    , hcsFingerprint
    , hcsNetworkEndpointGroups
    , hcsHealthStatusAggregationPolicy
    , hcsSelfLink
    , hcsName
    , hcsCreationTimestamp
    , hcsId
    , hcsRegion
    , hcsDescription
    , hcsHealthChecks

    -- * NodeGroupNode
    , NodeGroupNode
    , nodeGroupNode
    , ngnSatisfiesPzs
    , ngnStatus
    , ngnServerId
    , ngnServerBinding
    , ngnAccelerators
    , ngnName
    , ngnInstances
    , ngnNodeType
    , ngnDisks
    , ngnCPUOvercommitType

    -- * TargetTCPProxiesSetProxyHeaderRequestProxyHeader
    , TargetTCPProxiesSetProxyHeaderRequestProxyHeader (..)

    -- * ReservationAggregatedList
    , ReservationAggregatedList
    , reservationAggregatedList
    , resUnreachables
    , resNextPageToken
    , resKind
    , resItems
    , resSelfLink
    , resWarning
    , resId

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

    -- * BackendServiceLogConfig
    , BackendServiceLogConfig
    , backendServiceLogConfig
    , bslcEnable
    , bslcSampleRate

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
    , iSatisfiesPzs
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
    , iShieldedInstanceInitialState
    , iFamily
    , iRawDisk
    , iSelfLink
    , iName
    , iSourceImageId
    , iStorageLocations
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

    -- * PublicAdvertisedPrefixListWarningDataItem
    , PublicAdvertisedPrefixListWarningDataItem
    , publicAdvertisedPrefixListWarningDataItem
    , paplwdiValue
    , paplwdiKey

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

    -- * ResourcePolicyListWarningCode
    , ResourcePolicyListWarningCode (..)

    -- * URLMap
    , URLMap
    , urlMap
    , umDefaultRouteAction
    , umDefaultURLRedirect
    , umTests
    , umKind
    , umFingerprint
    , umDefaultService
    , umHeaderAction
    , umSelfLink
    , umName
    , umCreationTimestamp
    , umPathMatchers
    , umId
    , umHostRules
    , umRegion
    , umDescription

    -- * ResourcePolicyAggregatedListWarning
    , ResourcePolicyAggregatedListWarning
    , resourcePolicyAggregatedListWarning
    , rpalwData
    , rpalwCode
    , rpalwMessage

    -- * ImageListWarning
    , ImageListWarning
    , imageListWarning
    , ilwData
    , ilwCode
    , ilwMessage

    -- * HealthCheckListWarningCode
    , HealthCheckListWarningCode (..)

    -- * URLMapsScopedListWarningDataItem
    , URLMapsScopedListWarningDataItem
    , urlMapsScopedListWarningDataItem
    , umslwdiValue
    , umslwdiKey

    -- * NetworkInterfaceNicType
    , NetworkInterfaceNicType (..)

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

    -- * ResourcePolicyHourlyCycle
    , ResourcePolicyHourlyCycle
    , resourcePolicyHourlyCycle
    , rphcHoursInCycle
    , rphcStartTime
    , rphcDuration

    -- * InstanceGroupAggregatedListItems
    , InstanceGroupAggregatedListItems
    , instanceGroupAggregatedListItems
    , igaliAddtional

    -- * PublicDelegatedPrefixListWarningDataItem
    , PublicDelegatedPrefixListWarningDataItem
    , publicDelegatedPrefixListWarningDataItem
    , pdplwdiValue
    , pdplwdiKey

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

    -- * HTTPRouteAction
    , HTTPRouteAction
    , hTTPRouteAction
    , httpraFaultInjectionPolicy
    , httpraCORSPolicy
    , httpraURLRewrite
    , httpraRequestMirrorPolicy
    , httpraRetryPolicy
    , httpraWeightedBackendServices
    , httpraTimeout
    , httpraMaxStreamDuration

    -- * AcceleratorTypesScopedListWarningDataItem
    , AcceleratorTypesScopedListWarningDataItem
    , acceleratorTypesScopedListWarningDataItem
    , atslwdiValue
    , atslwdiKey

    -- * RegionInstanceGroupManagersListInstanceConfigsRespWarningCode
    , RegionInstanceGroupManagersListInstanceConfigsRespWarningCode (..)

    -- * TargetHTTPProxiesScopedList
    , TargetHTTPProxiesScopedList
    , targetHTTPProxiesScopedList
    , thttppslTargetHTTPProxies
    , thttppslWarning

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
    , tialUnreachables
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

    -- * ReservationList
    , ReservationList
    , reservationList
    , rlNextPageToken
    , rlKind
    , rlItems
    , rlSelfLink
    , rlWarning
    , rlId

    -- * NetworksListPeeringRoutesDirection
    , NetworksListPeeringRoutesDirection (..)

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

    -- * ResourcePolicy
    , ResourcePolicy
    , resourcePolicy
    , rpInstanceSchedulePolicy
    , rpStatus
    , rpKind
    , rpResourceStatus
    , rpGroupPlacementPolicy
    , rpSelfLink
    , rpName
    , rpCreationTimestamp
    , rpId
    , rpRegion
    , rpDescription
    , rpSnapshotSchedulePolicy

    -- * HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcTCPHealthCheck
    , hcHTTP2HealthCheck
    , hcKind
    , hcSSLHealthCheck
    , hcGrpcHealthCheck
    , hcSelfLink
    , hcCheckIntervalSec
    , hcName
    , hcCreationTimestamp
    , hcHTTPHealthCheck
    , hcId
    , hcRegion
    , hcType
    , hcTimeoutSec
    , hcLogConfig
    , hcDescription
    , hcUnhealthyThreshold
    , hcHTTPSHealthCheck

    -- * ExchangedPeeringRoutesListWarningCode
    , ExchangedPeeringRoutesListWarningCode (..)

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
    , dalUnreachables
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

    -- * AutoscalingPolicyScalingSchedule
    , AutoscalingPolicyScalingSchedule
    , autoscalingPolicyScalingSchedule
    , apssSchedule
    , apssDisabled
    , apssMinRequiredReplicas
    , apssDurationSec
    , apssTimeZone
    , apssDescription

    -- * InstanceWithNamedPorts
    , InstanceWithNamedPorts
    , instanceWithNamedPorts
    , iwnpStatus
    , iwnpNamedPorts
    , iwnpInstance

    -- * DisplayDevice
    , DisplayDevice
    , displayDevice
    , ddEnableDisplay

    -- * InterconnectListWarning
    , InterconnectListWarning
    , interconnectListWarning
    , iData
    , iCode
    , iMessage

    -- * RegionDisksAddResourcePoliciesRequest
    , RegionDisksAddResourcePoliciesRequest
    , regionDisksAddResourcePoliciesRequest
    , rdarprResourcePolicies

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
    , oalUnreachables
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

    -- * HealthChecksScopedListWarningDataItem
    , HealthChecksScopedListWarningDataItem
    , healthChecksScopedListWarningDataItem
    , hcslwdiValue
    , hcslwdiKey

    -- * NetworkEndpointGroupsListEndpointsRequest
    , NetworkEndpointGroupsListEndpointsRequest
    , networkEndpointGroupsListEndpointsRequest
    , neglerHealthStatus

    -- * InterconnectLocationListWarningCode
    , InterconnectLocationListWarningCode (..)

    -- * InstanceGroupsListInstancesWarningCode
    , InstanceGroupsListInstancesWarningCode (..)

    -- * NodeGroupMaintenancePolicy
    , NodeGroupMaintenancePolicy (..)

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

    -- * PublicDelegatedPrefix
    , PublicDelegatedPrefix
    , publicDelegatedPrefix
    , pdpParentPrefix
    , pdpStatus
    , pdpKind
    , pdpFingerprint
    , pdpSelfLink
    , pdpName
    , pdpCreationTimestamp
    , pdpIPCIdRRange
    , pdpPublicDelegatedSubPrefixs
    , pdpId
    , pdpRegion
    , pdpIsLiveMigration
    , pdpDescription

    -- * TargetTCPProxyListWarning
    , TargetTCPProxyListWarning
    , targetTCPProxyListWarning
    , ttplwData
    , ttplwCode
    , ttplwMessage

    -- * InstanceGroupManagerAggregatedList
    , InstanceGroupManagerAggregatedList
    , instanceGroupManagerAggregatedList
    , igmalUnreachables
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
    , bbCustomResponseHeaders
    , bbSelfLink
    , bbName
    , bbCreationTimestamp
    , bbId
    , bbDescription

    -- * PublicDelegatedPrefixesScopedListWarning
    , PublicDelegatedPrefixesScopedListWarning
    , publicDelegatedPrefixesScopedListWarning
    , pdpslwData
    , pdpslwCode
    , pdpslwMessage

    -- * AccessConfigNetworkTier
    , AccessConfigNetworkTier (..)

    -- * ProjectsEnableXpnResourceRequest
    , ProjectsEnableXpnResourceRequest
    , projectsEnableXpnResourceRequest
    , pexrrXpnResource

    -- * PublicAdvertisedPrefix
    , PublicAdvertisedPrefix
    , publicAdvertisedPrefix
    , papStatus
    , papKind
    , papFingerprint
    , papDNSVerificationIP
    , papSelfLink
    , papSharedSecret
    , papName
    , papCreationTimestamp
    , papIPCIdRRange
    , papId
    , papDescription
    , papPublicDelegatedPrefixs

    -- * BackendServiceCdnPolicyNegativeCachingPolicy
    , BackendServiceCdnPolicyNegativeCachingPolicy
    , backendServiceCdnPolicyNegativeCachingPolicy
    , bscpncpTtl
    , bscpncpCode

    -- * ConditionSys
    , ConditionSys (..)

    -- * HealthChecksScopedListWarningCode
    , HealthChecksScopedListWarningCode (..)

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
    , lccoCustomFields

    -- * ExchangedPeeringRoutesListWarningDataItem
    , ExchangedPeeringRoutesListWarningDataItem
    , exchangedPeeringRoutesListWarningDataItem
    , eprlwdiValue
    , eprlwdiKey

    -- * SubnetworkAggregatedListWarningCode
    , SubnetworkAggregatedListWarningCode (..)

    -- * BackendBucketCdnPolicyBypassCacheOnRequestHeader
    , BackendBucketCdnPolicyBypassCacheOnRequestHeader
    , backendBucketCdnPolicyBypassCacheOnRequestHeader
    , bbcpbcorhHeaderName

    -- * InstancesSetMinCPUPlatformRequest
    , InstancesSetMinCPUPlatformRequest
    , instancesSetMinCPUPlatformRequest
    , ismcprMinCPUPlatform

    -- * NetworkEndpointGroupAggregatedListWarningCode
    , NetworkEndpointGroupAggregatedListWarningCode (..)

    -- * VPNGatewaysGetStatusResponse
    , VPNGatewaysGetStatusResponse
    , vpnGatewaysGetStatusResponse
    , vggsrResult

    -- * ForwardingRuleAggregatedList
    , ForwardingRuleAggregatedList
    , forwardingRuleAggregatedList
    , fralUnreachables
    , fralNextPageToken
    , fralKind
    , fralItems
    , fralSelfLink
    , fralWarning
    , fralId

    -- * ResourcePoliciesScopedListWarning
    , ResourcePoliciesScopedListWarning
    , resourcePoliciesScopedListWarning
    , rpslwData
    , rpslwCode
    , rpslwMessage

    -- * ReservationAffinity
    , ReservationAffinity
    , reservationAffinity
    , raConsumeReservationType
    , raValues
    , raKey

    -- * TargetReference
    , TargetReference
    , targetReference
    , trTarget

    -- * TargetPoolAggregatedList
    , TargetPoolAggregatedList
    , targetPoolAggregatedList
    , tpalUnreachables
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

    -- * HTTPFaultInjection
    , HTTPFaultInjection
    , hTTPFaultInjection
    , httpfiAbort
    , httpfiDelay

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

    -- * ResourcePolicyAggregatedList
    , ResourcePolicyAggregatedList
    , resourcePolicyAggregatedList
    , rpalEtag
    , rpalUnreachables
    , rpalNextPageToken
    , rpalKind
    , rpalItems
    , rpalSelfLink
    , rpalWarning
    , rpalId

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

    -- * TargetHTTPProxiesScopedListWarning
    , TargetHTTPProxiesScopedListWarning
    , targetHTTPProxiesScopedListWarning
    , thttppslwData
    , thttppslwCode
    , thttppslwMessage

    -- * NetworkInterfaceStackType
    , NetworkInterfaceStackType (..)

    -- * URLMapsAggregatedListItems
    , URLMapsAggregatedListItems
    , urlMapsAggregatedListItems
    , umaliAddtional

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

    -- * StatefulPolicyPreservedStateDisks
    , StatefulPolicyPreservedStateDisks
    , statefulPolicyPreservedStateDisks
    , sppsdAddtional

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
    , frIsMirroringCollector
    , frFingerprint
    , frIPVersion
    , frAllPorts
    , frAllowGlobalAccess
    , frNetwork
    , frPortRange
    , frServiceDirectoryRegistrations
    , frSelfLink
    , frName
    , frIPProtocol
    , frCreationTimestamp
    , frServiceName
    , frSubnetwork
    , frPorts
    , frId
    , frLabels
    , frRegion
    , frPscConnectionId
    , frServiceLabel
    , frMetadataFilters
    , frLabelFingerprint
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

    -- * CORSPolicy
    , CORSPolicy
    , corsPolicy
    , cpMaxAge
    , cpAllowMethods
    , cpAllowHeaders
    , cpDisabled
    , cpExposeHeaders
    , cpAllowOriginRegexes
    , cpAllowOrigins
    , cpAllowCredentials

    -- * NetworkEndpointGroupsScopedList
    , NetworkEndpointGroupsScopedList
    , networkEndpointGroupsScopedList
    , negslNetworkEndpointGroups
    , negslWarning

    -- * NotificationEndpointGrpcSettings
    , NotificationEndpointGrpcSettings
    , notificationEndpointGrpcSettings
    , negsResendInterval
    , negsRetryDurationSec
    , negsPayloadName
    , negsEndpoint
    , negsAuthority

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

    -- * BulkInsertInstanceResourceSchema
    , BulkInsertInstanceResourceSchema
    , bulkInsertInstanceResourceSchema
    , biirsAddtional

    -- * UsableSubnetworksAggregatedListWarningCode
    , UsableSubnetworksAggregatedListWarningCode (..)

    -- * ReservationListWarningCode
    , ReservationListWarningCode (..)

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
    , rigmlirNextPageToken
    , rigmlirManagedInstances

    -- * VPNGatewayLabels
    , VPNGatewayLabels
    , vpnGatewayLabels
    , vglAddtional

    -- * NodeGroupAutoscalingPolicy
    , NodeGroupAutoscalingPolicy
    , nodeGroupAutoscalingPolicy
    , ngapMode
    , ngapMinNodes
    , ngapMaxNodes

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oOperationGroupId
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
    , neAnnotations
    , neIPAddress
    , neFqdn
    , nePort
    , neInstance

    -- * DisksScopedListWarningDataItem
    , DisksScopedListWarningDataItem
    , disksScopedListWarningDataItem
    , dslwdiValue
    , dslwdiKey

    -- * RegionInstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction
    , RegionInstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction (..)

    -- * InstanceGroupManagersScopedListWarningCode
    , InstanceGroupManagersScopedListWarningCode (..)

    -- * Disk
    , Disk
    , disk
    , dSatisfiesPzs
    , dStatus
    , dSourceSnapshotId
    , dLastAttachTimestamp
    , dUsers
    , dSourceImage
    , dProvisionedIops
    , dReplicaZones
    , dSourceDiskId
    , dDiskEncryptionKey
    , dSizeGb
    , dKind
    , dLastDetachTimestamp
    , dGuestOSFeatures
    , dZone
    , dResourcePolicies
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
    , dSourceDisk
    , dPhysicalBlockSizeBytes
    , dType
    , dLocationHint
    , dLabelFingerprint
    , dDescription
    , dSourceSnapshotEncryptionKey
    , dSourceStorageObject
    , dSourceSnapshot

    -- * ReservationListWarningDataItem
    , ReservationListWarningDataItem
    , reservationListWarningDataItem
    , rlwdiValue
    , rlwdiKey

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

    -- * PublicDelegatedPrefixAggregatedList
    , PublicDelegatedPrefixAggregatedList
    , publicDelegatedPrefixAggregatedList
    , pdpalUnreachables
    , pdpalNextPageToken
    , pdpalKind
    , pdpalItems
    , pdpalSelfLink
    , pdpalWarning
    , pdpalId

    -- * FirewallPolicyRuleDirection
    , FirewallPolicyRuleDirection (..)

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
    , igmStatefulPolicy
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

    -- * PacketMirroringMirroredResourceInfo
    , PacketMirroringMirroredResourceInfo
    , packetMirroringMirroredResourceInfo
    , pmmriSubnetworks
    , pmmriInstances
    , pmmriTags

    -- * InstanceGroupManagerListWarning
    , InstanceGroupManagerListWarning
    , instanceGroupManagerListWarning
    , igmlwData
    , igmlwCode
    , igmlwMessage

    -- * MetadataFilter
    , MetadataFilter
    , metadataFilter
    , mfFilterLabels
    , mfFilterMatchCriteria

    -- * RegionInstanceGroupsListInstances
    , RegionInstanceGroupsListInstances
    , regionInstanceGroupsListInstances
    , rigliNextPageToken
    , rigliKind
    , rigliItems
    , rigliSelfLink
    , rigliWarning
    , rigliId

    -- * RegionDisksRemoveResourcePoliciesRequest
    , RegionDisksRemoveResourcePoliciesRequest
    , regionDisksRemoveResourcePoliciesRequest
    , rdrrprResourcePolicies

    -- * ReservationAggregatedListWarning
    , ReservationAggregatedListWarning
    , reservationAggregatedListWarning
    , ralwData
    , ralwCode
    , ralwMessage

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

    -- * VPNGatewaysScopedListWarning
    , VPNGatewaysScopedListWarning
    , vpnGatewaysScopedListWarning
    , vgslwData
    , vgslwCode
    , vgslwMessage

    -- * TargetPoolsScopedListWarningCode
    , TargetPoolsScopedListWarningCode (..)

    -- * RegionAutoscalerListWarning
    , RegionAutoscalerListWarning
    , regionAutoscalerListWarning
    , rData
    , rCode
    , rMessage

    -- * NetworkEndpointGroupAppEngine
    , NetworkEndpointGroupAppEngine
    , networkEndpointGroupAppEngine
    , negaeService
    , negaeURLMask
    , negaeVersion

    -- * PreservedStateDisks
    , PreservedStateDisks
    , preservedStateDisks
    , psdAddtional

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

    -- * MetadataFilterFilterMatchCriteria
    , MetadataFilterFilterMatchCriteria (..)

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

    -- * InstanceGroupManagersListPerInstanceConfigsRespWarningCode
    , InstanceGroupManagersListPerInstanceConfigsRespWarningCode (..)

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

    -- * ExternalVPNGatewayLabels
    , ExternalVPNGatewayLabels
    , externalVPNGatewayLabels
    , evglAddtional

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

    -- * CircuitBreakers
    , CircuitBreakers
    , circuitBreakers
    , cbMaxRequests
    , cbMaxConnections
    , cbMaxRequestsPerConnection
    , cbMaxRetries
    , cbMaxPendingRequests

    -- * FirewallPolicyRule
    , FirewallPolicyRule
    , firewallPolicyRule
    , fprEnableLogging
    , fprPriority
    , fprDirection
    , fprTargetResources
    , fprKind
    , fprDisabled
    , fprAction
    , fprRuleTupleCount
    , fprMatch
    , fprTargetServiceAccounts
    , fprDescription

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

    -- * ExternalVPNGatewayListWarningDataItem
    , ExternalVPNGatewayListWarningDataItem
    , externalVPNGatewayListWarningDataItem
    , evglwdiValue
    , evglwdiKey

    -- * PublicDelegatedPrefixList
    , PublicDelegatedPrefixList
    , publicDelegatedPrefixList
    , pdplNextPageToken
    , pdplKind
    , pdplItems
    , pdplSelfLink
    , pdplWarning
    , pdplId

    -- * BackendServiceCdnPolicy
    , BackendServiceCdnPolicy
    , backendServiceCdnPolicy
    , bscpServeWhileStale
    , bscpSignedURLCacheMaxAgeSec
    , bscpNegativeCachingPolicy
    , bscpBypassCacheOnRequestHeaders
    , bscpRequestCoalescing
    , bscpClientTtl
    , bscpMaxTtl
    , bscpCacheMode
    , bscpDefaultTtl
    , bscpNegativeCaching
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
    , ngalUnreachables
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

    -- * ReservationsScopedListWarningDataItem
    , ReservationsScopedListWarningDataItem
    , reservationsScopedListWarningDataItem
    , rslwdiValue
    , rslwdiKey

    -- * VPNTunnelAggregatedListWarningCode
    , VPNTunnelAggregatedListWarningCode (..)

    -- * Reservation
    , Reservation
    , reservation
    , rrSatisfiesPzs
    , rrStatus
    , rrKind
    , rrSpecificReservation
    , rrZone
    , rrSpecificReservationRequired
    , rrSelfLink
    , rrName
    , rrCreationTimestamp
    , rrId
    , rrCommitment
    , rrDescription

    -- * InstanceManagedByIgmErrorManagedInstanceError
    , InstanceManagedByIgmErrorManagedInstanceError
    , instanceManagedByIgmErrorManagedInstanceError
    , imbiemieCode
    , imbiemieMessage

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

    -- * URLMapsScopedList
    , URLMapsScopedList
    , urlMapsScopedList
    , umslURLMaps
    , umslWarning

    -- * DiskInstantiationConfig
    , DiskInstantiationConfig
    , diskInstantiationConfig
    , dicAutoDelete
    , dicInstantiateFrom
    , dicCustomImage
    , dicDeviceName

    -- * RegionInstanceGroupManagersListInstanceConfigsResp
    , RegionInstanceGroupManagersListInstanceConfigsResp
    , regionInstanceGroupManagersListInstanceConfigsResp
    , rigmlicrNextPageToken
    , rigmlicrItems
    , rigmlicrWarning

    -- * LocalDisk
    , LocalDisk
    , localDisk
    , ldDiskSizeGb
    , ldDiskCount
    , ldDiskType

    -- * DiskTypeAggregatedListWarning
    , DiskTypeAggregatedListWarning
    , diskTypeAggregatedListWarning
    , dtalwData
    , dtalwCode
    , dtalwMessage

    -- * PublicDelegatedPrefixPublicDelegatedSubPrefixStatus
    , PublicDelegatedPrefixPublicDelegatedSubPrefixStatus (..)

    -- * PerInstanceConfigStatus
    , PerInstanceConfigStatus (..)

    -- * DiskTypeListWarningDataItem
    , DiskTypeListWarningDataItem
    , diskTypeListWarningDataItem
    , dtlwdiValue
    , dtlwdiKey

    -- * HTTPRetryPolicy
    , HTTPRetryPolicy
    , hTTPRetryPolicy
    , httprpNumRetries
    , httprpPerTryTimeout
    , httprpRetryConditions

    -- * WafExpressionSet
    , WafExpressionSet
    , wafExpressionSet
    , wesAliases
    , wesExpressions
    , wesId

    -- * SecurityPolicyRule
    , SecurityPolicyRule
    , securityPolicyRule
    , sprPriority
    , sprKind
    , sprAction
    , sprPreview
    , sprMatch
    , sprDescription

    -- * VPNGatewayAggregatedListWarningCode
    , VPNGatewayAggregatedListWarningCode (..)

    -- * StatefulPolicyPreservedStateDiskDeviceAutoDelete
    , StatefulPolicyPreservedStateDiskDeviceAutoDelete (..)

    -- * InterconnectsGetDiagnosticsResponse
    , InterconnectsGetDiagnosticsResponse
    , interconnectsGetDiagnosticsResponse
    , igdrResult

    -- * WeightedBackendService
    , WeightedBackendService
    , weightedBackendService
    , wbsWeight
    , wbsHeaderAction
    , wbsBackendService

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
    , flcMetadata

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
    , rnatEnableEndpointIndependentMApping
    , rnatUdpIdleTimeoutSec
    , rnatNATIPs
    , rnatSubnetworks
    , rnatMinPortsPerVM
    , rnatName
    , rnatSourceSubnetworkIPRangesToNAT
    , rnatTCPEstablishedIdleTimeoutSec
    , rnatLogConfig
    , rnatTCPTransitoryIdleTimeoutSec
    , rnatDrainNATIPs

    -- * AutoscalerAggregatedListWarning
    , AutoscalerAggregatedListWarning
    , autoscalerAggregatedListWarning
    , aalwData
    , aalwCode
    , aalwMessage

    -- * GRPCHealthCheckPortSpecification
    , GRPCHealthCheckPortSpecification (..)

    -- * AutoscalerListWarningDataItem
    , AutoscalerListWarningDataItem
    , autoscalerListWarningDataItem
    , alwdiValue
    , alwdiKey

    -- * PacketMirroringAggregatedListItems
    , PacketMirroringAggregatedListItems
    , packetMirroringAggregatedListItems
    , pmaliAddtional

    -- * InstanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , InstanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , instanceGroupManagersListPerInstanceConfigsRespWarningDataItem
    , igmlpicrwdiValue
    , igmlpicrwdiKey

    -- * MachineTypeListWarningCode
    , MachineTypeListWarningCode (..)

    -- * ResourcePolicyList
    , ResourcePolicyList
    , resourcePolicyList
    , rplEtag
    , rplNextPageToken
    , rplKind
    , rplItems
    , rplSelfLink
    , rplWarning
    , rplId

    -- * NodeTypeListWarning
    , NodeTypeListWarning
    , nodeTypeListWarning
    , ntlwData
    , ntlwCode
    , ntlwMessage

    -- * PacketMirroringMirroredResourceInfoSubnetInfo
    , PacketMirroringMirroredResourceInfoSubnetInfo
    , packetMirroringMirroredResourceInfoSubnetInfo
    , pmmrisiURL
    , pmmrisiCanonicalURL

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
    , rsnatsDrainAutoAllocatedNATIPs
    , rsnatsUserAllocatedNATIPResources
    , rsnatsDrainUserAllocatedNATIPs
    , rsnatsName
    , rsnatsAutoAllocatedNATIPs
    , rsnatsMinExtraNATIPsNeeded
    , rsnatsNumVMEndpointsWithNATMAppings
    , rsnatsUserAllocatedNATIPs

    -- * PublicAdvertisedPrefixPublicDelegatedPrefix
    , PublicAdvertisedPrefixPublicDelegatedPrefix
    , publicAdvertisedPrefixPublicDelegatedPrefix
    , pAppdpStatus
    , pAppdpProject
    , pAppdpName
    , pAppdpRegion
    , pAppdpIPRange

    -- * TargetPoolsRemoveInstanceRequest
    , TargetPoolsRemoveInstanceRequest
    , targetPoolsRemoveInstanceRequest
    , tprirInstances

    -- * NodeTypeAggregatedListWarningDataItem
    , NodeTypeAggregatedListWarningDataItem
    , nodeTypeAggregatedListWarningDataItem
    , nValue
    , nKey

    -- * GlobalNetworkEndpointGroupsAttachEndpointsRequest
    , GlobalNetworkEndpointGroupsAttachEndpointsRequest
    , globalNetworkEndpointGroupsAttachEndpointsRequest
    , gnegaerNetworkEndpoints

    -- * TargetInstancesScopedListWarningDataItem
    , TargetInstancesScopedListWarningDataItem
    , targetInstancesScopedListWarningDataItem
    , tislwdiValue
    , tislwdiKey

    -- * ReservationsScopedListWarningCode
    , ReservationsScopedListWarningCode (..)

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
    , atalUnreachables
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
    , igmlmirNextPageToken
    , igmlmirManagedInstances

    -- * InstanceProperties
    , InstanceProperties
    , instanceProperties
    , ipAdvancedMachineFeatures
    , ipServiceAccounts
    , ipReservationAffinity
    , ipNetworkInterfaces
    , ipConfidentialInstanceConfig
    , ipResourcePolicies
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
    , ipPrivateIPv6GoogleAccess

    -- * ExternalVPNGatewayListWarningCode
    , ExternalVPNGatewayListWarningCode (..)

    -- * ProjectsListXpnHostsRequest
    , ProjectsListXpnHostsRequest
    , projectsListXpnHostsRequest
    , plxhrOrganization

    -- * VPNGatewayListWarning
    , VPNGatewayListWarning
    , vpnGatewayListWarning
    , vglwData
    , vglwCode
    , vglwMessage

    -- * RegionListWarning
    , RegionListWarning
    , regionListWarning
    , rlwData
    , rlwCode
    , rlwMessage

    -- * HealthChecksAggregatedListItems
    , HealthChecksAggregatedListItems
    , healthChecksAggregatedListItems
    , hcaliAddtional

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

    -- * VPNGatewayAggregatedListWarningDataItem
    , VPNGatewayAggregatedListWarningDataItem
    , vpnGatewayAggregatedListWarningDataItem
    , vgalwdiValue
    , vgalwdiKey

    -- * NodeGroupsScopedList
    , NodeGroupsScopedList
    , nodeGroupsScopedList
    , ngslNodeGroups
    , ngslWarning

    -- * PublicAdvertisedPrefixList
    , PublicAdvertisedPrefixList
    , publicAdvertisedPrefixList
    , paplNextPageToken
    , paplKind
    , paplItems
    , paplSelfLink
    , paplWarning
    , paplId

    -- * DiskTypesScopedListWarning
    , DiskTypesScopedListWarning
    , diskTypesScopedListWarning
    , dtslwData
    , dtslwCode
    , dtslwMessage

    -- * InstanceGroupManagerUpdatePolicyInstanceRedistributionType
    , InstanceGroupManagerUpdatePolicyInstanceRedistributionType (..)

    -- * HTTPFaultAbort
    , HTTPFaultAbort
    , hTTPFaultAbort
    , httpfaHTTPStatus
    , httpfaPercentage

    -- * RegionInstanceGroupManagerListWarningDataItem
    , RegionInstanceGroupManagerListWarningDataItem
    , regionInstanceGroupManagerListWarningDataItem
    , rigmlwdiValue
    , rigmlwdiKey

    -- * StatefulPolicy
    , StatefulPolicy
    , statefulPolicy
    , spPreservedState

    -- * RuleAction
    , RuleAction (..)

    -- * AddressesScopedListWarningCode
    , AddressesScopedListWarningCode (..)

    -- * AttachedDiskInitializeParams
    , AttachedDiskInitializeParams
    , attachedDiskInitializeParams
    , adipSourceImage
    , adipDiskSizeGb
    , adipProvisionedIops
    , adipOnUpdateAction
    , adipResourcePolicies
    , adipDiskName
    , adipSourceImageEncryptionKey
    , adipDiskType
    , adipLabels
    , adipDescription
    , adipSourceSnapshotEncryptionKey
    , adipSourceSnapshot

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
    , niIPv6AccessConfigs
    , niIPv6Address
    , niKind
    , niFingerprint
    , niAliasIPRanges
    , niNetwork
    , niStackType
    , niNicType
    , niName
    , niNetworkIP
    , niSubnetwork
    , niIPv6AccessType
    , niAccessConfigs

    -- * TargetHTTPSProxyAggregatedListWarning
    , TargetHTTPSProxyAggregatedListWarning
    , targetHTTPSProxyAggregatedListWarning
    , thpalwData
    , thpalwCode
    , thpalwMessage

    -- * InitialStateConfig
    , InitialStateConfig
    , initialStateConfig
    , iscDBxs
    , iscPk
    , iscDBs
    , iscKeks

    -- * FirewallListWarningCode
    , FirewallListWarningCode (..)

    -- * RouterListWarning
    , RouterListWarning
    , routerListWarning
    , rouData
    , rouCode
    , rouMessage

    -- * FirewallListWarningDataItem
    , FirewallListWarningDataItem
    , firewallListWarningDataItem
    , flwdiValue
    , flwdiKey

    -- * InterconnectAttachmentType
    , InterconnectAttachmentType (..)

    -- * ResourcePolicyAggregatedListItems
    , ResourcePolicyAggregatedListItems
    , resourcePolicyAggregatedListItems
    , rpaliAddtional

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
    , bbcpServeWhileStale
    , bbcpSignedURLCacheMaxAgeSec
    , bbcpNegativeCachingPolicy
    , bbcpBypassCacheOnRequestHeaders
    , bbcpRequestCoalescing
    , bbcpClientTtl
    , bbcpMaxTtl
    , bbcpCacheMode
    , bbcpDefaultTtl
    , bbcpNegativeCaching
    , bbcpSignedURLKeyNames

    -- * ResourcePolicyDailyCycle
    , ResourcePolicyDailyCycle
    , resourcePolicyDailyCycle
    , rpdcStartTime
    , rpdcDaysInCycle
    , rpdcDuration

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

    -- * GlobalOrganizationSetPolicyRequest
    , GlobalOrganizationSetPolicyRequest
    , globalOrganizationSetPolicyRequest
    , gosprEtag
    , gosprBindings
    , gosprPolicy

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

    -- * HealthCheckServiceHealthStatusAggregationPolicy
    , HealthCheckServiceHealthStatusAggregationPolicy (..)

    -- * InstanceGroupAggregatedListWarning
    , InstanceGroupAggregatedListWarning
    , instanceGroupAggregatedListWarning
    , igalwData
    , igalwCode
    , igalwMessage

    -- * RouteList
    , RouteList
    , routeList
    , rouNextPageToken
    , rouKind
    , rouItems
    , rouSelfLink
    , rouWarning
    , rouId

    -- * DeprecationStatusState
    , DeprecationStatusState (..)

    -- * URLMapsAggregatedList
    , URLMapsAggregatedList
    , urlMapsAggregatedList
    , umalUnreachables
    , umalNextPageToken
    , umalKind
    , umalItems
    , umalSelfLink
    , umalWarning
    , umalId

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

    -- * OutlierDetection
    , OutlierDetection
    , outlierDetection
    , odEnforcingConsecutiveErrors
    , odSuccessRateMinimumHosts
    , odConsecutiveGatewayFailure
    , odConsecutiveErrors
    , odEnforcingConsecutiveGatewayFailure
    , odBaseEjectionTime
    , odSuccessRateStdevFactor
    , odInterval
    , odEnforcingSuccessRate
    , odMaxEjectionPercent
    , odSuccessRateRequestVolume

    -- * ResourcePolicyInstanceSchedulePolicySchedule
    , ResourcePolicyInstanceSchedulePolicySchedule
    , resourcePolicyInstanceSchedulePolicySchedule
    , rpispsSchedule

    -- * SubnetworkPrivateIPv6GoogleAccess
    , SubnetworkPrivateIPv6GoogleAccess (..)

    -- * Router
    , Router
    , router
    , rouoBGPPeers
    , rouoEncryptedInterconnectRouter
    , rouoBGP
    , rouoKind
    , rouoNetwork
    , rouoInterfaces
    , rouoSelfLink
    , rouoName
    , rouoCreationTimestamp
    , rouoId
    , rouoRegion
    , rouoNATs
    , rouoDescription

    -- * NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicyType
    , NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicyType (..)

    -- * LocationPolicyLocations
    , LocationPolicyLocations
    , locationPolicyLocations
    , lplAddtional

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
    , rValue
    , rKey

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

    -- * VPNGatewayStatusHighAvailabilityRequirementState
    , VPNGatewayStatusHighAvailabilityRequirementState
    , vpnGatewayStatusHighAvailabilityRequirementState
    , vgsharsState
    , vgsharsUnsatisfiedReason

    -- * PublicDelegatedPrefixAggregatedListItems
    , PublicDelegatedPrefixAggregatedListItems
    , publicDelegatedPrefixAggregatedListItems
    , pdpaliAddtional

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

    -- * RegionURLMapsValidateRequest
    , RegionURLMapsValidateRequest
    , regionURLMapsValidateRequest
    , rumvrResource

    -- * SSLCertificateList
    , SSLCertificateList
    , sslCertificateList
    , sclNextPageToken
    , sclKind
    , sclItems
    , sclSelfLink
    , sclWarning
    , sclId

    -- * SecuritySettings
    , SecuritySettings
    , securitySettings
    , ssClientTLSPolicy
    , ssSubjectAltNames

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

    -- * ResourcePolicySnapshotSchedulePolicySchedule
    , ResourcePolicySnapshotSchedulePolicySchedule
    , resourcePolicySnapshotSchedulePolicySchedule
    , rpsspsDailySchedule
    , rpsspsHourlySchedule
    , rpsspsWeeklySchedule

    -- * RouterListWarningDataItem
    , RouterListWarningDataItem
    , routerListWarningDataItem
    , rouValue
    , rouKey

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

    -- * PacketMirroringsScopedList
    , PacketMirroringsScopedList
    , packetMirroringsScopedList
    , pmslPacketMirrorings
    , pmslWarning

    -- * BackendServiceAggregatedList
    , BackendServiceAggregatedList
    , backendServiceAggregatedList
    , bsalUnreachables
    , bsalNextPageToken
    , bsalKind
    , bsalItems
    , bsalSelfLink
    , bsalWarning
    , bsalId

    -- * Network
    , Network
    , network
    , nMtu
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

    -- * NetworkEndpointGroupAnnotations
    , NetworkEndpointGroupAnnotations
    , networkEndpointGroupAnnotations
    , negaAddtional

    -- * RoutersScopedListWarning
    , RoutersScopedListWarning
    , routersScopedListWarning
    , rslwData
    , rslwCode
    , rslwMessage

    -- * TargetHTTPSProxyAggregatedListWarningCode
    , TargetHTTPSProxyAggregatedListWarningCode (..)

    -- * UsableSubnetwork
    , UsableSubnetwork
    , usableSubnetwork
    , usNetwork
    , usSecondaryIPRanges
    , usIPCIdRRange
    , usSubnetwork

    -- * RouterBGPPeerAdvertisedGroupsItem
    , RouterBGPPeerAdvertisedGroupsItem (..)

    -- * AutoscalingPolicyCPUUtilizationPredictiveMethod
    , AutoscalingPolicyCPUUtilizationPredictiveMethod (..)

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
    , secAdvancedOptionsConfig
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

    -- * BackendServiceLocalityLbPolicy
    , BackendServiceLocalityLbPolicy (..)

    -- * ForwardingRuleIPVersion
    , ForwardingRuleIPVersion (..)

    -- * NodeGroupMaintenanceWindow
    , NodeGroupMaintenanceWindow
    , nodeGroupMaintenanceWindow
    , ngmwStartTime
    , ngmwMaintenanceDuration

    -- * RouterNATLogConfigFilter
    , RouterNATLogConfigFilter (..)

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
    , ialUnreachables
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

    -- * NotificationEndpoint
    , NotificationEndpoint
    , notificationEndpoint
    , neKind
    , neSelfLink
    , neName
    , neCreationTimestamp
    , neId
    , neRegion
    , neGrpcSettings
    , neDescription

    -- * TargetTCPProxiesSetBackendServiceRequest
    , TargetTCPProxiesSetBackendServiceRequest
    , targetTCPProxiesSetBackendServiceRequest
    , ttpsbsrService

    -- * RegionInstanceGroupManagerPatchInstanceConfigReq
    , RegionInstanceGroupManagerPatchInstanceConfigReq
    , regionInstanceGroupManagerPatchInstanceConfigReq
    , rigmpicrPerInstanceConfigs

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

    -- * InstanceGroupManagersDeletePerInstanceConfigsReq
    , InstanceGroupManagersDeletePerInstanceConfigsReq
    , instanceGroupManagersDeletePerInstanceConfigsReq
    , igmdpicrNames

    -- * NetworkInterfaceIPv6AccessType
    , NetworkInterfaceIPv6AccessType (..)

    -- * StatefulPolicyPreservedStateDiskDevice
    , StatefulPolicyPreservedStateDiskDevice
    , statefulPolicyPreservedStateDiskDevice
    , sppsddAutoDelete

    -- * Zone
    , Zone
    , zone
    , zStatus
    , zKind
    , zSelfLink
    , zName
    , zCreationTimestamp
    , zSupportsPzs
    , zId
    , zRegion
    , zAvailableCPUPlatforms
    , zDescription
    , zDeprecated

    -- * RouterBGP
    , RouterBGP
    , routerBGP
    , rbKeepaliveInterval
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

    -- * PacketMirroringAggregatedList
    , PacketMirroringAggregatedList
    , packetMirroringAggregatedList
    , pmalUnreachables
    , pmalNextPageToken
    , pmalKind
    , pmalItems
    , pmalSelfLink
    , pmalWarning
    , pmalId

    -- * InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- * BackendServiceGroupHealthAnnotations
    , BackendServiceGroupHealthAnnotations
    , backendServiceGroupHealthAnnotations
    , bsghaAddtional

    -- * HealthChecksAggregatedList
    , HealthChecksAggregatedList
    , healthChecksAggregatedList
    , hcalUnreachables
    , hcalNextPageToken
    , hcalKind
    , hcalItems
    , hcalSelfLink
    , hcalWarning
    , hcalId

    -- * InstanceGroupManagersUpdatePerInstanceConfigsReq
    , InstanceGroupManagersUpdatePerInstanceConfigsReq
    , instanceGroupManagersUpdatePerInstanceConfigsReq
    , igmupicrPerInstanceConfigs

    -- * TargetSSLProxiesSetSSLCertificatesRequest
    , TargetSSLProxiesSetSSLCertificatesRequest
    , targetSSLProxiesSetSSLCertificatesRequest
    , tspsscrSSLCertificates

    -- * HealthStatusForNetworkEndpoint
    , HealthStatusForNetworkEndpoint
    , healthStatusForNetworkEndpoint
    , hsfneHealthCheckService
    , hsfneHealthCheck
    , hsfneForwardingRule
    , hsfneHealthState
    , hsfneBackendService

    -- * FirewallPolicy
    , FirewallPolicy
    , firewallPolicy
    , fpParent
    , fpRules
    , fpShortName
    , fpKind
    , fpFingerprint
    , fpSelfLinkWithId
    , fpSelfLink
    , fpName
    , fpCreationTimestamp
    , fpAssociations
    , fpDisplayName
    , fpId
    , fpRuleTupleCount
    , fpDescription

    -- * RouterAggregatedListWarning
    , RouterAggregatedListWarning
    , routerAggregatedListWarning
    , ralwaData
    , ralwaCode
    , ralwaMessage

    -- * TargetHTTPSProxyAggregatedListWarningDataItem
    , TargetHTTPSProxyAggregatedListWarningDataItem
    , targetHTTPSProxyAggregatedListWarningDataItem
    , thpalwdiValue
    , thpalwdiKey

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

    -- * ConfidentialInstanceConfig
    , ConfidentialInstanceConfig
    , confidentialInstanceConfig
    , cicEnableConfidentialCompute

    -- * TargetInstanceAggregatedListItems
    , TargetInstanceAggregatedListItems
    , targetInstanceAggregatedListItems
    , tialiAddtional

    -- * SSLCertificatesScopedListWarningCode
    , SSLCertificatesScopedListWarningCode (..)

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

    -- * URLMapsAggregatedListWarning
    , URLMapsAggregatedListWarning
    , urlMapsAggregatedListWarning
    , umalwData
    , umalwCode
    , umalwMessage

    -- * RouteListWarning
    , RouteListWarning
    , routeListWarning
    , rlwlData
    , rlwlCode
    , rlwlMessage

    -- * ResourcePolicyGroupPlacementPolicyCollocation
    , ResourcePolicyGroupPlacementPolicyCollocation (..)

    -- * TargetTCPProxyProxyHeader
    , TargetTCPProxyProxyHeader (..)

    -- * InstanceGroupAggregatedList
    , InstanceGroupAggregatedList
    , instanceGroupAggregatedList
    , igalUnreachables
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
    , r1NextHopIlb
    , r1NextHopPeering
    , r1Priority
    , r1Kind
    , r1NextHopGateway
    , r1NextHopNetwork
    , r1Network
    , r1Warnings
    , r1NextHopIP
    , r1DestRange
    , r1SelfLink
    , r1Name
    , r1CreationTimestamp
    , r1Id
    , r1NextHopVPNTunnel
    , r1Description
    , r1Tags
    , r1NextHopInstance

    -- * URLRewrite
    , URLRewrite
    , urlRewrite
    , urPathPrefixRewrite
    , urHostRewrite

    -- * TargetVPNGatewaysScopedListWarningDataItem
    , TargetVPNGatewaysScopedListWarningDataItem
    , targetVPNGatewaysScopedListWarningDataItem
    , tvgslwdiValue
    , tvgslwdiKey

    -- * LogConfigCloudAuditOptionsLogName
    , LogConfigCloudAuditOptionsLogName (..)

    -- * AllocationSpecificSKUAllocationReservedInstanceProperties
    , AllocationSpecificSKUAllocationReservedInstanceProperties
    , allocationSpecificSKUAllocationReservedInstanceProperties
    , asskuaripGuestAccelerators
    , asskuaripLocalSsds
    , asskuaripMachineType
    , asskuaripMinCPUPlatform
    , asskuaripLocationHint

    -- * LicenseCodeState
    , LicenseCodeState (..)

    -- * InterconnectLocationRegionInfo
    , InterconnectLocationRegionInfo
    , interconnectLocationRegionInfo
    , ilriLocationPresence
    , ilriExpectedRttMs
    , ilriRegion

    -- * NetworkEndpointGroupCloudFunction
    , NetworkEndpointGroupCloudFunction
    , networkEndpointGroupCloudFunction
    , negcfFunction
    , negcfURLMask

    -- * TCPHealthCheckPortSpecification
    , TCPHealthCheckPortSpecification (..)

    -- * TargetVPNGatewaysScopedListWarningCode
    , TargetVPNGatewaysScopedListWarningCode (..)

    -- * TargetHTTPSProxiesSetSSLCertificatesRequest
    , TargetHTTPSProxiesSetSSLCertificatesRequest
    , targetHTTPSProxiesSetSSLCertificatesRequest
    , thpsscrSSLCertificates

    -- * InstancesRemoveResourcePoliciesRequest
    , InstancesRemoveResourcePoliciesRequest
    , instancesRemoveResourcePoliciesRequest
    , irrprResourcePolicies

    -- * FileContentBufferFileType
    , FileContentBufferFileType (..)

    -- * InstanceGroupManagersPatchPerInstanceConfigsReq
    , InstanceGroupManagersPatchPerInstanceConfigsReq
    , instanceGroupManagersPatchPerInstanceConfigsReq
    , igmppicrPerInstanceConfigs

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
    , igmsVersionTarget
    , igmsIsStable
    , igmsAutoscaler
    , igmsStateful

    -- * TargetHTTPSProxyAggregatedList
    , TargetHTTPSProxyAggregatedList
    , targetHTTPSProxyAggregatedList
    , thpalUnreachables
    , thpalNextPageToken
    , thpalKind
    , thpalItems
    , thpalSelfLink
    , thpalWarning
    , thpalId

    -- * ReservationAggregatedListItems
    , ReservationAggregatedListItems
    , reservationAggregatedListItems
    , raliAddtional

    -- * RegionInstanceGroupManagersCreateInstancesRequest
    , RegionInstanceGroupManagersCreateInstancesRequest
    , regionInstanceGroupManagersCreateInstancesRequest
    , rigmcirInstances

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

    -- * BackendServiceCdnPolicyBypassCacheOnRequestHeader
    , BackendServiceCdnPolicyBypassCacheOnRequestHeader
    , backendServiceCdnPolicyBypassCacheOnRequestHeader
    , bscpbcorhHeaderName

    -- * SSLCertificateSelfManagedSSLCertificate
    , SSLCertificateSelfManagedSSLCertificate
    , sslCertificateSelfManagedSSLCertificate
    , scsmscPrivateKey
    , scsmscCertificate

    -- * DiskStatus
    , DiskStatus (..)

    -- * ResourceCommitment
    , ResourceCommitment
    , resourceCommitment
    , rcAmount
    , rcAcceleratorType
    , rcType

    -- * ConsistentHashLoadBalancerSettingsHTTPCookie
    , ConsistentHashLoadBalancerSettingsHTTPCookie
    , consistentHashLoadBalancerSettingsHTTPCookie
    , chlbshttpcTtl
    , chlbshttpcPath
    , chlbshttpcName

    -- * SnapshotListWarningCode
    , SnapshotListWarningCode (..)

    -- * SubnetworkLogConfigMetadata
    , SubnetworkLogConfigMetadata (..)

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

    -- * SecurityPoliciesListPreConfiguredExpressionSetsResponse
    , SecurityPoliciesListPreConfiguredExpressionSetsResponse
    , securityPoliciesListPreConfiguredExpressionSetsResponse
    , splpcesrPreConfiguredExpressionSets

    -- * ManagedInstanceInstanceStatus
    , ManagedInstanceInstanceStatus (..)

    -- * HTTPHealthCheckProxyHeader
    , HTTPHealthCheckProxyHeader (..)

    -- * SSLCertificateAggregatedListWarningDataItem
    , SSLCertificateAggregatedListWarningDataItem
    , sslCertificateAggregatedListWarningDataItem
    , scalwdiValue
    , scalwdiKey

    -- * VMEndpointNATMAppingsListWarningDataItem
    , VMEndpointNATMAppingsListWarningDataItem
    , vMEndpointNATMAppingsListWarningDataItem
    , vmenatmalwdiValue
    , vmenatmalwdiKey

    -- * HealthCheckServicesListWarningDataItem
    , HealthCheckServicesListWarningDataItem
    , healthCheckServicesListWarningDataItem
    , hValue
    , hKey

    -- * InterconnectLocationContinent
    , InterconnectLocationContinent (..)

    -- * URLMapsValidateResponse
    , URLMapsValidateResponse
    , urlMapsValidateResponse
    , umvrResult

    -- * SSLCertificate
    , SSLCertificate
    , sslCertificate
    , scSubjectAlternativeNames
    , scPrivateKey
    , scManaged
    , scKind
    , scSelfLink
    , scName
    , scCreationTimestamp
    , scId
    , scCertificate
    , scRegion
    , scType
    , scExpireTime
    , scDescription
    , scSelfManaged

    -- * SSLCertificatesScopedListWarningDataItem
    , SSLCertificatesScopedListWarningDataItem
    , sslCertificatesScopedListWarningDataItem
    , scslwdiValue
    , scslwdiKey

    -- * PacketMirroringFilter
    , PacketMirroringFilter
    , packetMirroringFilter
    , pmfDirection
    , pmfCIdRRanges
    , pmfIPProtocols

    -- * RegionInstanceGroupManagersApplyUpdatesRequest
    , RegionInstanceGroupManagersApplyUpdatesRequest
    , regionInstanceGroupManagersApplyUpdatesRequest
    , rigmaurAllInstances
    , rigmaurMostDisruptiveAllowedAction
    , rigmaurInstances
    , rigmaurMinimalAction

    -- * SSLCertificateAggregatedListWarningCode
    , SSLCertificateAggregatedListWarningCode (..)

    -- * NodeTemplateCPUOvercommitType
    , NodeTemplateCPUOvercommitType (..)

    -- * VMEndpointNATMAppingsListWarningCode
    , VMEndpointNATMAppingsListWarningCode (..)

    -- * HealthCheckServicesListWarningCode
    , HealthCheckServicesListWarningCode (..)

    -- * ResourcePolicyGroupPlacementPolicy
    , ResourcePolicyGroupPlacementPolicy
    , resourcePolicyGroupPlacementPolicy
    , rpgppAvailabilityDomainCount
    , rpgppCollocation
    , rpgppVMCount

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

    -- * SSLCertificatesScopedListWarning
    , SSLCertificatesScopedListWarning
    , sslCertificatesScopedListWarning
    , scslwData
    , scslwCode
    , scslwMessage

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

    -- * InstanceGroupManagersApplyUpdatesRequestMinimalAction
    , InstanceGroupManagersApplyUpdatesRequestMinimalAction (..)

    -- * InstanceGroupManagerUpdatePolicyType
    , InstanceGroupManagerUpdatePolicyType (..)

    -- * HTTPRedirectAction
    , HTTPRedirectAction
    , hTTPRedirectAction
    , httpraRedirectResponseCode
    , httpraHostRedirect
    , httpraPathRedirect
    , httpraPrefixRedirect
    , httpraStripQuery
    , httpraHTTPSRedirect

    -- * ServerBinding
    , ServerBinding
    , serverBinding
    , sbType

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

    -- * VPNGatewayStatusHighAvailabilityRequirementStateState
    , VPNGatewayStatusHighAvailabilityRequirementStateState (..)

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

    -- * GRPCHealthCheck
    , GRPCHealthCheck
    , gRPCHealthCheck
    , grpchcGrpcServiceName
    , grpchcPortSpecification
    , grpchcPortName
    , grpchcPort

    -- * HealthStatusAnnotations
    , HealthStatusAnnotations
    , healthStatusAnnotations
    , hsaAddtional

    -- * TargetSSLProxyListWarningCode
    , TargetSSLProxyListWarningCode (..)

    -- * NotificationEndpointList
    , NotificationEndpointList
    , notificationEndpointList
    , nelNextPageToken
    , nelKind
    , nelItems
    , nelSelfLink
    , nelWarning
    , nelId

    -- * DistributionPolicyZoneConfiguration
    , DistributionPolicyZoneConfiguration
    , distributionPolicyZoneConfiguration
    , dpzcZone

    -- * RegionStatus
    , RegionStatus (..)

    -- * ResourcePolicyResourceStatus
    , ResourcePolicyResourceStatus
    , resourcePolicyResourceStatus
    , rprsInstanceSchedulePolicy

    -- * TargetTCPProxiesSetProxyHeaderRequest
    , TargetTCPProxiesSetProxyHeaderRequest
    , targetTCPProxiesSetProxyHeaderRequest
    , ttpsphrProxyHeader

    -- * InterconnectAttachmentBandwidth
    , InterconnectAttachmentBandwidth (..)

    -- * VPNGatewayStatus
    , VPNGatewayStatus
    , vpnGatewayStatus
    , vgsVPNConnections

    -- * RouterBGPPeer
    , RouterBGPPeer
    , routerBGPPeer
    , rbpIPAddress
    , rbpInterfaceName
    , rbpPeerIPAddress
    , rbpAdvertisedRoutePriority
    , rbpPeerASN
    , rbpEnable
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
    , miPreservedStateFromConfig
    , miInstanceHealth
    , miCurrentAction
    , miVersion
    , miPreservedStateFromPolicy
    , miId
    , miInstanceStatus
    , miInstance

    -- * InstanceGroupManagerAggregatedListItems
    , InstanceGroupManagerAggregatedListItems
    , instanceGroupManagerAggregatedListItems
    , igmaliAddtional

    -- * HTTPHeaderOption
    , HTTPHeaderOption
    , hTTPHeaderOption
    , httphoReplace
    , httphoHeaderValue
    , httphoHeaderName

    -- * InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- * HealthCheckServiceReference
    , HealthCheckServiceReference
    , healthCheckServiceReference
    , hcsrHealthCheckService

    -- * Backend
    , Backend
    , backend
    , bGroup
    , bBalancingMode
    , bMaxUtilization
    , bMaxRate
    , bMaxConnections
    , bFailover
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

    -- * PacketMirroringFilterDirection
    , PacketMirroringFilterDirection (..)

    -- * TargetHTTPSProxiesScopedList
    , TargetHTTPSProxiesScopedList
    , targetHTTPSProxiesScopedList
    , thpslWarning
    , thpslTargetHTTPSProxies

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
    , iaalUnreachables
    , iaalNextPageToken
    , iaalKind
    , iaalItems
    , iaalSelfLink
    , iaalWarning
    , iaalId

    -- * FirewallPolicyList
    , FirewallPolicyList
    , firewallPolicyList
    , fplNextPageToken
    , fplKind
    , fplItems
    , fplWarning
    , fplId

    -- * ExchangedPeeringRouteType
    , ExchangedPeeringRouteType (..)

    -- * ScalingScheduleStatus
    , ScalingScheduleStatus
    , scalingScheduleStatus
    , sssState
    , sssLastStartTime
    , sssNextStartTime

    -- * URLMapsAggregatedListWarningCode
    , URLMapsAggregatedListWarningCode (..)

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

    -- * InstanceManagedByIgmError
    , InstanceManagedByIgmError
    , instanceManagedByIgmError
    , imbieInstanceActionDetails
    , imbieError
    , imbieTimestamp

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
    , netExportCustomRoutes
    , netStateDetails
    , netNetwork
    , netImportCustomRoutes
    , netName
    , netExportSubnetRoutesWithPublicIP
    , netImportSubnetRoutesWithPublicIP
    , netPeerMtu
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

    -- * ExternalVPNGatewayRedundancyType
    , ExternalVPNGatewayRedundancyType (..)

    -- * MachineTypeAcceleratorsItem
    , MachineTypeAcceleratorsItem
    , machineTypeAcceleratorsItem
    , mtaiGuestAcceleratorCount
    , mtaiGuestAcceleratorType

    -- * VPNGatewayStatusTunnel
    , VPNGatewayStatusTunnel
    , vpnGatewayStatusTunnel
    , vgstTunnelURL
    , vgstPeerGatewayInterface
    , vgstLocalGatewayInterface

    -- * URLMapsAggregatedListWarningDataItem
    , URLMapsAggregatedListWarningDataItem
    , urlMapsAggregatedListWarningDataItem
    , umalwdiValue
    , umalwdiKey

    -- * InstanceListReferrersWarningDataItem
    , InstanceListReferrersWarningDataItem
    , instanceListReferrersWarningDataItem
    , ilrwdiValue
    , ilrwdiKey

    -- * RouteListWarningDataItem
    , RouteListWarningDataItem
    , routeListWarningDataItem
    , rlwdilValue
    , rlwdilKey

    -- * InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicyType
    , InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicyType (..)

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
    , calUnreachables
    , calNextPageToken
    , calKind
    , calItems
    , calSelfLink
    , calWarning
    , calId

    -- * InstanceGroupManagersListErrorsResponse
    , InstanceGroupManagersListErrorsResponse
    , instanceGroupManagersListErrorsResponse
    , igmlerNextPageToken
    , igmlerItems

    -- * RegionInstanceGroupList
    , RegionInstanceGroupList
    , regionInstanceGroupList
    , riglNextPageToken
    , riglKind
    , riglItems
    , riglSelfLink
    , riglWarning
    , riglId

    -- * SubnetworkLogConfig
    , SubnetworkLogConfig
    , subnetworkLogConfig
    , slcMetadataFields
    , slcAggregationInterval
    , slcEnable
    , slcFilterExpr
    , slcMetadata
    , slcFlowSampling

    -- * VMEndpointNATMAppingsListWarning
    , VMEndpointNATMAppingsListWarning
    , vMEndpointNATMAppingsListWarning
    , vmenatmalwData
    , vmenatmalwCode
    , vmenatmalwMessage

    -- * HealthCheckServicesListWarning
    , HealthCheckServicesListWarning
    , healthCheckServicesListWarning
    , hcslwData
    , hcslwCode
    , hcslwMessage

    -- * SSLCertificateAggregatedListWarning
    , SSLCertificateAggregatedListWarning
    , sslCertificateAggregatedListWarning
    , scalwData
    , scalwCode
    , scalwMessage

    -- * ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , resourcePolicyResourceStatusInstanceSchedulePolicyStatus
    , rprsispsNextRunStartTime
    , rprsispsLastRunStartTime

    -- * TargetPoolAggregatedListItems
    , TargetPoolAggregatedListItems
    , targetPoolAggregatedListItems
    , tpaliAddtional

    -- * ResourcePoliciesScopedListWarningCode
    , ResourcePoliciesScopedListWarningCode (..)

    -- * PublicDelegatedPrefixesScopedListWarningDataItem
    , PublicDelegatedPrefixesScopedListWarningDataItem
    , publicDelegatedPrefixesScopedListWarningDataItem
    , pdpslwdiValue
    , pdpslwdiKey

    -- * ResourcePoliciesScopedListWarningDataItem
    , ResourcePoliciesScopedListWarningDataItem
    , resourcePoliciesScopedListWarningDataItem
    , rpslwdiValue
    , rpslwdiKey

    -- * NodeGroupsAddNodesRequest
    , NodeGroupsAddNodesRequest
    , nodeGroupsAddNodesRequest
    , nganrAdditionalNodeCount

    -- * NodeTypeAggregatedList
    , NodeTypeAggregatedList
    , nodeTypeAggregatedList
    , ntalUnreachables
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

    -- * HealthChecksScopedListWarning
    , HealthChecksScopedListWarning
    , healthChecksScopedListWarning
    , hData
    , hCode
    , hMessage

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

    -- * InstanceGroupManagersListPerInstanceConfigsResp
    , InstanceGroupManagersListPerInstanceConfigsResp
    , instanceGroupManagersListPerInstanceConfigsResp
    , igmlpicrNextPageToken
    , igmlpicrItems
    , igmlpicrWarning

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

    -- * FileContentBuffer
    , FileContentBuffer
    , fileContentBuffer
    , fcbFileType
    , fcbContent

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
    , vtalUnreachables
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
    , adDiskSizeGb
    , adDiskEncryptionKey
    , adKind
    , adMode
    , adGuestOSFeatures
    , adShieldedInstanceInitialState
    , adBoot
    , adAutoDelete
    , adInitializeParams
    , adDeviceName
    , adInterface
    , adSource
    , adLicenses
    , adType
    , adIndex

    -- * HTTPFaultDelay
    , HTTPFaultDelay
    , hTTPFaultDelay
    , httpfdPercentage
    , httpfdFixedDelay

    -- * HTTPHealthCheckListWarningDataItem
    , HTTPHealthCheckListWarningDataItem
    , hTTPHealthCheckListWarningDataItem
    , httphclwdiValue
    , httphclwdiKey

    -- * BackendServiceCdnPolicyCacheMode
    , BackendServiceCdnPolicyCacheMode (..)

    -- * InterconnectAttachmentOperationalStatus
    , InterconnectAttachmentOperationalStatus (..)

    -- * ExchangedPeeringRoutesListWarning
    , ExchangedPeeringRoutesListWarning
    , exchangedPeeringRoutesListWarning
    , eprlwData
    , eprlwCode
    , eprlwMessage

    -- * ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    , ResourcePolicySnapshotSchedulePolicyRetentionPolicy
    , resourcePolicySnapshotSchedulePolicyRetentionPolicy
    , rpssprpMaxRetentionDays
    , rpssprpOnSourceDiskDelete

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

    -- * ReservationsScopedList
    , ReservationsScopedList
    , reservationsScopedList
    , rslsWarning
    , rslsReservations

    -- * SubnetworkLogConfigAggregationInterval
    , SubnetworkLogConfigAggregationInterval (..)

    -- * TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- * TargetTCPProxyListWarningDataItem
    , TargetTCPProxyListWarningDataItem
    , targetTCPProxyListWarningDataItem
    , ttplwdiValue
    , ttplwdiKey

    -- * GuestAttributes
    , GuestAttributes
    , guestAttributes
    , gaKind
    , gaVariableKey
    , gaSelfLink
    , gaQueryPath
    , gaVariableValue
    , gaQueryValue

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
    , nodUnreachables
    , nodNextPageToken
    , nodKind
    , nodItems
    , nodSelfLink
    , nodWarning
    , nodId

    -- * ExternalVPNGatewayList
    , ExternalVPNGatewayList
    , externalVPNGatewayList
    , evglEtag
    , evglNextPageToken
    , evglKind
    , evglItems
    , evglSelfLink
    , evglWarning
    , evglId

    -- * VPNGatewayAggregatedList
    , VPNGatewayAggregatedList
    , vpnGatewayAggregatedList
    , vgalUnreachables
    , vgalNextPageToken
    , vgalKind
    , vgalItems
    , vgalSelfLink
    , vgalWarning
    , vgalId

    -- * InterconnectLocationListWarning
    , InterconnectLocationListWarning
    , interconnectLocationListWarning
    , illwData
    , illwCode
    , illwMessage

    -- * InstancesGetEffectiveFirewallsResponse
    , InstancesGetEffectiveFirewallsResponse
    , instancesGetEffectiveFirewallsResponse
    , igefrFirewallPolicys
    , igefrFirewalls

    -- * InstanceGroupsListInstancesWarning
    , InstanceGroupsListInstancesWarning
    , instanceGroupsListInstancesWarning
    , igliwData
    , igliwCode
    , igliwMessage

    -- * PublicDelegatedPrefixesScopedListWarningCode
    , PublicDelegatedPrefixesScopedListWarningCode (..)

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

    -- * PreservedStatePreservedDisk
    , PreservedStatePreservedDisk
    , preservedStatePreservedDisk
    , pspdMode
    , pspdAutoDelete
    , pspdSource

    -- * SecurityPolicyAdvancedOptionsConfigJSONParsing
    , SecurityPolicyAdvancedOptionsConfigJSONParsing (..)

    -- * LogConfigCloudAuditOptions
    , LogConfigCloudAuditOptions
    , logConfigCloudAuditOptions
    , lccaoAuthorizationLoggingOptions
    , lccaoLogName

    -- * ImageListWarningCode
    , ImageListWarningCode (..)

    -- * ResourcePolicyAggregatedListWarningDataItem
    , ResourcePolicyAggregatedListWarningDataItem
    , resourcePolicyAggregatedListWarningDataItem
    , rpalwdiValue
    , rpalwdiKey

    -- * AddressStatus
    , AddressStatus (..)

    -- * ProjectsSetDefaultNetworkTierRequest
    , ProjectsSetDefaultNetworkTierRequest
    , projectsSetDefaultNetworkTierRequest
    , psdntrNetworkTier

    -- * ResourcePolicyAggregatedListWarningCode
    , ResourcePolicyAggregatedListWarningCode (..)

    -- * ImageListWarningDataItem
    , ImageListWarningDataItem
    , imageListWarningDataItem
    , imaValue
    , imaKey

    -- * SecurityPolicyAdvancedOptionsConfig
    , SecurityPolicyAdvancedOptionsConfig
    , securityPolicyAdvancedOptionsConfig
    , spaocLogLevel
    , spaocJSONParsing

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
    , dtalUnreachables
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

    -- * URLMapsScopedListWarning
    , URLMapsScopedListWarning
    , urlMapsScopedListWarning
    , umslwData
    , umslwCode
    , umslwMessage

    -- * RouterNATSubnetworkToNAT
    , RouterNATSubnetworkToNAT
    , routerNATSubnetworkToNAT
    , rnatstnatSourceIPRangesToNAT
    , rnatstnatName
    , rnatstnatSecondaryIPRangeNames

    -- * BackendServiceGroupHealth
    , BackendServiceGroupHealth
    , backendServiceGroupHealth
    , bsghAnnotations
    , bsghKind
    , bsghHealthStatus

    -- * URLMapListWarningCode
    , URLMapListWarningCode (..)

    -- * InstanceGroupsListInstancesRequestInstanceState
    , InstanceGroupsListInstancesRequestInstanceState (..)

    -- * WafExpressionSetExpression
    , WafExpressionSetExpression
    , wafExpressionSetExpression
    , weseId

    -- * VPNGatewayStatusVPNConnection
    , VPNGatewayStatusVPNConnection
    , vpnGatewayStatusVPNConnection
    , vgsvcState
    , vgsvcPeerExternalGateway
    , vgsvcTunnels
    , vgsvcPeerGcpGateway

    -- * AutoscalersScopedList
    , AutoscalersScopedList
    , autoscalersScopedList
    , aAutoscalers
    , aWarning

    -- * SecurityPoliciesWafConfig
    , SecurityPoliciesWafConfig
    , securityPoliciesWafConfig
    , spwcWafRules

    -- * LogConfigDataAccessOptions
    , LogConfigDataAccessOptions
    , logConfigDataAccessOptions
    , lcdaoLogMode

    -- * AutoscalerAggregatedList
    , AutoscalerAggregatedList
    , autoscalerAggregatedList
    , aalUnreachables
    , aalNextPageToken
    , aalKind
    , aalItems
    , aalSelfLink
    , aalWarning
    , aalId

    -- * RouterAggregatedListItems
    , RouterAggregatedListItems
    , routerAggregatedListItems
    , rAddtional

    -- * AcceleratorTypesScopedListWarning
    , AcceleratorTypesScopedListWarning
    , acceleratorTypesScopedListWarning
    , atslwData
    , atslwCode
    , atslwMessage

    -- * PublicDelegatedPrefixListWarning
    , PublicDelegatedPrefixListWarning
    , publicDelegatedPrefixListWarning
    , pdplwData
    , pdplwCode
    , pdplwMessage

    -- * TargetTCPProxy
    , TargetTCPProxy
    , targetTCPProxy
    , ttpService
    , ttpProxyBind
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

    -- * NetworkEndpointGroupCloudRun
    , NetworkEndpointGroupCloudRun
    , networkEndpointGroupCloudRun
    , negcrTag
    , negcrService
    , negcrURLMask

    -- * ProjectDefaultNetworkTier
    , ProjectDefaultNetworkTier (..)

    -- * ImageLabels
    , ImageLabels
    , imageLabels
    , iAddtional

    -- * PublicDelegatedPrefixAggregatedListWarningDataItem
    , PublicDelegatedPrefixAggregatedListWarningDataItem
    , publicDelegatedPrefixAggregatedListWarningDataItem
    , pdpalwdiValue
    , pdpalwdiKey

    -- * NodeGroupListWarningCode
    , NodeGroupListWarningCode (..)

    -- * DistributionPolicy
    , DistributionPolicy
    , distributionPolicy
    , dpZones
    , dpTargetShape

    -- * PublicDelegatedPrefixAggregatedListWarningCode
    , PublicDelegatedPrefixAggregatedListWarningCode (..)

    -- * RouterNATSourceSubnetworkIPRangesToNAT
    , RouterNATSourceSubnetworkIPRangesToNAT (..)

    -- * RegionInstanceGroupManagersListInstanceConfigsRespWarning
    , RegionInstanceGroupManagersListInstanceConfigsRespWarning
    , regionInstanceGroupManagersListInstanceConfigsRespWarning
    , rigmlicrwData
    , rigmlicrwCode
    , rigmlicrwMessage

    -- * NodeGroupListWarningDataItem
    , NodeGroupListWarningDataItem
    , nodeGroupListWarningDataItem
    , nglwdiValue
    , nglwdiKey

    -- * HTTPSHealthCheckProxyHeader
    , HTTPSHealthCheckProxyHeader (..)

    -- * LicenseResourceCommitment
    , LicenseResourceCommitment
    , licenseResourceCommitment
    , lrcCoresPerLicense
    , lrcAmount
    , lrcLicense

    -- * PacketMirroringMirroredResourceInfoInstanceInfo
    , PacketMirroringMirroredResourceInfoInstanceInfo
    , packetMirroringMirroredResourceInfoInstanceInfo
    , pmmriiiURL
    , pmmriiiCanonicalURL

    -- * AutoscalingPolicy
    , AutoscalingPolicy
    , autoscalingPolicy
    , apScaleInControl
    , apMode
    , apScalingSchedules
    , apCustomMetricUtilizations
    , apMaxNumReplicas
    , apCPUUtilization
    , apLoadBalancingUtilization
    , apMinNumReplicas
    , apCoolDownPeriodSec

    -- * PacketMirroringForwardingRuleInfo
    , PacketMirroringForwardingRuleInfo
    , packetMirroringForwardingRuleInfo
    , pmfriURL
    , pmfriCanonicalURL

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

    -- * AutoscalingPolicyScaleInControl
    , AutoscalingPolicyScaleInControl
    , autoscalingPolicyScaleInControl
    , apsicTimeWindowSec
    , apsicMaxScaledInReplicas

    -- * VPNGatewayList
    , VPNGatewayList
    , vpnGatewayList
    , vglNextPageToken
    , vglKind
    , vglItems
    , vglSelfLink
    , vglWarning
    , vglId

    -- * ManagedInstanceInstanceHealthDetailedHealthState
    , ManagedInstanceInstanceHealthDetailedHealthState (..)

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

    -- * DisksAddResourcePoliciesRequest
    , DisksAddResourcePoliciesRequest
    , disksAddResourcePoliciesRequest
    , darprResourcePolicies

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

    -- * ResourcePolicyListWarning
    , ResourcePolicyListWarning
    , resourcePolicyListWarning
    , rplwData
    , rplwCode
    , rplwMessage

    -- * InstanceGroupManagerStatusVersionTarget
    , InstanceGroupManagerStatusVersionTarget
    , instanceGroupManagerStatusVersionTarget
    , igmsvtIsReached

    -- * NetworkEndpointGroup
    , NetworkEndpointGroup
    , networkEndpointGroup
    , negAnnotations
    , negSize
    , negKind
    , negCloudRun
    , negNetwork
    , negZone
    , negSelfLink
    , negName
    , negAppEngine
    , negCreationTimestamp
    , negDefaultPort
    , negSubnetwork
    , negNetworkEndpointType
    , negId
    , negRegion
    , negCloudFunction
    , negDescription

    -- * TargetHTTPProxyAggregatedList
    , TargetHTTPProxyAggregatedList
    , targetHTTPProxyAggregatedList
    , thttppalUnreachables
    , thttppalNextPageToken
    , thttppalKind
    , thttppalItems
    , thttppalSelfLink
    , thttppalId

    -- * NetworkEndpointGroupsListNetworkEndpointsWarningCode
    , NetworkEndpointGroupsListNetworkEndpointsWarningCode (..)

    -- * Subnetwork
    , Subnetwork
    , subnetwork
    , subExternalIPv6Prefix
    , subState
    , subKind
    , subFingerprint
    , subNetwork
    , subStackType
    , subGatewayAddress
    , subPurpose
    , subRole
    , subSelfLink
    , subEnableFlowLogs
    , subName
    , subSecondaryIPRanges
    , subCreationTimestamp
    , subIPCIdRRange
    , subIPv6CIdRRange
    , subIPv6AccessType
    , subId
    , subRegion
    , subLogConfig
    , subDescription
    , subPrivateIPGoogleAccess
    , subPrivateIPv6GoogleAccess

    -- * HealthCheckListWarning
    , HealthCheckListWarning
    , healthCheckListWarning
    , hclwData
    , hclwCode
    , hclwMessage

    -- * MachineTypeAggregatedList
    , MachineTypeAggregatedList
    , machineTypeAggregatedList
    , mtalUnreachables
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

    -- * ResourcePolicyWeeklyCycleDayOfWeek
    , ResourcePolicyWeeklyCycleDayOfWeek
    , resourcePolicyWeeklyCycleDayOfWeek
    , rpwcdowStartTime
    , rpwcdowDay
    , rpwcdowDuration

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

    -- * PublicAdvertisedPrefixListWarning
    , PublicAdvertisedPrefixListWarning
    , publicAdvertisedPrefixListWarning
    , paplwData
    , paplwCode
    , paplwMessage

    -- * ExternalVPNGatewayListWarning
    , ExternalVPNGatewayListWarning
    , externalVPNGatewayListWarning
    , evglwData
    , evglwCode
    , evglwMessage

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

    -- * ReservationsScopedListWarning
    , ReservationsScopedListWarning
    , reservationsScopedListWarning
    , resData
    , resCode
    , resMessage

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

    -- * BackendServiceFailoverPolicy
    , BackendServiceFailoverPolicy
    , backendServiceFailoverPolicy
    , bsfpDisableConnectionDrainOnFailover
    , bsfpDropTrafficIfUnhealthy
    , bsfpFailoverRatio

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

    -- * RouterBGPPeerEnable
    , RouterBGPPeerEnable (..)

    -- * AutoscalerAggregatedListWarningCode
    , AutoscalerAggregatedListWarningCode (..)

    -- * FirewallLogConfigMetadata
    , FirewallLogConfigMetadata (..)

    -- * InstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction
    , InstanceGroupManagersApplyUpdatesRequestMostDisruptiveAllowedAction (..)

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

    -- * ExternalVPNGateway
    , ExternalVPNGateway
    , externalVPNGateway
    , evgKind
    , evgInterfaces
    , evgRedundancyType
    , evgSelfLink
    , evgName
    , evgCreationTimestamp
    , evgId
    , evgLabels
    , evgLabelFingerprint
    , evgDescription

    -- * NodeTemplateListWarningDataItem
    , NodeTemplateListWarningDataItem
    , nodeTemplateListWarningDataItem
    , nodValue
    , nodKey

    -- * InstanceGroupManagerUpdatePolicyReplacementMethod
    , InstanceGroupManagerUpdatePolicyReplacementMethod (..)

    -- * VPNGatewayListWarningDataItem
    , VPNGatewayListWarningDataItem
    , vpnGatewayListWarningDataItem
    , vglwdiValue
    , vglwdiKey

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

    -- * ExchangedPeeringRoutesList
    , ExchangedPeeringRoutesList
    , exchangedPeeringRoutesList
    , eprlNextPageToken
    , eprlKind
    , eprlItems
    , eprlSelfLink
    , eprlWarning
    , eprlId

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

    -- * AllocationSpecificSKUReservation
    , AllocationSpecificSKUReservation
    , allocationSpecificSKUReservation
    , asskurInUseCount
    , asskurInstanceProperties
    , asskurCount

    -- * NodeTemplateListWarningCode
    , NodeTemplateListWarningCode (..)

    -- * VMEndpointNATMAppingsInterfaceNATMAppings
    , VMEndpointNATMAppingsInterfaceNATMAppings
    , vMEndpointNATMAppingsInterfaceNATMAppings
    , vmenatmainatmaDrainNATIPPortRanges
    , vmenatmainatmaSourceAliasIPRange
    , vmenatmainatmaNumTotalDrainNATPorts
    , vmenatmainatmaSourceVirtualIP
    , vmenatmainatmaNATIPPortRanges
    , vmenatmainatmaNumTotalNATPorts

    -- * VPNTunnelAggregatedListWarning
    , VPNTunnelAggregatedListWarning
    , vpnTunnelAggregatedListWarning
    , vtalwData
    , vtalwCode
    , vtalwMessage

    -- * InstanceGroupManagersListPerInstanceConfigsRespWarning
    , InstanceGroupManagersListPerInstanceConfigsRespWarning
    , instanceGroupManagersListPerInstanceConfigsRespWarning
    , igmlpicrwData
    , igmlpicrwCode
    , igmlpicrwMessage

    -- * TargetHTTPProxy
    , TargetHTTPProxy
    , targetHTTPProxy
    , thttppURLMap
    , thttppProxyBind
    , thttppKind
    , thttppFingerprint
    , thttppSelfLink
    , thttppName
    , thttppCreationTimestamp
    , thttppId
    , thttppRegion
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
    , mtAccelerators
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

    -- * VPNGatewayListWarningCode
    , VPNGatewayListWarningCode (..)

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

    -- * LocationPolicy
    , LocationPolicy
    , locationPolicy
    , lpLocations

    -- * Int64RangeMatch
    , Int64RangeMatch
    , int64RangeMatch
    , irmRangeStart
    , irmRangeEnd

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

    -- * SSLCertificateManagedSSLCertificate
    , SSLCertificateManagedSSLCertificate
    , sslCertificateManagedSSLCertificate
    , scmscDomainStatus
    , scmscStatus
    , scmscDomains

    -- * NetworkEndpointGroupAggregatedList
    , NetworkEndpointGroupAggregatedList
    , networkEndpointGroupAggregatedList
    , negalUnreachables
    , negalNextPageToken
    , negalKind
    , negalItems
    , negalSelfLink
    , negalWarning
    , negalId

    -- * SubnetworkAggregatedList
    , SubnetworkAggregatedList
    , subnetworkAggregatedList
    , salUnreachables
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

    -- * HealthChecksScopedList
    , HealthChecksScopedList
    , healthChecksScopedList
    , hcslWarning
    , hcslHealthChecks

    -- * AutoscalersScopedListWarningDataItem
    , AutoscalersScopedListWarningDataItem
    , autoscalersScopedListWarningDataItem
    , aValue
    , aKey

    -- * DisksRemoveResourcePoliciesRequest
    , DisksRemoveResourcePoliciesRequest
    , disksRemoveResourcePoliciesRequest
    , drrprResourcePolicies

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

    -- * AttachedDiskInitializeParamsOnUpdateAction
    , AttachedDiskInitializeParamsOnUpdateAction (..)

    -- * AutoscalersScopedListWarningCode
    , AutoscalersScopedListWarningCode (..)

    -- * HTTPSHealthCheckPortSpecification
    , HTTPSHealthCheckPortSpecification (..)

    -- * VPNGatewayAggregatedListWarning
    , VPNGatewayAggregatedListWarning
    , vpnGatewayAggregatedListWarning
    , vgalwData
    , vgalwCode
    , vgalwMessage

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

    -- * AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , allocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk
    , asskuaaiprdDiskSizeGb
    , asskuaaiprdInterface

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
    , aaScalingScheduleStatus
    , aaSelfLink
    , aaName
    , aaCreationTimestamp
    , aaAutoscalingPolicy
    , aaId
    , aaRegion
    , aaRecommendedSize
    , aaDescription
    , aaTarget

    -- * ConsistentHashLoadBalancerSettings
    , ConsistentHashLoadBalancerSettings
    , consistentHashLoadBalancerSettings
    , chlbsMinimumRingSize
    , chlbsHTTPCookie
    , chlbsHTTPHeaderName

    -- * SubnetworkState
    , SubnetworkState (..)

    -- * VPNGatewayVPNGatewayInterface
    , VPNGatewayVPNGatewayInterface
    , vpnGatewayVPNGatewayInterface
    , vgvgiIPAddress
    , vgvgiId
    , vgvgiInterconnectAttachment

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

    -- * ResourcePoliciesScopedList
    , ResourcePoliciesScopedList
    , resourcePoliciesScopedList
    , rpslResourcePolicies
    , rpslWarning

    -- * PacketMirroringEnable
    , PacketMirroringEnable (..)

    -- * TargetPoolAggregatedListWarning
    , TargetPoolAggregatedListWarning
    , targetPoolAggregatedListWarning
    , tpalwData
    , tpalwCode
    , tpalwMessage

    -- * HTTPQueryParameterMatch
    , HTTPQueryParameterMatch
    , hTTPQueryParameterMatch
    , httpqpmName
    , httpqpmPresentMatch
    , httpqpmExactMatch
    , httpqpmRegexMatch

    -- * ReservationListWarning
    , ReservationListWarning
    , reservationListWarning
    , rrData
    , rrCode
    , rrMessage

    -- * UsableSubnetworksAggregatedListWarning
    , UsableSubnetworksAggregatedListWarning
    , usableSubnetworksAggregatedListWarning
    , usalwData
    , usalwCode
    , usalwMessage

    -- * ReservationsResizeRequest
    , ReservationsResizeRequest
    , reservationsResizeRequest
    , rrrSpecificSKUCount

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

    -- * HTTPRedirectActionRedirectResponseCode
    , HTTPRedirectActionRedirectResponseCode (..)

    -- * ReservationAggregatedListWarningDataItem
    , ReservationAggregatedListWarningDataItem
    , reservationAggregatedListWarningDataItem
    , resValue
    , resKey

    -- * SSLCertificateAggregatedListItems
    , SSLCertificateAggregatedListItems
    , sslCertificateAggregatedListItems
    , scaliAddtional

    -- * InterconnectInterconnectType
    , InterconnectInterconnectType (..)

    -- * MetadataFilterLabelMatch
    , MetadataFilterLabelMatch
    , metadataFilterLabelMatch
    , mflmValue
    , mflmName

    -- * ForwardingRuleAggregatedListWarning
    , ForwardingRuleAggregatedListWarning
    , forwardingRuleAggregatedListWarning
    , fralwData
    , fralwCode
    , fralwMessage

    -- * ReservationAggregatedListWarningCode
    , ReservationAggregatedListWarningCode (..)

    -- * ExternalVPNGatewayInterface
    , ExternalVPNGatewayInterface
    , externalVPNGatewayInterface
    , evgiIPAddress
    , evgiId

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
    , hsAnnotations
    , hsForwardingRuleIP
    , hsIPAddress
    , hsForwardingRule
    , hsWeight
    , hsWeightError
    , hsHealthState
    , hsPort
    , hsInstance

    -- * VPNGatewaysScopedListWarningDataItem
    , VPNGatewaysScopedListWarningDataItem
    , vpnGatewaysScopedListWarningDataItem
    , vgslwdiValue
    , vgslwdiKey

    -- * TargetTCPProxyList
    , TargetTCPProxyList
    , targetTCPProxyList
    , ttplNextPageToken
    , ttplKind
    , ttplItems
    , ttplSelfLink
    , ttplWarning
    , ttplId

    -- * VPNGatewaysScopedListWarningCode
    , VPNGatewaysScopedListWarningCode (..)

    -- * Region
    , Region
    , region
    , regeStatus
    , regeZones
    , regeKind
    , regeSelfLink
    , regeName
    , regeCreationTimestamp
    , regeSupportsPzs
    , regeQuotas
    , regeId
    , regeDescription
    , regeDeprecated

    -- * VPNGateway
    , VPNGateway
    , vpnGateway
    , vgKind
    , vgNetwork
    , vgSelfLink
    , vgName
    , vgCreationTimestamp
    , vgId
    , vgLabels
    , vgRegion
    , vgLabelFingerprint
    , vgDescription
    , vgVPNInterfaces

    -- * RegionAutoscalerListWarningCode
    , RegionAutoscalerListWarningCode (..)

    -- * RequestMirrorPolicy
    , RequestMirrorPolicy
    , requestMirrorPolicy
    , rmpBackendService

    -- * PublicDelegatedPrefixesScopedList
    , PublicDelegatedPrefixesScopedList
    , publicDelegatedPrefixesScopedList
    , pdpslPublicDelegatedPrefixes
    , pdpslWarning

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
    , vtVPNGatewayInterface
    , vtKind
    , vtPeerIP
    , vtRouter
    , vtTargetVPNGateway
    , vtRemoteTrafficSelector
    , vtSelfLink
    , vtSharedSecret
    , vtName
    , vtPeerExternalGateway
    , vtCreationTimestamp
    , vtPeerExternalGatewayInterface
    , vtSharedSecretHash
    , vtId
    , vtIkeVersion
    , vtRegion
    , vtVPNGateway
    , vtPeerGcpGateway
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

    -- * HealthStatusWeightError
    , HealthStatusWeightError (..)

    -- * AliasIPRange
    , AliasIPRange
    , aliasIPRange
    , airIPCIdRRange
    , airSubnetworkRangeName

    -- * LocationPolicyLocation
    , LocationPolicyLocation
    , locationPolicyLocation
    , lplPreference

    -- * ForwardingRuleListWarningCode
    , ForwardingRuleListWarningCode (..)

    -- * SSLCertificateManagedSSLCertificateDomainStatusAdditional
    , SSLCertificateManagedSSLCertificateDomainStatusAdditional (..)

    -- * NodeTypesScopedListWarningDataItem
    , NodeTypesScopedListWarningDataItem
    , nodeTypesScopedListWarningDataItem
    , ntslwditValue
    , ntslwditKey

    -- * VPNTunnelsScopedListWarningCode
    , VPNTunnelsScopedListWarningCode (..)

    -- * ForwardingRuleServiceDirectoryRegistration
    , ForwardingRuleServiceDirectoryRegistration
    , forwardingRuleServiceDirectoryRegistration
    , frsdrService
    , frsdrNamespace
    , frsdrServiceDirectoryRegion

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

    -- * AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface
    , AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface (..)

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

    -- * TargetHTTPProxiesScopedListWarningCode
    , TargetHTTPProxiesScopedListWarningCode (..)

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
    , sMinNodeCPUs
    , sAutomaticRestart
    , sNodeAffinities
    , sOnHostMaintenance
    , sLocationHint
    , sPreemptible

    -- * TargetInstanceAggregatedListWarningCode
    , TargetInstanceAggregatedListWarningCode (..)

    -- * RegionDiskTypeListWarningCode
    , RegionDiskTypeListWarningCode (..)

    -- * InstancePrivateIPv6GoogleAccess
    , InstancePrivateIPv6GoogleAccess (..)

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
    , nttServerBinding
    , nttAccelerators
    , nttName
    , nttStatusMessage
    , nttCreationTimestamp
    , nttNodeAffinityLabels
    , nttId
    , nttNodeTypeFlexibility
    , nttNodeType
    , nttRegion
    , nttDisks
    , nttDescription
    , nttCPUOvercommitType

    -- * NetworksGetEffectiveFirewallsResponse
    , NetworksGetEffectiveFirewallsResponse
    , networksGetEffectiveFirewallsResponse
    , ngefrFirewallPolicys
    , ngefrFirewalls

    -- * NetworkEndpointGroupList
    , NetworkEndpointGroupList
    , networkEndpointGroupList
    , neglNextPageToken
    , neglKind
    , neglItems
    , neglSelfLink
    , neglWarning
    , neglId

    -- * TargetHTTPProxiesScopedListWarningDataItem
    , TargetHTTPProxiesScopedListWarningDataItem
    , targetHTTPProxiesScopedListWarningDataItem
    , thttppslwdiValue
    , thttppslwdiKey

    -- * SubnetworkList
    , SubnetworkList
    , subnetworkList
    , slNextPageToken
    , slKind
    , slItems
    , slSelfLink
    , slWarning
    , slId

    -- * SecurityPolicyAdvancedOptionsConfigLogLevel
    , SecurityPolicyAdvancedOptionsConfigLogLevel (..)

    -- * AddressAddressType
    , AddressAddressType (..)

    -- * TargetPoolListWarningCode
    , TargetPoolListWarningCode (..)

    -- * ForwardingRuleLabels
    , ForwardingRuleLabels
    , forwardingRuleLabels
    , frlAddtional

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

    -- * ResourcePolicySnapshotSchedulePolicy
    , ResourcePolicySnapshotSchedulePolicy
    , resourcePolicySnapshotSchedulePolicy
    , rpsspSchedule
    , rpsspRetentionPolicy
    , rpsspSnapshotProperties

    -- * BulkInsertInstanceResourcePerInstanceProperties
    , BulkInsertInstanceResourcePerInstanceProperties
    , bulkInsertInstanceResourcePerInstanceProperties
    , biirpipName

    -- * TargetHTTPSProxiesScopedListWarningDataItem
    , TargetHTTPSProxiesScopedListWarningDataItem
    , targetHTTPSProxiesScopedListWarningDataItem
    , thpslwdiValue
    , thpslwdiKey

    -- * LocationPolicyLocationPreference
    , LocationPolicyLocationPreference (..)

    -- * NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , networksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
    , ngefrefpRules
    , ngefrefpShortName
    , ngefrefpName
    , ngefrefpDisplayName
    , ngefrefpType

    -- * Commitment
    , Commitment
    , commitment
    , cStatus
    , cKind
    , cCategory
    , cPlan
    , cResources
    , cLicenseResource
    , cEndTimestamp
    , cSelfLink
    , cName
    , cStatusMessage
    , cCreationTimestamp
    , cId
    , cRegion
    , cReservations
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
    , prRouteAction
    , prPaths
    , prURLRedirect

    -- * ScalingScheduleStatusState
    , ScalingScheduleStatusState (..)

    -- * LicenseCodeLicenseAlias
    , LicenseCodeLicenseAlias
    , licenseCodeLicenseAlias
    , lclaSelfLink
    , lclaDescription

    -- * XpnHostListWarningCode
    , XpnHostListWarningCode (..)

    -- * NotificationEndpointListWarningDataItem
    , NotificationEndpointListWarningDataItem
    , notificationEndpointListWarningDataItem
    , nelwdiValue
    , nelwdiKey

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

    -- * FirewallPolicyListWarningCode
    , FirewallPolicyListWarningCode (..)

    -- * StatefulPolicyPreservedState
    , StatefulPolicyPreservedState
    , statefulPolicyPreservedState
    , sppsDisks

    -- * TargetGrpcProxy
    , TargetGrpcProxy
    , targetGrpcProxy
    , tgpURLMap
    , tgpKind
    , tgpValidateForProxyless
    , tgpFingerprint
    , tgpSelfLinkWithId
    , tgpSelfLink
    , tgpName
    , tgpCreationTimestamp
    , tgpId
    , tgpDescription

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcIgnoreChildExemptions
    , alcExemptedMembers

    -- * GuestAttributesEntry
    , GuestAttributesEntry
    , guestAttributesEntry
    , gaeValue
    , gaeNamespace
    , gaeKey

    -- * CommitmentsScopedListWarningDataItem
    , CommitmentsScopedListWarningDataItem
    , commitmentsScopedListWarningDataItem
    , cslwdiValue
    , cslwdiKey

    -- * InterconnectAttachment
    , InterconnectAttachment
    , interconnectAttachment
    , iaMtu
    , iaState
    , iaPartnerASN
    , iaPairingKey
    , iaKind
    , iaCustomerRouterIPAddress
    , iaIPsecInternalAddresses
    , iaPartnerMetadata
    , iaRouter
    , iaOperationalStatus
    , iaDataplaneVersion
    , iaSelfLink
    , iaName
    , iaBandwidth
    , iaEncryption
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

    -- * ResourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , ResourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , resourcePolicySnapshotSchedulePolicySnapshotPropertiesLabels
    , rpsspsplAddtional

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

    -- * TargetHTTPSProxiesScopedListWarningCode
    , TargetHTTPSProxiesScopedListWarningCode (..)

    -- * NetworkPeeringState
    , NetworkPeeringState (..)

    -- * PacketMirroringList
    , PacketMirroringList
    , packetMirroringList
    , pmlNextPageToken
    , pmlKind
    , pmlItems
    , pmlSelfLink
    , pmlWarning
    , pmlId

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

    -- * CommitmentCategory
    , CommitmentCategory (..)

    -- * NotificationEndpointListWarningCode
    , NotificationEndpointListWarningCode (..)

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

    -- * FirewallPoliciesListAssociationsResponse
    , FirewallPoliciesListAssociationsResponse
    , firewallPoliciesListAssociationsResponse
    , fplarKind
    , fplarAssociations

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

    -- * FirewallPolicyListWarningDataItem
    , FirewallPolicyListWarningDataItem
    , firewallPolicyListWarningDataItem
    , fplwdiValue
    , fplwdiKey

    -- * ResourcePolicyWeeklyCycle
    , ResourcePolicyWeeklyCycle
    , resourcePolicyWeeklyCycle
    , rpwcDayOfWeeks

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

    -- * TargetGrpcProxyListWarning
    , TargetGrpcProxyListWarning
    , targetGrpcProxyListWarning
    , tgplwData
    , tgplwCode
    , tgplwMessage

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

    -- * LogConfigCounterOptionsCustomField
    , LogConfigCounterOptionsCustomField
    , logConfigCounterOptionsCustomField
    , lccocfValue
    , lccocfName

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

    -- * PreservedState
    , PreservedState
    , preservedState
    , psMetadata
    , psDisks

    -- * InterconnectLocationStatus
    , InterconnectLocationStatus (..)

    -- * AutoscalingPolicyCPUUtilization
    , AutoscalingPolicyCPUUtilization
    , autoscalingPolicyCPUUtilization
    , apcuUtilizationTarget
    , apcuPredictiveMethod

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

    -- * SubnetworkRole
    , SubnetworkRole (..)

    -- * Duration
    , Duration
    , duration
    , dNanos
    , dSeconds

    -- * PublicDelegatedPrefixStatus
    , PublicDelegatedPrefixStatus (..)

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

    -- * SSLCertificateAggregatedList
    , SSLCertificateAggregatedList
    , sslCertificateAggregatedList
    , scalUnreachables
    , scalNextPageToken
    , scalKind
    , scalItems
    , scalSelfLink
    , scalWarning
    , scalId

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

    -- * HealthCheckServicesList
    , HealthCheckServicesList
    , healthCheckServicesList
    , hNextPageToken
    , hKind
    , hItems
    , hSelfLink
    , hWarning
    , hId

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

    -- * ResourcePolicySnapshotSchedulePolicySnapshotProperties
    , ResourcePolicySnapshotSchedulePolicySnapshotProperties
    , resourcePolicySnapshotSchedulePolicySnapshotProperties
    , rpsspspGuestFlush
    , rpsspspChainName
    , rpsspspStorageLocations
    , rpsspspLabels

    -- * RegionSetLabelsRequest
    , RegionSetLabelsRequest
    , regionSetLabelsRequest
    , rslrLabels
    , rslrLabelFingerprint

    -- * TargetHTTPSProxiesScopedListWarning
    , TargetHTTPSProxiesScopedListWarning
    , targetHTTPSProxiesScopedListWarning
    , thpslwData
    , thpslwCode
    , thpslwMessage

    -- * RouterInterface
    , RouterInterface
    , routerInterface
    , riLinkedInterconnectAttachment
    , riName
    , riManagementType
    , riIPRange
    , riLinkedVPNTunnel

    -- * ResourcePolicyWeeklyCycleDayOfWeekDay
    , ResourcePolicyWeeklyCycleDayOfWeekDay (..)

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
    , sllNextPageToken
    , sllKind
    , sllItems
    , sllSelfLink
    , sllWarning
    , sllId

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
    , tfExpectedOutputURL
    , tfExpectedRedirectResponseCode
    , tfPath
    , tfExpectedService
    , tfHeaders
    , tfActualOutputURL
    , tfActualRedirectResponseCode
    , tfHost
    , tfActualService

    -- * NodeGroupAutoscalingPolicyMode
    , NodeGroupAutoscalingPolicyMode (..)

    -- * NotificationEndpointListWarning
    , NotificationEndpointListWarning
    , notificationEndpointListWarning
    , nelwData
    , nelwCode
    , nelwMessage

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

    -- * InstanceGroupManagerStatusStatefulPerInstanceConfigs
    , InstanceGroupManagerStatusStatefulPerInstanceConfigs
    , instanceGroupManagerStatusStatefulPerInstanceConfigs
    , igmsspicAllEffective

    -- * ResourcePolicyStatus
    , ResourcePolicyStatus (..)

    -- * PreservedStateMetadata
    , PreservedStateMetadata
    , preservedStateMetadata
    , psmAddtional

    -- * TargetVPNGatewayAggregatedList
    , TargetVPNGatewayAggregatedList
    , targetVPNGatewayAggregatedList
    , tvgalUnreachables
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

    -- * FirewallPolicyListWarning
    , FirewallPolicyListWarning
    , firewallPolicyListWarning
    , fplwData
    , fplwCode
    , fplwMessage

    -- * MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiValue
    , miiKey

    -- * InstancesAddResourcePoliciesRequest
    , InstancesAddResourcePoliciesRequest
    , instancesAddResourcePoliciesRequest
    , iarprResourcePolicies

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
    , thpProxyBind
    , thpKind
    , thpFingerprint
    , thpServerTLSPolicy
    , thpSelfLink
    , thpName
    , thpCreationTimestamp
    , thpId
    , thpRegion
    , thpAuthorizationPolicy
    , thpDescription

    -- * ConnectionDraining
    , ConnectionDraining
    , connectionDraining
    , cdDrainingTimeoutSec

    -- * ResourcePolicyInstanceSchedulePolicy
    , ResourcePolicyInstanceSchedulePolicy
    , resourcePolicyInstanceSchedulePolicy
    , rpispStartTime
    , rpispVMStartSchedule
    , rpispVMStopSchedule
    , rpispTimeZone
    , rpispExpirationTime

    -- * URLMapTestHeader
    , URLMapTestHeader
    , urlMapTestHeader
    , umthValue
    , umthName

    -- * InterconnectAttachmentListWarningDataItem
    , InterconnectAttachmentListWarningDataItem
    , interconnectAttachmentListWarningDataItem
    , ialwdiValue
    , ialwdiKey

    -- * VPNGatewayStatusHighAvailabilityRequirementStateUnsatisfiedReason
    , VPNGatewayStatusHighAvailabilityRequirementStateUnsatisfiedReason (..)

    -- * AddressAggregatedListWarningCode
    , AddressAggregatedListWarningCode (..)

    -- * CacheInvalidationRule
    , CacheInvalidationRule
    , cacheInvalidationRule
    , cirPath
    , cirHost

    -- * SSLCertificatesScopedList
    , SSLCertificatesScopedList
    , sslCertificatesScopedList
    , scslSSLCertificates
    , scslWarning

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

    -- * PublicAdvertisedPrefixStatus
    , PublicAdvertisedPrefixStatus (..)

    -- * AccessConfig
    , AccessConfig
    , accessConfig
    , acNetworkTier
    , acExternalIPv6
    , acSetPublicPtr
    , acKind
    , acExternalIPv6PrefixLength
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

    -- * TargetGrpcProxyListWarningCode
    , TargetGrpcProxyListWarningCode (..)

    -- * TargetGrpcProxyListWarningDataItem
    , TargetGrpcProxyListWarningDataItem
    , targetGrpcProxyListWarningDataItem
    , tgplwdiValue
    , tgplwdiKey

    -- * NodeGroupNodeCPUOvercommitType
    , NodeGroupNodeCPUOvercommitType (..)

    -- * ZoneListWarning
    , ZoneListWarning
    , zoneListWarning
    , zlwData
    , zlwCode
    , zlwMessage

    -- * InstancesUpdateMinimalAction
    , InstancesUpdateMinimalAction (..)

    -- * RouterNATLogConfig
    , RouterNATLogConfig
    , routerNATLogConfig
    , rnatlcEnable
    , rnatlcFilter

    -- * ManagedInstanceLastAttemptErrorsErrorsItem
    , ManagedInstanceLastAttemptErrorsErrorsItem
    , managedInstanceLastAttemptErrorsErrorsItem
    , milaeeiLocation
    , milaeeiCode
    , milaeeiMessage

    -- * ReservationAffinityConsumeReservationType
    , ReservationAffinityConsumeReservationType (..)

    -- * InstancesScopedListWarningCode
    , InstancesScopedListWarningCode (..)

    -- * InstancesScopedListWarningDataItem
    , InstancesScopedListWarningDataItem
    , instancesScopedListWarningDataItem
    , islwdiValue
    , islwdiKey

    -- * PacketMirroringNetworkInfo
    , PacketMirroringNetworkInfo
    , packetMirroringNetworkInfo
    , pmniURL
    , pmniCanonicalURL

    -- * SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , slAddtional

    -- * InstancePropertiesPrivateIPv6GoogleAccess
    , InstancePropertiesPrivateIPv6GoogleAccess (..)

    -- * SSLCertificateManagedSSLCertificateStatus
    , SSLCertificateManagedSSLCertificateStatus (..)

    -- * ManagedInstanceInstanceHealth
    , ManagedInstanceInstanceHealth
    , managedInstanceInstanceHealth
    , miihHealthCheck
    , miihDetailedHealthState

    -- * HealthChecksAggregatedListWarningCode
    , HealthChecksAggregatedListWarningCode (..)

    -- * BackendServicesScopedListWarningDataItem
    , BackendServicesScopedListWarningDataItem
    , backendServicesScopedListWarningDataItem
    , bsslwdiValue
    , bsslwdiKey

    -- * PacketMirroringAggregatedListWarningDataItem
    , PacketMirroringAggregatedListWarningDataItem
    , packetMirroringAggregatedListWarningDataItem
    , pmalwdiValue
    , pmalwdiKey

    -- * NodeTemplateAggregatedListItems
    , NodeTemplateAggregatedListItems
    , nodeTemplateAggregatedListItems
    , ntaliAddtional

    -- * HealthChecksAggregatedListWarningDataItem
    , HealthChecksAggregatedListWarningDataItem
    , healthChecksAggregatedListWarningDataItem
    , hcalwdiValue
    , hcalwdiKey

    -- * RegionInstanceGroupManagerDeleteInstanceConfigReq
    , RegionInstanceGroupManagerDeleteInstanceConfigReq
    , regionInstanceGroupManagerDeleteInstanceConfigReq
    , rigmdicrNames

    -- * InstanceGroupManagersApplyUpdatesRequest
    , InstanceGroupManagersApplyUpdatesRequest
    , instanceGroupManagersApplyUpdatesRequest
    , igmaurAllInstances
    , igmaurMostDisruptiveAllowedAction
    , igmaurInstances
    , igmaurMinimalAction

    -- * BackendService
    , BackendService
    , backendService
    , bsSessionAffinity
    , bsFailoverPolicy
    , bsBackends
    , bsLocalityLbPolicy
    , bsAffinityCookieTtlSec
    , bsConsistentHash
    , bsIap
    , bsLoadBalancingScheme
    , bsKind
    , bsEnableCDN
    , bsCircuitBreakers
    , bsFingerprint
    , bsSecuritySettings
    , bsOutlierDetection
    , bsNetwork
    , bsProtocol
    , bsCustomRequestHeaders
    , bsSecurityPolicy
    , bsCdnPolicy
    , bsCustomResponseHeaders
    , bsSelfLink
    , bsName
    , bsCreationTimestamp
    , bsId
    , bsRegion
    , bsMaxStreamDuration
    , bsConnectionDraining
    , bsTimeoutSec
    , bsLogConfig
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

    -- * InstanceManagedByIgmErrorInstanceActionDetails
    , InstanceManagedByIgmErrorInstanceActionDetails
    , instanceManagedByIgmErrorInstanceActionDetails
    , imbieiadAction
    , imbieiadVersion
    , imbieiadInstance

    -- * RegionTargetHTTPSProxiesSetSSLCertificatesRequest
    , RegionTargetHTTPSProxiesSetSSLCertificatesRequest
    , regionTargetHTTPSProxiesSetSSLCertificatesRequest
    , rthpsscrSSLCertificates

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

    -- * SSLCertificateManagedSSLCertificateDomainStatus
    , SSLCertificateManagedSSLCertificateDomainStatus
    , sslCertificateManagedSSLCertificateDomainStatus
    , scmscdsAddtional

    -- * PreservedStatePreservedDiskMode
    , PreservedStatePreservedDiskMode (..)

    -- * BackendServicesScopedListWarningCode
    , BackendServicesScopedListWarningCode (..)

    -- * PacketMirroringAggregatedListWarningCode
    , PacketMirroringAggregatedListWarningCode (..)

    -- * CommitmentList
    , CommitmentList
    , commitmentList
    , clNextPageToken
    , clKind
    , clItems
    , clSelfLink
    , clWarning
    , clId

    -- * PacketMirroringListWarning
    , PacketMirroringListWarning
    , packetMirroringListWarning
    , pmlwData
    , pmlwCode
    , pmlwMessage

    -- * FirewallPolicyRuleMatcherLayer4Config
    , FirewallPolicyRuleMatcherLayer4Config
    , firewallPolicyRuleMatcherLayer4Config
    , fprmlcIPProtocol
    , fprmlcPorts

    -- * TargetPoolSessionAffinity
    , TargetPoolSessionAffinity (..)

    -- * InstanceGroupManagersCreateInstancesRequest
    , InstanceGroupManagersCreateInstancesRequest
    , instanceGroupManagersCreateInstancesRequest
    , igmcirInstances

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

    -- * HTTPHeaderAction
    , HTTPHeaderAction
    , hTTPHeaderAction
    , httphaResponseHeadersToAdd
    , httphaRequestHeadersToRemove
    , httphaRequestHeadersToAdd
    , httphaResponseHeadersToRemove

    -- * AutoscalerStatus
    , AutoscalerStatus (..)

    -- * ImageRawDiskContainerType
    , ImageRawDiskContainerType (..)

    -- * TargetGrpcProxyList
    , TargetGrpcProxyList
    , targetGrpcProxyList
    , tgplNextPageToken
    , tgplKind
    , tgplItems
    , tgplSelfLink
    , tgplWarning
    , tgplId

    -- * AutoscalerScalingScheduleStatus
    , AutoscalerScalingScheduleStatus
    , autoscalerScalingScheduleStatus
    , asssAddtional

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

    -- * RegionInstanceGroupManagerUpdateInstanceConfigReq
    , RegionInstanceGroupManagerUpdateInstanceConfigReq
    , regionInstanceGroupManagerUpdateInstanceConfigReq
    , rigmuicrPerInstanceConfigs

    -- * Tags
    , Tags
    , tags
    , tFingerprint
    , tItems

    -- * AddressAggregatedList
    , AddressAggregatedList
    , addressAggregatedList
    , addUnreachables
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

    -- * BackendBucketCdnPolicyNegativeCachingPolicy
    , BackendBucketCdnPolicyNegativeCachingPolicy
    , backendBucketCdnPolicyNegativeCachingPolicy
    , bbcpncpTtl
    , bbcpncpCode

    -- * InstanceGroupManagerStatusStateful
    , InstanceGroupManagerStatusStateful
    , instanceGroupManagerStatusStateful
    , igmssHasStatefulConfig
    , igmssPerInstanceConfigs

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- * AutoscalingPolicyScalingSchedules
    , AutoscalingPolicyScalingSchedules
    , autoscalingPolicyScalingSchedules
    , apssAddtional

    -- * PreConfiguredWafSet
    , PreConfiguredWafSet
    , preConfiguredWafSet
    , pcwsExpressionSets

    -- * Binding
    , Binding
    , binding
    , bBindingId
    , bMembers
    , bRole
    , bCondition

    -- * ForwardingRuleNetworkTier
    , ForwardingRuleNetworkTier (..)

    -- * URLMapTest
    , URLMapTest
    , urlMapTest
    , umtExpectedOutputURL
    , umtExpectedRedirectResponseCode
    , umtPath
    , umtService
    , umtHeaders
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

    -- * PacketMirroringsScopedListWarningDataItem
    , PacketMirroringsScopedListWarningDataItem
    , packetMirroringsScopedListWarningDataItem
    , pmslwdiValue
    , pmslwdiKey

    -- * SSLCertificateType
    , SSLCertificateType (..)

    -- * BackendServiceAggregatedListWarningDataItem
    , BackendServiceAggregatedListWarningDataItem
    , backendServiceAggregatedListWarningDataItem
    , bsalwdiValue
    , bsalwdiKey

    -- * Instance
    , Instance
    , instance'
    , i1AdvancedMachineFeatures
    , i1SatisfiesPzs
    , i1Status
    , i1LastStopTimestamp
    , i1ServiceAccounts
    , i1LastSuspendedTimestamp
    , i1DeletionProtection
    , i1Hostname
    , i1ReservationAffinity
    , i1DisplayDevice
    , i1NetworkInterfaces
    , i1ShieldedInstanceIntegrityPolicy
    , i1Kind
    , i1Fingerprint
    , i1Zone
    , i1ConfidentialInstanceConfig
    , i1CPUPlatform
    , i1ResourcePolicies
    , i1SelfLink
    , i1GuestAccelerators
    , i1LastStartTimestamp
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
    , i1PrivateIPv6GoogleAccess

    -- * NetworkEndpointAnnotations
    , NetworkEndpointAnnotations
    , networkEndpointAnnotations
    , neaAddtional

    -- * PathMatcher
    , PathMatcher
    , pathMatcher
    , pmDefaultRouteAction
    , pmDefaultURLRedirect
    , pmDefaultService
    , pmHeaderAction
    , pmRouteRules
    , pmName
    , pmPathRules
    , pmDescription

    -- * PacketMirroring
    , PacketMirroring
    , packetMirroring
    , pacPriority
    , pacKind
    , pacNetwork
    , pacMirroredResources
    , pacEnable
    , pacCollectorIlb
    , pacSelfLink
    , pacName
    , pacCreationTimestamp
    , pacId
    , pacFilter
    , pacRegion
    , pacDescription

    -- * InstanceGroupManagerUpdatePolicyMinimalAction
    , InstanceGroupManagerUpdatePolicyMinimalAction (..)

    -- * BackendServiceListWarning
    , BackendServiceListWarning
    , backendServiceListWarning
    , bslwData
    , bslwCode
    , bslwMessage

    -- * PacketMirroringsScopedListWarningCode
    , PacketMirroringsScopedListWarningCode (..)

    -- * BackendServiceAggregatedListWarningCode
    , BackendServiceAggregatedListWarningCode (..)

    -- * VPNGatewayAggregatedListItems
    , VPNGatewayAggregatedListItems
    , vpnGatewayAggregatedListItems
    , vgaliAddtional

    -- * AutoscalingPolicyMode
    , AutoscalingPolicyMode (..)
    ) where

import Network.Google.Compute.Types.Product
import Network.Google.Compute.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Compute Engine API. This contains the host and root path used as a starting point for constructing service requests.
computeService :: ServiceConfig
computeService
  = defaultService (ServiceId "compute:v1")
      "compute.googleapis.com"

-- | View and manage your Google Compute Engine resources
computeScope :: Proxy '["https://www.googleapis.com/auth/compute"]
computeScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
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
