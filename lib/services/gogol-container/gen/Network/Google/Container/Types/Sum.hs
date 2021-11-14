{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Container.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Container.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Status of an operation stage. Unset for single-stage operations.
data OperationProgressStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Not set.
    | Pending
      -- ^ @PENDING@
      -- The operation has been created.
    | Running
      -- ^ @RUNNING@
      -- The operation is currently running.
    | Done
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
    | Aborting
      -- ^ @ABORTING@
      -- The operation is aborting.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationProgressStatus

instance FromHttpApiData OperationProgressStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        "ABORTING" -> Right Aborting
        x -> Left ("Unable to parse OperationProgressStatus from: " <> x)

instance ToHttpApiData OperationProgressStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"
        Aborting -> "ABORTING"

instance FromJSON OperationProgressStatus where
    parseJSON = parseJSONText "OperationProgressStatus"

instance ToJSON OperationProgressStatus where
    toJSON = toJSONText

-- | This field is to determine the status of the secondary range
-- programmably.
data UsableSubnetworkSecondaryRangeStatus
    = Unknown
      -- ^ @UNKNOWN@
      -- UNKNOWN is the zero value of the Status enum. It\'s not a valid status.
    | Unused
      -- ^ @UNUSED@
      -- UNUSED denotes that this range is unclaimed by any cluster.
    | InUseService
      -- ^ @IN_USE_SERVICE@
      -- IN_USE_SERVICE denotes that this range is claimed by a cluster for
      -- services. It cannot be used for other clusters.
    | InUseShareablePod
      -- ^ @IN_USE_SHAREABLE_POD@
      -- IN_USE_SHAREABLE_POD denotes this range was created by the network admin
      -- and is currently claimed by a cluster for pods. It can only be used by
      -- other clusters as a pod range.
    | InUseManagedPod
      -- ^ @IN_USE_MANAGED_POD@
      -- IN_USE_MANAGED_POD denotes this range was created by GKE and is claimed
      -- for pods. It cannot be used for other clusters.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsableSubnetworkSecondaryRangeStatus

instance FromHttpApiData UsableSubnetworkSecondaryRangeStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "UNUSED" -> Right Unused
        "IN_USE_SERVICE" -> Right InUseService
        "IN_USE_SHAREABLE_POD" -> Right InUseShareablePod
        "IN_USE_MANAGED_POD" -> Right InUseManagedPod
        x -> Left ("Unable to parse UsableSubnetworkSecondaryRangeStatus from: " <> x)

instance ToHttpApiData UsableSubnetworkSecondaryRangeStatus where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Unused -> "UNUSED"
        InUseService -> "IN_USE_SERVICE"
        InUseShareablePod -> "IN_USE_SHAREABLE_POD"
        InUseManagedPod -> "IN_USE_MANAGED_POD"

instance FromJSON UsableSubnetworkSecondaryRangeStatus where
    parseJSON = parseJSONText "UsableSubnetworkSecondaryRangeStatus"

instance ToJSON UsableSubnetworkSecondaryRangeStatus where
    toJSON = toJSONText

-- | The resource type of the release version.
data UpgradeAvailableEventResourceType
    = UAERTUpgradeResourceTypeUnspecified
      -- ^ @UPGRADE_RESOURCE_TYPE_UNSPECIFIED@
      -- Default value. This shouldn\'t be used.
    | UAERTMaster
      -- ^ @MASTER@
      -- Master \/ control plane
    | UAERTNodePool
      -- ^ @NODE_POOL@
      -- Node pool
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpgradeAvailableEventResourceType

instance FromHttpApiData UpgradeAvailableEventResourceType where
    parseQueryParam = \case
        "UPGRADE_RESOURCE_TYPE_UNSPECIFIED" -> Right UAERTUpgradeResourceTypeUnspecified
        "MASTER" -> Right UAERTMaster
        "NODE_POOL" -> Right UAERTNodePool
        x -> Left ("Unable to parse UpgradeAvailableEventResourceType from: " <> x)

instance ToHttpApiData UpgradeAvailableEventResourceType where
    toQueryParam = \case
        UAERTUpgradeResourceTypeUnspecified -> "UPGRADE_RESOURCE_TYPE_UNSPECIFIED"
        UAERTMaster -> "MASTER"
        UAERTNodePool -> "NODE_POOL"

instance FromJSON UpgradeAvailableEventResourceType where
    parseJSON = parseJSONText "UpgradeAvailableEventResourceType"

instance ToJSON UpgradeAvailableEventResourceType where
    toJSON = toJSONText

-- | The desired state of IPv6 connectivity to Google Services.
data ClusterUpdateDesiredPrivateIPv6GoogleAccess
    = PrivateIPV6GoogleAccessUnspecified
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED@
      -- Default value. Same as DISABLED
    | PrivateIPV6GoogleAccessDisabled
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED@
      -- No private access to or from Google Services
    | PrivateIPV6GoogleAccessToGoogle
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE@
      -- Enables private IPv6 access to Google Services from GKE
    | PrivateIPV6GoogleAccessBidirectional
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL@
      -- Enables priate IPv6 access to and from Google Services
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterUpdateDesiredPrivateIPv6GoogleAccess

instance FromHttpApiData ClusterUpdateDesiredPrivateIPv6GoogleAccess where
    parseQueryParam = \case
        "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" -> Right PrivateIPV6GoogleAccessUnspecified
        "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED" -> Right PrivateIPV6GoogleAccessDisabled
        "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE" -> Right PrivateIPV6GoogleAccessToGoogle
        "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" -> Right PrivateIPV6GoogleAccessBidirectional
        x -> Left ("Unable to parse ClusterUpdateDesiredPrivateIPv6GoogleAccess from: " <> x)

instance ToHttpApiData ClusterUpdateDesiredPrivateIPv6GoogleAccess where
    toQueryParam = \case
        PrivateIPV6GoogleAccessUnspecified -> "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"
        PrivateIPV6GoogleAccessDisabled -> "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"
        PrivateIPV6GoogleAccessToGoogle -> "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"
        PrivateIPV6GoogleAccessBidirectional -> "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL"

instance FromJSON ClusterUpdateDesiredPrivateIPv6GoogleAccess where
    parseJSON = parseJSONText "ClusterUpdateDesiredPrivateIPv6GoogleAccess"

instance ToJSON ClusterUpdateDesiredPrivateIPv6GoogleAccess where
    toJSON = toJSONText

-- | Machine-friendly representation of the condition Deprecated. Use
-- canonical_code instead.
data StatusConditionCode
    = SCCUnknown
      -- ^ @UNKNOWN@
      -- UNKNOWN indicates a generic condition.
    | SCCGceStockout
      -- ^ @GCE_STOCKOUT@
      -- GCE_STOCKOUT indicates that Google Compute Engine resources are
      -- temporarily unavailable.
    | SCCGkeServiceAccountDeleted
      -- ^ @GKE_SERVICE_ACCOUNT_DELETED@
      -- GKE_SERVICE_ACCOUNT_DELETED indicates that the user deleted their robot
      -- service account.
    | SCCGceQuotaExceeded
      -- ^ @GCE_QUOTA_EXCEEDED@
      -- Google Compute Engine quota was exceeded.
    | SCCSetByOperator
      -- ^ @SET_BY_OPERATOR@
      -- Cluster state was manually changed by an SRE due to a system logic
      -- error.
    | SCCCloudKmsKeyError
      -- ^ @CLOUD_KMS_KEY_ERROR@
      -- Unable to perform an encrypt operation against the CloudKMS key used for
      -- etcd level encryption.
    | SCCCaExpiring
      -- ^ @CA_EXPIRING@
      -- Cluster CA is expiring soon.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StatusConditionCode

instance FromHttpApiData StatusConditionCode where
    parseQueryParam = \case
        "UNKNOWN" -> Right SCCUnknown
        "GCE_STOCKOUT" -> Right SCCGceStockout
        "GKE_SERVICE_ACCOUNT_DELETED" -> Right SCCGkeServiceAccountDeleted
        "GCE_QUOTA_EXCEEDED" -> Right SCCGceQuotaExceeded
        "SET_BY_OPERATOR" -> Right SCCSetByOperator
        "CLOUD_KMS_KEY_ERROR" -> Right SCCCloudKmsKeyError
        "CA_EXPIRING" -> Right SCCCaExpiring
        x -> Left ("Unable to parse StatusConditionCode from: " <> x)

instance ToHttpApiData StatusConditionCode where
    toQueryParam = \case
        SCCUnknown -> "UNKNOWN"
        SCCGceStockout -> "GCE_STOCKOUT"
        SCCGkeServiceAccountDeleted -> "GKE_SERVICE_ACCOUNT_DELETED"
        SCCGceQuotaExceeded -> "GCE_QUOTA_EXCEEDED"
        SCCSetByOperator -> "SET_BY_OPERATOR"
        SCCCloudKmsKeyError -> "CLOUD_KMS_KEY_ERROR"
        SCCCaExpiring -> "CA_EXPIRING"

instance FromJSON StatusConditionCode where
    parseJSON = parseJSONText "StatusConditionCode"

instance ToJSON StatusConditionCode where
    toJSON = toJSONText

-- | The desired state of IPv6 connectivity to Google Services. By default,
-- no private IPv6 access to or from Google Services (all access will be
-- via IPv4)
data NetworkConfigPrivateIPv6GoogleAccess
    = NCPIGAPrivateIPV6GoogleAccessUnspecified
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED@
      -- Default value. Same as DISABLED
    | NCPIGAPrivateIPV6GoogleAccessDisabled
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED@
      -- No private access to or from Google Services
    | NCPIGAPrivateIPV6GoogleAccessToGoogle
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE@
      -- Enables private IPv6 access to Google Services from GKE
    | NCPIGAPrivateIPV6GoogleAccessBidirectional
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL@
      -- Enables priate IPv6 access to and from Google Services
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkConfigPrivateIPv6GoogleAccess

instance FromHttpApiData NetworkConfigPrivateIPv6GoogleAccess where
    parseQueryParam = \case
        "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" -> Right NCPIGAPrivateIPV6GoogleAccessUnspecified
        "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED" -> Right NCPIGAPrivateIPV6GoogleAccessDisabled
        "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE" -> Right NCPIGAPrivateIPV6GoogleAccessToGoogle
        "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL" -> Right NCPIGAPrivateIPV6GoogleAccessBidirectional
        x -> Left ("Unable to parse NetworkConfigPrivateIPv6GoogleAccess from: " <> x)

instance ToHttpApiData NetworkConfigPrivateIPv6GoogleAccess where
    toQueryParam = \case
        NCPIGAPrivateIPV6GoogleAccessUnspecified -> "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"
        NCPIGAPrivateIPV6GoogleAccessDisabled -> "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"
        NCPIGAPrivateIPV6GoogleAccessToGoogle -> "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"
        NCPIGAPrivateIPV6GoogleAccessBidirectional -> "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL"

instance FromJSON NetworkConfigPrivateIPv6GoogleAccess where
    parseJSON = parseJSONText "NetworkConfigPrivateIPv6GoogleAccess"

instance ToJSON NetworkConfigPrivateIPv6GoogleAccess where
    toJSON = toJSONText

-- | Which load balancer type is installed for Cloud Run.
data CloudRunConfigLoadBalancerType
    = LoadBalancerTypeUnspecified
      -- ^ @LOAD_BALANCER_TYPE_UNSPECIFIED@
      -- Load balancer type for Cloud Run is unspecified.
    | LoadBalancerTypeExternal
      -- ^ @LOAD_BALANCER_TYPE_EXTERNAL@
      -- Install external load balancer for Cloud Run.
    | LoadBalancerTypeInternal
      -- ^ @LOAD_BALANCER_TYPE_INTERNAL@
      -- Install internal load balancer for Cloud Run.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudRunConfigLoadBalancerType

instance FromHttpApiData CloudRunConfigLoadBalancerType where
    parseQueryParam = \case
        "LOAD_BALANCER_TYPE_UNSPECIFIED" -> Right LoadBalancerTypeUnspecified
        "LOAD_BALANCER_TYPE_EXTERNAL" -> Right LoadBalancerTypeExternal
        "LOAD_BALANCER_TYPE_INTERNAL" -> Right LoadBalancerTypeInternal
        x -> Left ("Unable to parse CloudRunConfigLoadBalancerType from: " <> x)

instance ToHttpApiData CloudRunConfigLoadBalancerType where
    toQueryParam = \case
        LoadBalancerTypeUnspecified -> "LOAD_BALANCER_TYPE_UNSPECIFIED"
        LoadBalancerTypeExternal -> "LOAD_BALANCER_TYPE_EXTERNAL"
        LoadBalancerTypeInternal -> "LOAD_BALANCER_TYPE_INTERNAL"

instance FromJSON CloudRunConfigLoadBalancerType where
    parseJSON = parseJSONText "CloudRunConfigLoadBalancerType"

instance ToJSON CloudRunConfigLoadBalancerType where
    toJSON = toJSONText

-- | The desired datapath provider for this cluster. By default, uses the
-- IPTables-based kube-proxy implementation.
data NetworkConfigDatapathProvider
    = DatapathProviderUnspecified
      -- ^ @DATAPATH_PROVIDER_UNSPECIFIED@
      -- Default value.
    | LegacyDatapath
      -- ^ @LEGACY_DATAPATH@
      -- Use the IPTables implementation based on kube-proxy.
    | AdvancedDatapath
      -- ^ @ADVANCED_DATAPATH@
      -- Use the eBPF based GKE Dataplane V2 with additional features. See the
      -- [GKE Dataplane V2
      -- documentation](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/dataplane-v2)
      -- for more.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkConfigDatapathProvider

instance FromHttpApiData NetworkConfigDatapathProvider where
    parseQueryParam = \case
        "DATAPATH_PROVIDER_UNSPECIFIED" -> Right DatapathProviderUnspecified
        "LEGACY_DATAPATH" -> Right LegacyDatapath
        "ADVANCED_DATAPATH" -> Right AdvancedDatapath
        x -> Left ("Unable to parse NetworkConfigDatapathProvider from: " <> x)

instance ToHttpApiData NetworkConfigDatapathProvider where
    toQueryParam = \case
        DatapathProviderUnspecified -> "DATAPATH_PROVIDER_UNSPECIFIED"
        LegacyDatapath -> "LEGACY_DATAPATH"
        AdvancedDatapath -> "ADVANCED_DATAPATH"

instance FromJSON NetworkConfigDatapathProvider where
    parseJSON = parseJSONText "NetworkConfigDatapathProvider"

instance ToJSON NetworkConfigDatapathProvider where
    toJSON = toJSONText

-- | The operation type.
data OperationOperationType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Not set.
    | CreateCluster
      -- ^ @CREATE_CLUSTER@
      -- Cluster create.
    | DeleteCluster
      -- ^ @DELETE_CLUSTER@
      -- Cluster delete.
    | UpgradeMaster
      -- ^ @UPGRADE_MASTER@
      -- A master upgrade.
    | UpgradeNodes
      -- ^ @UPGRADE_NODES@
      -- A node upgrade.
    | RepairCluster
      -- ^ @REPAIR_CLUSTER@
      -- Cluster repair.
    | UpdateCluster
      -- ^ @UPDATE_CLUSTER@
      -- Cluster update.
    | CreateNodePool
      -- ^ @CREATE_NODE_POOL@
      -- Node pool create.
    | DeleteNodePool
      -- ^ @DELETE_NODE_POOL@
      -- Node pool delete.
    | SetNodePoolManagement
      -- ^ @SET_NODE_POOL_MANAGEMENT@
      -- Set node pool management.
    | AutoRepairNodes
      -- ^ @AUTO_REPAIR_NODES@
      -- Automatic node pool repair.
    | AutoUpgradeNodes
      -- ^ @AUTO_UPGRADE_NODES@
      -- Automatic node upgrade.
    | SetLabels
      -- ^ @SET_LABELS@
      -- Set labels.
    | SetMasterAuth
      -- ^ @SET_MASTER_AUTH@
      -- Set\/generate master auth materials
    | SetNodePoolSize
      -- ^ @SET_NODE_POOL_SIZE@
      -- Set node pool size.
    | SetNetworkPolicy
      -- ^ @SET_NETWORK_POLICY@
      -- Updates network policy for a cluster.
    | SetMaintenancePolicy
      -- ^ @SET_MAINTENANCE_POLICY@
      -- Set the maintenance policy.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationOperationType

instance FromHttpApiData OperationOperationType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "CREATE_CLUSTER" -> Right CreateCluster
        "DELETE_CLUSTER" -> Right DeleteCluster
        "UPGRADE_MASTER" -> Right UpgradeMaster
        "UPGRADE_NODES" -> Right UpgradeNodes
        "REPAIR_CLUSTER" -> Right RepairCluster
        "UPDATE_CLUSTER" -> Right UpdateCluster
        "CREATE_NODE_POOL" -> Right CreateNodePool
        "DELETE_NODE_POOL" -> Right DeleteNodePool
        "SET_NODE_POOL_MANAGEMENT" -> Right SetNodePoolManagement
        "AUTO_REPAIR_NODES" -> Right AutoRepairNodes
        "AUTO_UPGRADE_NODES" -> Right AutoUpgradeNodes
        "SET_LABELS" -> Right SetLabels
        "SET_MASTER_AUTH" -> Right SetMasterAuth
        "SET_NODE_POOL_SIZE" -> Right SetNodePoolSize
        "SET_NETWORK_POLICY" -> Right SetNetworkPolicy
        "SET_MAINTENANCE_POLICY" -> Right SetMaintenancePolicy
        x -> Left ("Unable to parse OperationOperationType from: " <> x)

instance ToHttpApiData OperationOperationType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        CreateCluster -> "CREATE_CLUSTER"
        DeleteCluster -> "DELETE_CLUSTER"
        UpgradeMaster -> "UPGRADE_MASTER"
        UpgradeNodes -> "UPGRADE_NODES"
        RepairCluster -> "REPAIR_CLUSTER"
        UpdateCluster -> "UPDATE_CLUSTER"
        CreateNodePool -> "CREATE_NODE_POOL"
        DeleteNodePool -> "DELETE_NODE_POOL"
        SetNodePoolManagement -> "SET_NODE_POOL_MANAGEMENT"
        AutoRepairNodes -> "AUTO_REPAIR_NODES"
        AutoUpgradeNodes -> "AUTO_UPGRADE_NODES"
        SetLabels -> "SET_LABELS"
        SetMasterAuth -> "SET_MASTER_AUTH"
        SetNodePoolSize -> "SET_NODE_POOL_SIZE"
        SetNetworkPolicy -> "SET_NETWORK_POLICY"
        SetMaintenancePolicy -> "SET_MAINTENANCE_POLICY"

instance FromJSON OperationOperationType where
    parseJSON = parseJSONText "OperationOperationType"

instance ToJSON OperationOperationType where
    toJSON = toJSONText

-- | The current status of the operation.
data OperationStatus
    = OSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Not set.
    | OSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | OSRunning
      -- ^ @RUNNING@
      -- The operation is currently running.
    | OSDone
      -- ^ @DONE@
      -- The operation is done, either cancelled or completed.
    | OSAborting
      -- ^ @ABORTING@
      -- The operation is aborting.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right OSStatusUnspecified
        "PENDING" -> Right OSPending
        "RUNNING" -> Right OSRunning
        "DONE" -> Right OSDone
        "ABORTING" -> Right OSAborting
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        OSStatusUnspecified -> "STATUS_UNSPECIFIED"
        OSPending -> "PENDING"
        OSRunning -> "RUNNING"
        OSDone -> "DONE"
        OSAborting -> "ABORTING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | Type of the sandbox to use for the node.
data SandboxConfigType
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Default value. This should not be used.
    | Gvisor
      -- ^ @GVISOR@
      -- Run sandbox using gvisor.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SandboxConfigType

instance FromHttpApiData SandboxConfigType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "GVISOR" -> Right Gvisor
        x -> Left ("Unable to parse SandboxConfigType from: " <> x)

instance ToHttpApiData SandboxConfigType where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Gvisor -> "GVISOR"

instance FromJSON SandboxConfigType where
    parseJSON = parseJSONText "SandboxConfigType"

instance ToJSON SandboxConfigType where
    toJSON = toJSONText

-- | The selected network policy provider.
data NetworkPolicyProvider
    = ProviderUnspecified
      -- ^ @PROVIDER_UNSPECIFIED@
      -- Not set
    | Calico
      -- ^ @CALICO@
      -- Tigera (Calico Felix).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkPolicyProvider

instance FromHttpApiData NetworkPolicyProvider where
    parseQueryParam = \case
        "PROVIDER_UNSPECIFIED" -> Right ProviderUnspecified
        "CALICO" -> Right Calico
        x -> Left ("Unable to parse NetworkPolicyProvider from: " <> x)

instance ToHttpApiData NetworkPolicyProvider where
    toQueryParam = \case
        ProviderUnspecified -> "PROVIDER_UNSPECIFIED"
        Calico -> "CALICO"

instance FromJSON NetworkPolicyProvider where
    parseJSON = parseJSONText "NetworkPolicyProvider"

instance ToJSON NetworkPolicyProvider where
    toJSON = toJSONText

-- | The desired datapath provider for the cluster.
data ClusterUpdateDesiredDatapathProvider
    = CUDDPDatapathProviderUnspecified
      -- ^ @DATAPATH_PROVIDER_UNSPECIFIED@
      -- Default value.
    | CUDDPLegacyDatapath
      -- ^ @LEGACY_DATAPATH@
      -- Use the IPTables implementation based on kube-proxy.
    | CUDDPAdvancedDatapath
      -- ^ @ADVANCED_DATAPATH@
      -- Use the eBPF based GKE Dataplane V2 with additional features. See the
      -- [GKE Dataplane V2
      -- documentation](https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/dataplane-v2)
      -- for more.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterUpdateDesiredDatapathProvider

instance FromHttpApiData ClusterUpdateDesiredDatapathProvider where
    parseQueryParam = \case
        "DATAPATH_PROVIDER_UNSPECIFIED" -> Right CUDDPDatapathProviderUnspecified
        "LEGACY_DATAPATH" -> Right CUDDPLegacyDatapath
        "ADVANCED_DATAPATH" -> Right CUDDPAdvancedDatapath
        x -> Left ("Unable to parse ClusterUpdateDesiredDatapathProvider from: " <> x)

instance ToHttpApiData ClusterUpdateDesiredDatapathProvider where
    toQueryParam = \case
        CUDDPDatapathProviderUnspecified -> "DATAPATH_PROVIDER_UNSPECIFIED"
        CUDDPLegacyDatapath -> "LEGACY_DATAPATH"
        CUDDPAdvancedDatapath -> "ADVANCED_DATAPATH"

instance FromJSON ClusterUpdateDesiredDatapathProvider where
    parseJSON = parseJSONText "ClusterUpdateDesiredDatapathProvider"

instance ToJSON ClusterUpdateDesiredDatapathProvider where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Denotes the state of etcd encryption.
data DatabaseEncryptionState
    = DESUnknown
      -- ^ @UNKNOWN@
      -- Should never be set
    | DESEncrypted
      -- ^ @ENCRYPTED@
      -- Secrets in etcd are encrypted.
    | DESDecrypted
      -- ^ @DECRYPTED@
      -- Secrets in etcd are stored in plain text (at etcd level) - this is
      -- unrelated to Compute Engine level full disk encryption.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DatabaseEncryptionState

instance FromHttpApiData DatabaseEncryptionState where
    parseQueryParam = \case
        "UNKNOWN" -> Right DESUnknown
        "ENCRYPTED" -> Right DESEncrypted
        "DECRYPTED" -> Right DESDecrypted
        x -> Left ("Unable to parse DatabaseEncryptionState from: " <> x)

instance ToHttpApiData DatabaseEncryptionState where
    toQueryParam = \case
        DESUnknown -> "UNKNOWN"
        DESEncrypted -> "ENCRYPTED"
        DESDecrypted -> "DECRYPTED"

instance FromJSON DatabaseEncryptionState where
    parseJSON = parseJSONText "DatabaseEncryptionState"

instance ToJSON DatabaseEncryptionState where
    toJSON = toJSONText

-- | [Output only] The status of the nodes in this pool instance.
data NodePoolStatus
    = NPSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Not set.
    | NPSProvisioning
      -- ^ @PROVISIONING@
      -- The PROVISIONING state indicates the node pool is being created.
    | NPSRunning
      -- ^ @RUNNING@
      -- The RUNNING state indicates the node pool has been created and is fully
      -- usable.
    | NPSRunningWithError
      -- ^ @RUNNING_WITH_ERROR@
      -- The RUNNING_WITH_ERROR state indicates the node pool has been created
      -- and is partially usable. Some error state has occurred and some
      -- functionality may be impaired. Customer may need to reissue a request or
      -- trigger a new update.
    | NPSReconciling
      -- ^ @RECONCILING@
      -- The RECONCILING state indicates that some work is actively being done on
      -- the node pool, such as upgrading node software. Details can be found in
      -- the \`statusMessage\` field.
    | NPSStopping
      -- ^ @STOPPING@
      -- The STOPPING state indicates the node pool is being deleted.
    | NPSError'
      -- ^ @ERROR@
      -- The ERROR state indicates the node pool may be unusable. Details can be
      -- found in the \`statusMessage\` field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodePoolStatus

instance FromHttpApiData NodePoolStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right NPSStatusUnspecified
        "PROVISIONING" -> Right NPSProvisioning
        "RUNNING" -> Right NPSRunning
        "RUNNING_WITH_ERROR" -> Right NPSRunningWithError
        "RECONCILING" -> Right NPSReconciling
        "STOPPING" -> Right NPSStopping
        "ERROR" -> Right NPSError'
        x -> Left ("Unable to parse NodePoolStatus from: " <> x)

instance ToHttpApiData NodePoolStatus where
    toQueryParam = \case
        NPSStatusUnspecified -> "STATUS_UNSPECIFIED"
        NPSProvisioning -> "PROVISIONING"
        NPSRunning -> "RUNNING"
        NPSRunningWithError -> "RUNNING_WITH_ERROR"
        NPSReconciling -> "RECONCILING"
        NPSStopping -> "STOPPING"
        NPSError' -> "ERROR"

instance FromJSON NodePoolStatus where
    parseJSON = parseJSONText "NodePoolStatus"

instance ToJSON NodePoolStatus where
    toJSON = toJSONText

-- | Canonical code of the condition.
data StatusConditionCanonicalCode
    = SCCCOK
      -- ^ @OK@
      -- Not an error; returned on success HTTP Mapping: 200 OK
    | SCCCCancelled
      -- ^ @CANCELLED@
      -- The operation was cancelled, typically by the caller. HTTP Mapping: 499
      -- Client Closed Request
    | SCCCUnknown
      -- ^ @UNKNOWN@
      -- Unknown error. For example, this error may be returned when a \`Status\`
      -- value received from another address space belongs to an error space that
      -- is not known in this address space. Also errors raised by APIs that do
      -- not return enough error information may be converted to this error. HTTP
      -- Mapping: 500 Internal Server Error
    | SCCCInvalidArgument
      -- ^ @INVALID_ARGUMENT@
      -- The client specified an invalid argument. Note that this differs from
      -- \`FAILED_PRECONDITION\`. \`INVALID_ARGUMENT\` indicates arguments that
      -- are problematic regardless of the state of the system (e.g., a malformed
      -- file name). HTTP Mapping: 400 Bad Request
    | SCCCDeadlineExceeded
      -- ^ @DEADLINE_EXCEEDED@
      -- The deadline expired before the operation could complete. For operations
      -- that change the state of the system, this error may be returned even if
      -- the operation has completed successfully. For example, a successful
      -- response from a server could have been delayed long enough for the
      -- deadline to expire. HTTP Mapping: 504 Gateway Timeout
    | SCCCNotFound
      -- ^ @NOT_FOUND@
      -- Some requested entity (e.g., file or directory) was not found. Note to
      -- server developers: if a request is denied for an entire class of users,
      -- such as gradual feature rollout or undocumented allowlist, \`NOT_FOUND\`
      -- may be used. If a request is denied for some users within a class of
      -- users, such as user-based access control, \`PERMISSION_DENIED\` must be
      -- used. HTTP Mapping: 404 Not Found
    | SCCCAlreadyExists
      -- ^ @ALREADY_EXISTS@
      -- The entity that a client attempted to create (e.g., file or directory)
      -- already exists. HTTP Mapping: 409 Conflict
    | SCCCPermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The caller does not have permission to execute the specified operation.
      -- \`PERMISSION_DENIED\` must not be used for rejections caused by
      -- exhausting some resource (use \`RESOURCE_EXHAUSTED\` instead for those
      -- errors). \`PERMISSION_DENIED\` must not be used if the caller can not be
      -- identified (use \`UNAUTHENTICATED\` instead for those errors). This
      -- error code does not imply the request is valid or the requested entity
      -- exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
    | SCCCUnauthenticated
      -- ^ @UNAUTHENTICATED@
      -- The request does not have valid authentication credentials for the
      -- operation. HTTP Mapping: 401 Unauthorized
    | SCCCResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Some resource has been exhausted, perhaps a per-user quota, or perhaps
      -- the entire file system is out of space. HTTP Mapping: 429 Too Many
      -- Requests
    | SCCCFailedPrecondition
      -- ^ @FAILED_PRECONDITION@
      -- The operation was rejected because the system is not in a state required
      -- for the operation\'s execution. For example, the directory to be deleted
      -- is non-empty, an rmdir operation is applied to a non-directory, etc.
      -- Service implementors can use the following guidelines to decide between
      -- \`FAILED_PRECONDITION\`, \`ABORTED\`, and \`UNAVAILABLE\`: (a) Use
      -- \`UNAVAILABLE\` if the client can retry just the failing call. (b) Use
      -- \`ABORTED\` if the client should retry at a higher level. For example,
      -- when a client-specified test-and-set fails, indicating the client should
      -- restart a read-modify-write sequence. (c) Use \`FAILED_PRECONDITION\` if
      -- the client should not retry until the system state has been explicitly
      -- fixed. For example, if an \"rmdir\" fails because the directory is
      -- non-empty, \`FAILED_PRECONDITION\` should be returned since the client
      -- should not retry unless the files are deleted from the directory. HTTP
      -- Mapping: 400 Bad Request
    | SCCCAborted
      -- ^ @ABORTED@
      -- The operation was aborted, typically due to a concurrency issue such as
      -- a sequencer check failure or transaction abort. See the guidelines above
      -- for deciding between \`FAILED_PRECONDITION\`, \`ABORTED\`, and
      -- \`UNAVAILABLE\`. HTTP Mapping: 409 Conflict
    | SCCCOutOfRange
      -- ^ @OUT_OF_RANGE@
      -- The operation was attempted past the valid range. E.g., seeking or
      -- reading past end-of-file. Unlike \`INVALID_ARGUMENT\`, this error
      -- indicates a problem that may be fixed if the system state changes. For
      -- example, a 32-bit file system will generate \`INVALID_ARGUMENT\` if
      -- asked to read at an offset that is not in the range [0,2^32-1], but it
      -- will generate \`OUT_OF_RANGE\` if asked to read from an offset past the
      -- current file size. There is a fair bit of overlap between
      -- \`FAILED_PRECONDITION\` and \`OUT_OF_RANGE\`. We recommend using
      -- \`OUT_OF_RANGE\` (the more specific error) when it applies so that
      -- callers who are iterating through a space can easily look for an
      -- \`OUT_OF_RANGE\` error to detect when they are done. HTTP Mapping: 400
      -- Bad Request
    | SCCCUnimplemented
      -- ^ @UNIMPLEMENTED@
      -- The operation is not implemented or is not supported\/enabled in this
      -- service. HTTP Mapping: 501 Not Implemented
    | SCCCInternal
      -- ^ @INTERNAL@
      -- Internal errors. This means that some invariants expected by the
      -- underlying system have been broken. This error code is reserved for
      -- serious errors. HTTP Mapping: 500 Internal Server Error
    | SCCCUnavailable
      -- ^ @UNAVAILABLE@
      -- The service is currently unavailable. This is most likely a transient
      -- condition, which can be corrected by retrying with a backoff. Note that
      -- it is not always safe to retry non-idempotent operations. See the
      -- guidelines above for deciding between \`FAILED_PRECONDITION\`,
      -- \`ABORTED\`, and \`UNAVAILABLE\`. HTTP Mapping: 503 Service Unavailable
    | SCCCDataLoss
      -- ^ @DATA_LOSS@
      -- Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server
      -- Error
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StatusConditionCanonicalCode

instance FromHttpApiData StatusConditionCanonicalCode where
    parseQueryParam = \case
        "OK" -> Right SCCCOK
        "CANCELLED" -> Right SCCCCancelled
        "UNKNOWN" -> Right SCCCUnknown
        "INVALID_ARGUMENT" -> Right SCCCInvalidArgument
        "DEADLINE_EXCEEDED" -> Right SCCCDeadlineExceeded
        "NOT_FOUND" -> Right SCCCNotFound
        "ALREADY_EXISTS" -> Right SCCCAlreadyExists
        "PERMISSION_DENIED" -> Right SCCCPermissionDenied
        "UNAUTHENTICATED" -> Right SCCCUnauthenticated
        "RESOURCE_EXHAUSTED" -> Right SCCCResourceExhausted
        "FAILED_PRECONDITION" -> Right SCCCFailedPrecondition
        "ABORTED" -> Right SCCCAborted
        "OUT_OF_RANGE" -> Right SCCCOutOfRange
        "UNIMPLEMENTED" -> Right SCCCUnimplemented
        "INTERNAL" -> Right SCCCInternal
        "UNAVAILABLE" -> Right SCCCUnavailable
        "DATA_LOSS" -> Right SCCCDataLoss
        x -> Left ("Unable to parse StatusConditionCanonicalCode from: " <> x)

instance ToHttpApiData StatusConditionCanonicalCode where
    toQueryParam = \case
        SCCCOK -> "OK"
        SCCCCancelled -> "CANCELLED"
        SCCCUnknown -> "UNKNOWN"
        SCCCInvalidArgument -> "INVALID_ARGUMENT"
        SCCCDeadlineExceeded -> "DEADLINE_EXCEEDED"
        SCCCNotFound -> "NOT_FOUND"
        SCCCAlreadyExists -> "ALREADY_EXISTS"
        SCCCPermissionDenied -> "PERMISSION_DENIED"
        SCCCUnauthenticated -> "UNAUTHENTICATED"
        SCCCResourceExhausted -> "RESOURCE_EXHAUSTED"
        SCCCFailedPrecondition -> "FAILED_PRECONDITION"
        SCCCAborted -> "ABORTED"
        SCCCOutOfRange -> "OUT_OF_RANGE"
        SCCCUnimplemented -> "UNIMPLEMENTED"
        SCCCInternal -> "INTERNAL"
        SCCCUnavailable -> "UNAVAILABLE"
        SCCCDataLoss -> "DATA_LOSS"

instance FromJSON StatusConditionCanonicalCode where
    parseJSON = parseJSONText "StatusConditionCanonicalCode"

instance ToJSON StatusConditionCanonicalCode where
    toJSON = toJSONText

-- | The release channel this configuration applies to.
data ReleaseChannelConfigChannel
    = RCCCUnspecified
      -- ^ @UNSPECIFIED@
      -- No channel specified.
    | RCCCRapid
      -- ^ @RAPID@
      -- RAPID channel is offered on an early access basis for customers who want
      -- to test new releases. WARNING: Versions available in the RAPID Channel
      -- may be subject to unresolved issues with no known workaround and are not
      -- subject to any SLAs.
    | RCCCRegular
      -- ^ @REGULAR@
      -- Clusters subscribed to REGULAR receive versions that are considered GA
      -- quality. REGULAR is intended for production users who want to take
      -- advantage of new features.
    | RCCCStable
      -- ^ @STABLE@
      -- Clusters subscribed to STABLE receive versions that are known to be
      -- stable and reliable in production.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReleaseChannelConfigChannel

instance FromHttpApiData ReleaseChannelConfigChannel where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right RCCCUnspecified
        "RAPID" -> Right RCCCRapid
        "REGULAR" -> Right RCCCRegular
        "STABLE" -> Right RCCCStable
        x -> Left ("Unable to parse ReleaseChannelConfigChannel from: " <> x)

instance ToHttpApiData ReleaseChannelConfigChannel where
    toQueryParam = \case
        RCCCUnspecified -> "UNSPECIFIED"
        RCCCRapid -> "RAPID"
        RCCCRegular -> "REGULAR"
        RCCCStable -> "STABLE"

instance FromJSON ReleaseChannelConfigChannel where
    parseJSON = parseJSONText "ReleaseChannelConfigChannel"

instance ToJSON ReleaseChannelConfigChannel where
    toJSON = toJSONText

-- | Mode is the configuration for how to expose metadata to workloads
-- running on the node pool.
data WorkLoadMetadataConfigMode
    = ModeUnspecified
      -- ^ @MODE_UNSPECIFIED@
      -- Not set.
    | GceMetadata
      -- ^ @GCE_METADATA@
      -- Expose all Compute Engine metadata to pods.
    | GkeMetadata
      -- ^ @GKE_METADATA@
      -- Run the GKE Metadata Server on this node. The GKE Metadata Server
      -- exposes a metadata API to workloads that is compatible with the V1
      -- Compute Metadata APIs exposed by the Compute Engine and App Engine
      -- Metadata Servers. This feature can only be enabled if Workload Identity
      -- is enabled at the cluster level.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkLoadMetadataConfigMode

instance FromHttpApiData WorkLoadMetadataConfigMode where
    parseQueryParam = \case
        "MODE_UNSPECIFIED" -> Right ModeUnspecified
        "GCE_METADATA" -> Right GceMetadata
        "GKE_METADATA" -> Right GkeMetadata
        x -> Left ("Unable to parse WorkLoadMetadataConfigMode from: " <> x)

instance ToHttpApiData WorkLoadMetadataConfigMode where
    toQueryParam = \case
        ModeUnspecified -> "MODE_UNSPECIFIED"
        GceMetadata -> "GCE_METADATA"
        GkeMetadata -> "GKE_METADATA"

instance FromJSON WorkLoadMetadataConfigMode where
    parseJSON = parseJSONText "WorkLoadMetadataConfigMode"

instance ToJSON WorkLoadMetadataConfigMode where
    toJSON = toJSONText

-- | [Output only] The current status of this cluster.
data ClusterStatus
    = CSStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Not set.
    | CSProvisioning
      -- ^ @PROVISIONING@
      -- The PROVISIONING state indicates the cluster is being created.
    | CSRunning
      -- ^ @RUNNING@
      -- The RUNNING state indicates the cluster has been created and is fully
      -- usable.
    | CSReconciling
      -- ^ @RECONCILING@
      -- The RECONCILING state indicates that some work is actively being done on
      -- the cluster, such as upgrading the master or node software. Details can
      -- be found in the \`statusMessage\` field.
    | CSStopping
      -- ^ @STOPPING@
      -- The STOPPING state indicates the cluster is being deleted.
    | CSError'
      -- ^ @ERROR@
      -- The ERROR state indicates the cluster is unusable. It will be
      -- automatically deleted. Details can be found in the \`statusMessage\`
      -- field.
    | CSDegraded
      -- ^ @DEGRADED@
      -- The DEGRADED state indicates the cluster requires user action to restore
      -- full functionality. Details can be found in the \`statusMessage\` field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStatus

instance FromHttpApiData ClusterStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right CSStatusUnspecified
        "PROVISIONING" -> Right CSProvisioning
        "RUNNING" -> Right CSRunning
        "RECONCILING" -> Right CSReconciling
        "STOPPING" -> Right CSStopping
        "ERROR" -> Right CSError'
        "DEGRADED" -> Right CSDegraded
        x -> Left ("Unable to parse ClusterStatus from: " <> x)

instance ToHttpApiData ClusterStatus where
    toQueryParam = \case
        CSStatusUnspecified -> "STATUS_UNSPECIFIED"
        CSProvisioning -> "PROVISIONING"
        CSRunning -> "RUNNING"
        CSReconciling -> "RECONCILING"
        CSStopping -> "STOPPING"
        CSError' -> "ERROR"
        CSDegraded -> "DEGRADED"

instance FromJSON ClusterStatus where
    parseJSON = parseJSONText "ClusterStatus"

instance ToJSON ClusterStatus where
    toJSON = toJSONText

-- | The resource type that is upgrading.
data UpgradeEventResourceType
    = UERTUpgradeResourceTypeUnspecified
      -- ^ @UPGRADE_RESOURCE_TYPE_UNSPECIFIED@
      -- Default value. This shouldn\'t be used.
    | UERTMaster
      -- ^ @MASTER@
      -- Master \/ control plane
    | UERTNodePool
      -- ^ @NODE_POOL@
      -- Node pool
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpgradeEventResourceType

instance FromHttpApiData UpgradeEventResourceType where
    parseQueryParam = \case
        "UPGRADE_RESOURCE_TYPE_UNSPECIFIED" -> Right UERTUpgradeResourceTypeUnspecified
        "MASTER" -> Right UERTMaster
        "NODE_POOL" -> Right UERTNodePool
        x -> Left ("Unable to parse UpgradeEventResourceType from: " <> x)

instance ToHttpApiData UpgradeEventResourceType where
    toQueryParam = \case
        UERTUpgradeResourceTypeUnspecified -> "UPGRADE_RESOURCE_TYPE_UNSPECIFIED"
        UERTMaster -> "MASTER"
        UERTNodePool -> "NODE_POOL"

instance FromJSON UpgradeEventResourceType where
    parseJSON = parseJSONText "UpgradeEventResourceType"

instance ToJSON UpgradeEventResourceType where
    toJSON = toJSONText

-- | Corresponds to the type of reservation consumption.
data ReservationAffinityConsumeReservationType
    = RACRTUnspecified
      -- ^ @UNSPECIFIED@
      -- Default value. This should not be used.
    | RACRTNoReservation
      -- ^ @NO_RESERVATION@
      -- Do not consume from any reserved capacity.
    | RACRTAnyReservation
      -- ^ @ANY_RESERVATION@
      -- Consume any reservation available.
    | RACRTSpecificReservation
      -- ^ @SPECIFIC_RESERVATION@
      -- Must consume from a specific reservation. Must specify key value fields
      -- for specifying the reservations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReservationAffinityConsumeReservationType

instance FromHttpApiData ReservationAffinityConsumeReservationType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right RACRTUnspecified
        "NO_RESERVATION" -> Right RACRTNoReservation
        "ANY_RESERVATION" -> Right RACRTAnyReservation
        "SPECIFIC_RESERVATION" -> Right RACRTSpecificReservation
        x -> Left ("Unable to parse ReservationAffinityConsumeReservationType from: " <> x)

instance ToHttpApiData ReservationAffinityConsumeReservationType where
    toQueryParam = \case
        RACRTUnspecified -> "UNSPECIFIED"
        RACRTNoReservation -> "NO_RESERVATION"
        RACRTAnyReservation -> "ANY_RESERVATION"
        RACRTSpecificReservation -> "SPECIFIC_RESERVATION"

instance FromJSON ReservationAffinityConsumeReservationType where
    parseJSON = parseJSONText "ReservationAffinityConsumeReservationType"

instance ToJSON ReservationAffinityConsumeReservationType where
    toJSON = toJSONText

-- | Effect for taint.
data NodeTaintEffect
    = EffectUnspecified
      -- ^ @EFFECT_UNSPECIFIED@
      -- Not set
    | NoSchedule
      -- ^ @NO_SCHEDULE@
      -- NoSchedule
    | PreferNoSchedule
      -- ^ @PREFER_NO_SCHEDULE@
      -- PreferNoSchedule
    | NoExecute
      -- ^ @NO_EXECUTE@
      -- NoExecute
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTaintEffect

instance FromHttpApiData NodeTaintEffect where
    parseQueryParam = \case
        "EFFECT_UNSPECIFIED" -> Right EffectUnspecified
        "NO_SCHEDULE" -> Right NoSchedule
        "PREFER_NO_SCHEDULE" -> Right PreferNoSchedule
        "NO_EXECUTE" -> Right NoExecute
        x -> Left ("Unable to parse NodeTaintEffect from: " <> x)

instance ToHttpApiData NodeTaintEffect where
    toQueryParam = \case
        EffectUnspecified -> "EFFECT_UNSPECIFIED"
        NoSchedule -> "NO_SCHEDULE"
        PreferNoSchedule -> "PREFER_NO_SCHEDULE"
        NoExecute -> "NO_EXECUTE"

instance FromJSON NodeTaintEffect where
    parseJSON = parseJSONText "NodeTaintEffect"

instance ToJSON NodeTaintEffect where
    toJSON = toJSONText

-- | channel specifies which release channel the cluster is subscribed to.
data ReleaseChannelChannel
    = RCCUnspecified
      -- ^ @UNSPECIFIED@
      -- No channel specified.
    | RCCRapid
      -- ^ @RAPID@
      -- RAPID channel is offered on an early access basis for customers who want
      -- to test new releases. WARNING: Versions available in the RAPID Channel
      -- may be subject to unresolved issues with no known workaround and are not
      -- subject to any SLAs.
    | RCCRegular
      -- ^ @REGULAR@
      -- Clusters subscribed to REGULAR receive versions that are considered GA
      -- quality. REGULAR is intended for production users who want to take
      -- advantage of new features.
    | RCCStable
      -- ^ @STABLE@
      -- Clusters subscribed to STABLE receive versions that are known to be
      -- stable and reliable in production.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReleaseChannelChannel

instance FromHttpApiData ReleaseChannelChannel where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right RCCUnspecified
        "RAPID" -> Right RCCRapid
        "REGULAR" -> Right RCCRegular
        "STABLE" -> Right RCCStable
        x -> Left ("Unable to parse ReleaseChannelChannel from: " <> x)

instance ToHttpApiData ReleaseChannelChannel where
    toQueryParam = \case
        RCCUnspecified -> "UNSPECIFIED"
        RCCRapid -> "RAPID"
        RCCRegular -> "REGULAR"
        RCCStable -> "STABLE"

instance FromJSON ReleaseChannelChannel where
    parseJSON = parseJSONText "ReleaseChannelChannel"

instance ToJSON ReleaseChannelChannel where
    toJSON = toJSONText

-- | Required. The exact form of action to be taken on the master auth.
data SetMasterAuthRequestAction
    = SMARAUnknown
      -- ^ @UNKNOWN@
      -- Operation is unknown and will error out.
    | SMARASetPassword
      -- ^ @SET_PASSWORD@
      -- Set the password to a user generated value.
    | SMARAGeneratePassword
      -- ^ @GENERATE_PASSWORD@
      -- Generate a new password and set it to that.
    | SMARASetUsername
      -- ^ @SET_USERNAME@
      -- Set the username. If an empty username is provided, basic authentication
      -- is disabled for the cluster. If a non-empty username is provided, basic
      -- authentication is enabled, with either a provided password or a
      -- generated one.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SetMasterAuthRequestAction

instance FromHttpApiData SetMasterAuthRequestAction where
    parseQueryParam = \case
        "UNKNOWN" -> Right SMARAUnknown
        "SET_PASSWORD" -> Right SMARASetPassword
        "GENERATE_PASSWORD" -> Right SMARAGeneratePassword
        "SET_USERNAME" -> Right SMARASetUsername
        x -> Left ("Unable to parse SetMasterAuthRequestAction from: " <> x)

instance ToHttpApiData SetMasterAuthRequestAction where
    toQueryParam = \case
        SMARAUnknown -> "UNKNOWN"
        SMARASetPassword -> "SET_PASSWORD"
        SMARAGeneratePassword -> "GENERATE_PASSWORD"
        SMARASetUsername -> "SET_USERNAME"

instance FromJSON SetMasterAuthRequestAction where
    parseJSON = parseJSONText "SetMasterAuthRequestAction"

instance ToJSON SetMasterAuthRequestAction where
    toJSON = toJSONText
