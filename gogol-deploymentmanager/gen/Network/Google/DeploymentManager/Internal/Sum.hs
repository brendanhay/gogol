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
-- Module      : Network.Google.DeploymentManager.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.DeploymentManager.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * Operation_Status
    Operation_Status
      ( Operation_Status_Pending,
        Operation_Status_Running,
        Operation_Status_Done,
        ..
      ),

    -- * Operation_WarningsItem_Code
    Operation_WarningsItem_Code
      ( Operation_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
        Operation_WarningsItem_Code_NORESULTSONPAGE,
        Operation_WarningsItem_Code_Unreachable,
        Operation_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
        Operation_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
        Operation_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
        Operation_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
        Operation_WarningsItem_Code_NEXTHOPNOTRUNNING,
        Operation_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
        Operation_WarningsItem_Code_REQUIREDTOSAGREEMENT,
        Operation_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
        Operation_WarningsItem_Code_RESOURCENOTDELETED,
        Operation_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
        Operation_WarningsItem_Code_NOTCRITICALERROR,
        Operation_WarningsItem_Code_CLEANUPFAILED,
        Operation_WarningsItem_Code_FIELDVALUEOVERRIDEN,
        Operation_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
        Operation_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
        Operation_WarningsItem_Code_EXTERNALAPIWARNING,
        Operation_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
        Operation_WarningsItem_Code_UNDECLAREDPROPERTIES,
        Operation_WarningsItem_Code_EXPERIMENTALTYPEUSED,
        Operation_WarningsItem_Code_DEPRECATEDTYPEUSED,
        Operation_WarningsItem_Code_PARTIALSUCCESS,
        Operation_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
        ..
      ),

    -- * Resource_WarningsItem_Code
    Resource_WarningsItem_Code
      ( Resource_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
        Resource_WarningsItem_Code_NORESULTSONPAGE,
        Resource_WarningsItem_Code_Unreachable,
        Resource_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
        Resource_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
        Resource_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
        Resource_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
        Resource_WarningsItem_Code_NEXTHOPNOTRUNNING,
        Resource_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
        Resource_WarningsItem_Code_REQUIREDTOSAGREEMENT,
        Resource_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
        Resource_WarningsItem_Code_RESOURCENOTDELETED,
        Resource_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
        Resource_WarningsItem_Code_NOTCRITICALERROR,
        Resource_WarningsItem_Code_CLEANUPFAILED,
        Resource_WarningsItem_Code_FIELDVALUEOVERRIDEN,
        Resource_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
        Resource_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
        Resource_WarningsItem_Code_EXTERNALAPIWARNING,
        Resource_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
        Resource_WarningsItem_Code_UNDECLAREDPROPERTIES,
        Resource_WarningsItem_Code_EXPERIMENTALTYPEUSED,
        Resource_WarningsItem_Code_DEPRECATEDTYPEUSED,
        Resource_WarningsItem_Code_PARTIALSUCCESS,
        Resource_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
        ..
      ),

    -- * ResourceUpdate_Intent
    ResourceUpdate_Intent
      ( ResourceUpdate_Intent_CREATEORACQUIRE,
        ResourceUpdate_Intent_Delete',
        ResourceUpdate_Intent_Acquire,
        ResourceUpdate_Intent_Update,
        ResourceUpdate_Intent_Abandon,
        ResourceUpdate_Intent_Create,
        ..
      ),

    -- * ResourceUpdate_State
    ResourceUpdate_State
      ( ResourceUpdate_State_Pending,
        ResourceUpdate_State_INPROGRESS,
        ResourceUpdate_State_INPREVIEW,
        ResourceUpdate_State_Failed,
        ResourceUpdate_State_Aborted,
        ..
      ),

    -- * ResourceUpdate_WarningsItem_Code
    ResourceUpdate_WarningsItem_Code
      ( ResourceUpdate_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
        ResourceUpdate_WarningsItem_Code_NORESULTSONPAGE,
        ResourceUpdate_WarningsItem_Code_Unreachable,
        ResourceUpdate_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
        ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
        ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
        ResourceUpdate_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
        ResourceUpdate_WarningsItem_Code_NEXTHOPNOTRUNNING,
        ResourceUpdate_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
        ResourceUpdate_WarningsItem_Code_REQUIREDTOSAGREEMENT,
        ResourceUpdate_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
        ResourceUpdate_WarningsItem_Code_RESOURCENOTDELETED,
        ResourceUpdate_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
        ResourceUpdate_WarningsItem_Code_NOTCRITICALERROR,
        ResourceUpdate_WarningsItem_Code_CLEANUPFAILED,
        ResourceUpdate_WarningsItem_Code_FIELDVALUEOVERRIDEN,
        ResourceUpdate_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
        ResourceUpdate_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
        ResourceUpdate_WarningsItem_Code_EXTERNALAPIWARNING,
        ResourceUpdate_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
        ResourceUpdate_WarningsItem_Code_UNDECLAREDPROPERTIES,
        ResourceUpdate_WarningsItem_Code_EXPERIMENTALTYPEUSED,
        ResourceUpdate_WarningsItem_Code_DEPRECATEDTYPEUSED,
        ResourceUpdate_WarningsItem_Code_PARTIALSUCCESS,
        ResourceUpdate_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
        ..
      ),

    -- * DeploymentsDeleteDeletePolicy
    DeploymentsDeleteDeletePolicy
      ( DeploymentsDeleteDeletePolicy_Delete',
        DeploymentsDeleteDeletePolicy_Abandon,
        ..
      ),

    -- * DeploymentsInsertCreatePolicy
    DeploymentsInsertCreatePolicy
      ( DeploymentsInsertCreatePolicy_CREATEORACQUIRE,
        DeploymentsInsertCreatePolicy_Acquire,
        ..
      ),

    -- * DeploymentsPatchCreatePolicy
    DeploymentsPatchCreatePolicy
      ( DeploymentsPatchCreatePolicy_CREATEORACQUIRE,
        DeploymentsPatchCreatePolicy_Acquire,
        ..
      ),

    -- * DeploymentsPatchDeletePolicy
    DeploymentsPatchDeletePolicy
      ( DeploymentsPatchDeletePolicy_Delete',
        DeploymentsPatchDeletePolicy_Abandon,
        ..
      ),

    -- * DeploymentsUpdateCreatePolicy
    DeploymentsUpdateCreatePolicy
      ( DeploymentsUpdateCreatePolicy_CREATEORACQUIRE,
        DeploymentsUpdateCreatePolicy_Acquire,
        ..
      ),

    -- * DeploymentsUpdateDeletePolicy
    DeploymentsUpdateDeletePolicy
      ( DeploymentsUpdateDeletePolicy_Delete',
        DeploymentsUpdateDeletePolicy_Abandon,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | [Output Only] The status of the operation, which can be one of the following: @PENDING@, @RUNNING@, or @DONE@.
newtype Operation_Status = Operation_Status {fromOperation_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Operation_Status_Pending :: Operation_Status
pattern Operation_Status_Pending = Operation_Status "PENDING"

-- |
pattern Operation_Status_Running :: Operation_Status
pattern Operation_Status_Running = Operation_Status "RUNNING"

-- |
pattern Operation_Status_Done :: Operation_Status
pattern Operation_Status_Done = Operation_Status "DONE"

{-# COMPLETE
  Operation_Status_Pending,
  Operation_Status_Running,
  Operation_Status_Done,
  Operation_Status
  #-}

-- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
newtype Operation_WarningsItem_Code = Operation_WarningsItem_Code {fromOperation_WarningsItem_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A link to a deprecated resource was created.
pattern Operation_WarningsItem_Code_DEPRECATEDRESOURCEUSED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_DEPRECATEDRESOURCEUSED = Operation_WarningsItem_Code "DEPRECATED_RESOURCE_USED"

-- | No results are present on a particular list page.
pattern Operation_WarningsItem_Code_NORESULTSONPAGE :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NORESULTSONPAGE = Operation_WarningsItem_Code "NO_RESULTS_ON_PAGE"

-- | A given scope cannot be reached.
pattern Operation_WarningsItem_Code_Unreachable :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_Unreachable = Operation_WarningsItem_Code "UNREACHABLE"

-- | The route\'s nextHopIp address is not assigned to an instance on the network.
pattern Operation_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED = Operation_WarningsItem_Code "NEXT_HOP_ADDRESS_NOT_ASSIGNED"

-- | The route\'s nextHopInstance URL refers to an instance that does not exist.
pattern Operation_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND = Operation_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_FOUND"

-- | The route\'s nextHopInstance URL refers to an instance that is not on the same network as the route.
pattern Operation_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK = Operation_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"

-- | The route\'s next hop instance cannot ip forward.
pattern Operation_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD = Operation_WarningsItem_Code "NEXT_HOP_CANNOT_IP_FORWARD"

-- | The route\'s next hop instance does not have a status of RUNNING.
pattern Operation_WarningsItem_Code_NEXTHOPNOTRUNNING :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NEXTHOPNOTRUNNING = Operation_WarningsItem_Code "NEXT_HOP_NOT_RUNNING"

-- | The operation involved use of an injected kernel, which is deprecated.
pattern Operation_WarningsItem_Code_INJECTEDKERNELSDEPRECATED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_INJECTEDKERNELSDEPRECATED = Operation_WarningsItem_Code "INJECTED_KERNELS_DEPRECATED"

-- | The user attempted to use a resource that requires a TOS they have not accepted.
pattern Operation_WarningsItem_Code_REQUIREDTOSAGREEMENT :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_REQUIREDTOSAGREEMENT = Operation_WarningsItem_Code "REQUIRED_TOS_AGREEMENT"

-- | The user created a boot disk that is larger than image size.
pattern Operation_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE = Operation_WarningsItem_Code "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"

-- | One or more of the resources set to auto-delete could not be deleted because they were in use.
pattern Operation_WarningsItem_Code_RESOURCENOTDELETED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_RESOURCENOTDELETED = Operation_WarningsItem_Code "RESOURCE_NOT_DELETED"

-- | Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.
pattern Operation_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE = Operation_WarningsItem_Code "SINGLE_INSTANCE_PROPERTY_TEMPLATE"

-- | Error which is not critical. We decided to continue the process despite the mentioned error.
pattern Operation_WarningsItem_Code_NOTCRITICALERROR :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_NOTCRITICALERROR = Operation_WarningsItem_Code "NOT_CRITICAL_ERROR"

-- | Warning about failed cleanup of transient changes made by a failed operation.
pattern Operation_WarningsItem_Code_CLEANUPFAILED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_CLEANUPFAILED = Operation_WarningsItem_Code "CLEANUP_FAILED"

-- | Warning that value of a field has been overridden. Deprecated unused field.
pattern Operation_WarningsItem_Code_FIELDVALUEOVERRIDEN :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_FIELDVALUEOVERRIDEN = Operation_WarningsItem_Code "FIELD_VALUE_OVERRIDEN"

-- | Warning that a resource is in use.
pattern Operation_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING = Operation_WarningsItem_Code "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"

-- | A resource depends on a missing type
pattern Operation_WarningsItem_Code_MISSINGTYPEDEPENDENCY :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_MISSINGTYPEDEPENDENCY = Operation_WarningsItem_Code "MISSING_TYPE_DEPENDENCY"

-- | Warning that is present in an external api call
pattern Operation_WarningsItem_Code_EXTERNALAPIWARNING :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_EXTERNALAPIWARNING = Operation_WarningsItem_Code "EXTERNAL_API_WARNING"

-- | When a resource schema validation is ignored.
pattern Operation_WarningsItem_Code_SCHEMAVALIDATIONIGNORED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_SCHEMAVALIDATIONIGNORED = Operation_WarningsItem_Code "SCHEMA_VALIDATION_IGNORED"

-- | When undeclared properties in the schema are present
pattern Operation_WarningsItem_Code_UNDECLAREDPROPERTIES :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_UNDECLAREDPROPERTIES = Operation_WarningsItem_Code "UNDECLARED_PROPERTIES"

-- | When deploying and at least one of the resources has a type marked as experimental
pattern Operation_WarningsItem_Code_EXPERIMENTALTYPEUSED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_EXPERIMENTALTYPEUSED = Operation_WarningsItem_Code "EXPERIMENTAL_TYPE_USED"

-- | When deploying and at least one of the resources has a type marked as deprecated
pattern Operation_WarningsItem_Code_DEPRECATEDTYPEUSED :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_DEPRECATEDTYPEUSED = Operation_WarningsItem_Code "DEPRECATED_TYPE_USED"

-- | Success is reported, but some results may be missing due to errors
pattern Operation_WarningsItem_Code_PARTIALSUCCESS :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_PARTIALSUCCESS = Operation_WarningsItem_Code "PARTIAL_SUCCESS"

-- | When deploying a deployment with a exceedingly large number of resources
pattern Operation_WarningsItem_Code_LARGEDEPLOYMENTWARNING :: Operation_WarningsItem_Code
pattern Operation_WarningsItem_Code_LARGEDEPLOYMENTWARNING = Operation_WarningsItem_Code "LARGE_DEPLOYMENT_WARNING"

{-# COMPLETE
  Operation_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
  Operation_WarningsItem_Code_NORESULTSONPAGE,
  Operation_WarningsItem_Code_Unreachable,
  Operation_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
  Operation_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
  Operation_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
  Operation_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
  Operation_WarningsItem_Code_NEXTHOPNOTRUNNING,
  Operation_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
  Operation_WarningsItem_Code_REQUIREDTOSAGREEMENT,
  Operation_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
  Operation_WarningsItem_Code_RESOURCENOTDELETED,
  Operation_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
  Operation_WarningsItem_Code_NOTCRITICALERROR,
  Operation_WarningsItem_Code_CLEANUPFAILED,
  Operation_WarningsItem_Code_FIELDVALUEOVERRIDEN,
  Operation_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
  Operation_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
  Operation_WarningsItem_Code_EXTERNALAPIWARNING,
  Operation_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
  Operation_WarningsItem_Code_UNDECLAREDPROPERTIES,
  Operation_WarningsItem_Code_EXPERIMENTALTYPEUSED,
  Operation_WarningsItem_Code_DEPRECATEDTYPEUSED,
  Operation_WarningsItem_Code_PARTIALSUCCESS,
  Operation_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
  Operation_WarningsItem_Code
  #-}

-- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
newtype Resource_WarningsItem_Code = Resource_WarningsItem_Code {fromResource_WarningsItem_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A link to a deprecated resource was created.
pattern Resource_WarningsItem_Code_DEPRECATEDRESOURCEUSED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_DEPRECATEDRESOURCEUSED = Resource_WarningsItem_Code "DEPRECATED_RESOURCE_USED"

-- | No results are present on a particular list page.
pattern Resource_WarningsItem_Code_NORESULTSONPAGE :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NORESULTSONPAGE = Resource_WarningsItem_Code "NO_RESULTS_ON_PAGE"

-- | A given scope cannot be reached.
pattern Resource_WarningsItem_Code_Unreachable :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_Unreachable = Resource_WarningsItem_Code "UNREACHABLE"

-- | The route\'s nextHopIp address is not assigned to an instance on the network.
pattern Resource_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED = Resource_WarningsItem_Code "NEXT_HOP_ADDRESS_NOT_ASSIGNED"

-- | The route\'s nextHopInstance URL refers to an instance that does not exist.
pattern Resource_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND = Resource_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_FOUND"

-- | The route\'s nextHopInstance URL refers to an instance that is not on the same network as the route.
pattern Resource_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK = Resource_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"

-- | The route\'s next hop instance cannot ip forward.
pattern Resource_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD = Resource_WarningsItem_Code "NEXT_HOP_CANNOT_IP_FORWARD"

-- | The route\'s next hop instance does not have a status of RUNNING.
pattern Resource_WarningsItem_Code_NEXTHOPNOTRUNNING :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NEXTHOPNOTRUNNING = Resource_WarningsItem_Code "NEXT_HOP_NOT_RUNNING"

-- | The operation involved use of an injected kernel, which is deprecated.
pattern Resource_WarningsItem_Code_INJECTEDKERNELSDEPRECATED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_INJECTEDKERNELSDEPRECATED = Resource_WarningsItem_Code "INJECTED_KERNELS_DEPRECATED"

-- | The user attempted to use a resource that requires a TOS they have not accepted.
pattern Resource_WarningsItem_Code_REQUIREDTOSAGREEMENT :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_REQUIREDTOSAGREEMENT = Resource_WarningsItem_Code "REQUIRED_TOS_AGREEMENT"

-- | The user created a boot disk that is larger than image size.
pattern Resource_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE = Resource_WarningsItem_Code "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"

-- | One or more of the resources set to auto-delete could not be deleted because they were in use.
pattern Resource_WarningsItem_Code_RESOURCENOTDELETED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_RESOURCENOTDELETED = Resource_WarningsItem_Code "RESOURCE_NOT_DELETED"

-- | Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.
pattern Resource_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE = Resource_WarningsItem_Code "SINGLE_INSTANCE_PROPERTY_TEMPLATE"

-- | Error which is not critical. We decided to continue the process despite the mentioned error.
pattern Resource_WarningsItem_Code_NOTCRITICALERROR :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_NOTCRITICALERROR = Resource_WarningsItem_Code "NOT_CRITICAL_ERROR"

-- | Warning about failed cleanup of transient changes made by a failed operation.
pattern Resource_WarningsItem_Code_CLEANUPFAILED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_CLEANUPFAILED = Resource_WarningsItem_Code "CLEANUP_FAILED"

-- | Warning that value of a field has been overridden. Deprecated unused field.
pattern Resource_WarningsItem_Code_FIELDVALUEOVERRIDEN :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_FIELDVALUEOVERRIDEN = Resource_WarningsItem_Code "FIELD_VALUE_OVERRIDEN"

-- | Warning that a resource is in use.
pattern Resource_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING = Resource_WarningsItem_Code "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"

-- | A resource depends on a missing type
pattern Resource_WarningsItem_Code_MISSINGTYPEDEPENDENCY :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_MISSINGTYPEDEPENDENCY = Resource_WarningsItem_Code "MISSING_TYPE_DEPENDENCY"

-- | Warning that is present in an external api call
pattern Resource_WarningsItem_Code_EXTERNALAPIWARNING :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_EXTERNALAPIWARNING = Resource_WarningsItem_Code "EXTERNAL_API_WARNING"

-- | When a resource schema validation is ignored.
pattern Resource_WarningsItem_Code_SCHEMAVALIDATIONIGNORED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_SCHEMAVALIDATIONIGNORED = Resource_WarningsItem_Code "SCHEMA_VALIDATION_IGNORED"

-- | When undeclared properties in the schema are present
pattern Resource_WarningsItem_Code_UNDECLAREDPROPERTIES :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_UNDECLAREDPROPERTIES = Resource_WarningsItem_Code "UNDECLARED_PROPERTIES"

-- | When deploying and at least one of the resources has a type marked as experimental
pattern Resource_WarningsItem_Code_EXPERIMENTALTYPEUSED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_EXPERIMENTALTYPEUSED = Resource_WarningsItem_Code "EXPERIMENTAL_TYPE_USED"

-- | When deploying and at least one of the resources has a type marked as deprecated
pattern Resource_WarningsItem_Code_DEPRECATEDTYPEUSED :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_DEPRECATEDTYPEUSED = Resource_WarningsItem_Code "DEPRECATED_TYPE_USED"

-- | Success is reported, but some results may be missing due to errors
pattern Resource_WarningsItem_Code_PARTIALSUCCESS :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_PARTIALSUCCESS = Resource_WarningsItem_Code "PARTIAL_SUCCESS"

-- | When deploying a deployment with a exceedingly large number of resources
pattern Resource_WarningsItem_Code_LARGEDEPLOYMENTWARNING :: Resource_WarningsItem_Code
pattern Resource_WarningsItem_Code_LARGEDEPLOYMENTWARNING = Resource_WarningsItem_Code "LARGE_DEPLOYMENT_WARNING"

{-# COMPLETE
  Resource_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
  Resource_WarningsItem_Code_NORESULTSONPAGE,
  Resource_WarningsItem_Code_Unreachable,
  Resource_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
  Resource_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
  Resource_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
  Resource_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
  Resource_WarningsItem_Code_NEXTHOPNOTRUNNING,
  Resource_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
  Resource_WarningsItem_Code_REQUIREDTOSAGREEMENT,
  Resource_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
  Resource_WarningsItem_Code_RESOURCENOTDELETED,
  Resource_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
  Resource_WarningsItem_Code_NOTCRITICALERROR,
  Resource_WarningsItem_Code_CLEANUPFAILED,
  Resource_WarningsItem_Code_FIELDVALUEOVERRIDEN,
  Resource_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
  Resource_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
  Resource_WarningsItem_Code_EXTERNALAPIWARNING,
  Resource_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
  Resource_WarningsItem_Code_UNDECLAREDPROPERTIES,
  Resource_WarningsItem_Code_EXPERIMENTALTYPEUSED,
  Resource_WarningsItem_Code_DEPRECATEDTYPEUSED,
  Resource_WarningsItem_Code_PARTIALSUCCESS,
  Resource_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
  Resource_WarningsItem_Code
  #-}

-- | Output only. The intent of the resource: @PREVIEW@, @UPDATE@, or @CANCEL@.
newtype ResourceUpdate_Intent = ResourceUpdate_Intent {fromResourceUpdate_Intent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The resource is scheduled to be created, or if it already exists, acquired.
pattern ResourceUpdate_Intent_CREATEORACQUIRE :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_CREATEORACQUIRE = ResourceUpdate_Intent "CREATE_OR_ACQUIRE"

-- | The resource is scheduled to be deleted.
pattern ResourceUpdate_Intent_Delete' :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_Delete' = ResourceUpdate_Intent "DELETE"

-- | The resource is scheduled to be acquired.
pattern ResourceUpdate_Intent_Acquire :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_Acquire = ResourceUpdate_Intent "ACQUIRE"

-- | The resource is scheduled to be updated via the UPDATE method.
pattern ResourceUpdate_Intent_Update :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_Update = ResourceUpdate_Intent "UPDATE"

-- | The resource is scheduled to be abandoned.
pattern ResourceUpdate_Intent_Abandon :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_Abandon = ResourceUpdate_Intent "ABANDON"

-- | The resource is scheduled to be created.
pattern ResourceUpdate_Intent_Create :: ResourceUpdate_Intent
pattern ResourceUpdate_Intent_Create = ResourceUpdate_Intent "CREATE"

{-# COMPLETE
  ResourceUpdate_Intent_CREATEORACQUIRE,
  ResourceUpdate_Intent_Delete',
  ResourceUpdate_Intent_Acquire,
  ResourceUpdate_Intent_Update,
  ResourceUpdate_Intent_Abandon,
  ResourceUpdate_Intent_Create,
  ResourceUpdate_Intent
  #-}

-- | Output only. The state of the resource.
newtype ResourceUpdate_State = ResourceUpdate_State {fromResourceUpdate_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | There are changes pending for this resource.
pattern ResourceUpdate_State_Pending :: ResourceUpdate_State
pattern ResourceUpdate_State_Pending = ResourceUpdate_State "PENDING"

-- | The service is executing changes on the resource.
pattern ResourceUpdate_State_INPROGRESS :: ResourceUpdate_State
pattern ResourceUpdate_State_INPROGRESS = ResourceUpdate_State "IN_PROGRESS"

-- | The service is previewing changes on the resource.
pattern ResourceUpdate_State_INPREVIEW :: ResourceUpdate_State
pattern ResourceUpdate_State_INPREVIEW = ResourceUpdate_State "IN_PREVIEW"

-- | The service has failed to change the resource.
pattern ResourceUpdate_State_Failed :: ResourceUpdate_State
pattern ResourceUpdate_State_Failed = ResourceUpdate_State "FAILED"

-- | The service has aborted trying to change the resource.
pattern ResourceUpdate_State_Aborted :: ResourceUpdate_State
pattern ResourceUpdate_State_Aborted = ResourceUpdate_State "ABORTED"

{-# COMPLETE
  ResourceUpdate_State_Pending,
  ResourceUpdate_State_INPROGRESS,
  ResourceUpdate_State_INPREVIEW,
  ResourceUpdate_State_Failed,
  ResourceUpdate_State_Aborted,
  ResourceUpdate_State
  #-}

-- | [Output Only] A warning code, if applicable. For example, Compute Engine returns NO/RESULTS/ON_PAGE if there are no results in the response.
newtype ResourceUpdate_WarningsItem_Code = ResourceUpdate_WarningsItem_Code {fromResourceUpdate_WarningsItem_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A link to a deprecated resource was created.
pattern ResourceUpdate_WarningsItem_Code_DEPRECATEDRESOURCEUSED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_DEPRECATEDRESOURCEUSED = ResourceUpdate_WarningsItem_Code "DEPRECATED_RESOURCE_USED"

-- | No results are present on a particular list page.
pattern ResourceUpdate_WarningsItem_Code_NORESULTSONPAGE :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NORESULTSONPAGE = ResourceUpdate_WarningsItem_Code "NO_RESULTS_ON_PAGE"

-- | A given scope cannot be reached.
pattern ResourceUpdate_WarningsItem_Code_Unreachable :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_Unreachable = ResourceUpdate_WarningsItem_Code "UNREACHABLE"

-- | The route\'s nextHopIp address is not assigned to an instance on the network.
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED = ResourceUpdate_WarningsItem_Code "NEXT_HOP_ADDRESS_NOT_ASSIGNED"

-- | The route\'s nextHopInstance URL refers to an instance that does not exist.
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND = ResourceUpdate_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_FOUND"

-- | The route\'s nextHopInstance URL refers to an instance that is not on the same network as the route.
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK = ResourceUpdate_WarningsItem_Code "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"

-- | The route\'s next hop instance cannot ip forward.
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD = ResourceUpdate_WarningsItem_Code "NEXT_HOP_CANNOT_IP_FORWARD"

-- | The route\'s next hop instance does not have a status of RUNNING.
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPNOTRUNNING :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NEXTHOPNOTRUNNING = ResourceUpdate_WarningsItem_Code "NEXT_HOP_NOT_RUNNING"

-- | The operation involved use of an injected kernel, which is deprecated.
pattern ResourceUpdate_WarningsItem_Code_INJECTEDKERNELSDEPRECATED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_INJECTEDKERNELSDEPRECATED = ResourceUpdate_WarningsItem_Code "INJECTED_KERNELS_DEPRECATED"

-- | The user attempted to use a resource that requires a TOS they have not accepted.
pattern ResourceUpdate_WarningsItem_Code_REQUIREDTOSAGREEMENT :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_REQUIREDTOSAGREEMENT = ResourceUpdate_WarningsItem_Code "REQUIRED_TOS_AGREEMENT"

-- | The user created a boot disk that is larger than image size.
pattern ResourceUpdate_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE = ResourceUpdate_WarningsItem_Code "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"

-- | One or more of the resources set to auto-delete could not be deleted because they were in use.
pattern ResourceUpdate_WarningsItem_Code_RESOURCENOTDELETED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_RESOURCENOTDELETED = ResourceUpdate_WarningsItem_Code "RESOURCE_NOT_DELETED"

-- | Instance template used in instance group manager is valid as such, but its application does not make a lot of sense, because it allows only single instance in instance group.
pattern ResourceUpdate_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE = ResourceUpdate_WarningsItem_Code "SINGLE_INSTANCE_PROPERTY_TEMPLATE"

-- | Error which is not critical. We decided to continue the process despite the mentioned error.
pattern ResourceUpdate_WarningsItem_Code_NOTCRITICALERROR :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_NOTCRITICALERROR = ResourceUpdate_WarningsItem_Code "NOT_CRITICAL_ERROR"

-- | Warning about failed cleanup of transient changes made by a failed operation.
pattern ResourceUpdate_WarningsItem_Code_CLEANUPFAILED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_CLEANUPFAILED = ResourceUpdate_WarningsItem_Code "CLEANUP_FAILED"

-- | Warning that value of a field has been overridden. Deprecated unused field.
pattern ResourceUpdate_WarningsItem_Code_FIELDVALUEOVERRIDEN :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_FIELDVALUEOVERRIDEN = ResourceUpdate_WarningsItem_Code "FIELD_VALUE_OVERRIDEN"

-- | Warning that a resource is in use.
pattern ResourceUpdate_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING = ResourceUpdate_WarningsItem_Code "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"

-- | A resource depends on a missing type
pattern ResourceUpdate_WarningsItem_Code_MISSINGTYPEDEPENDENCY :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_MISSINGTYPEDEPENDENCY = ResourceUpdate_WarningsItem_Code "MISSING_TYPE_DEPENDENCY"

-- | Warning that is present in an external api call
pattern ResourceUpdate_WarningsItem_Code_EXTERNALAPIWARNING :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_EXTERNALAPIWARNING = ResourceUpdate_WarningsItem_Code "EXTERNAL_API_WARNING"

-- | When a resource schema validation is ignored.
pattern ResourceUpdate_WarningsItem_Code_SCHEMAVALIDATIONIGNORED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_SCHEMAVALIDATIONIGNORED = ResourceUpdate_WarningsItem_Code "SCHEMA_VALIDATION_IGNORED"

-- | When undeclared properties in the schema are present
pattern ResourceUpdate_WarningsItem_Code_UNDECLAREDPROPERTIES :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_UNDECLAREDPROPERTIES = ResourceUpdate_WarningsItem_Code "UNDECLARED_PROPERTIES"

-- | When deploying and at least one of the resources has a type marked as experimental
pattern ResourceUpdate_WarningsItem_Code_EXPERIMENTALTYPEUSED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_EXPERIMENTALTYPEUSED = ResourceUpdate_WarningsItem_Code "EXPERIMENTAL_TYPE_USED"

-- | When deploying and at least one of the resources has a type marked as deprecated
pattern ResourceUpdate_WarningsItem_Code_DEPRECATEDTYPEUSED :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_DEPRECATEDTYPEUSED = ResourceUpdate_WarningsItem_Code "DEPRECATED_TYPE_USED"

-- | Success is reported, but some results may be missing due to errors
pattern ResourceUpdate_WarningsItem_Code_PARTIALSUCCESS :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_PARTIALSUCCESS = ResourceUpdate_WarningsItem_Code "PARTIAL_SUCCESS"

-- | When deploying a deployment with a exceedingly large number of resources
pattern ResourceUpdate_WarningsItem_Code_LARGEDEPLOYMENTWARNING :: ResourceUpdate_WarningsItem_Code
pattern ResourceUpdate_WarningsItem_Code_LARGEDEPLOYMENTWARNING = ResourceUpdate_WarningsItem_Code "LARGE_DEPLOYMENT_WARNING"

{-# COMPLETE
  ResourceUpdate_WarningsItem_Code_DEPRECATEDRESOURCEUSED,
  ResourceUpdate_WarningsItem_Code_NORESULTSONPAGE,
  ResourceUpdate_WarningsItem_Code_Unreachable,
  ResourceUpdate_WarningsItem_Code_NEXTHOPADDRESSNOTASSIGNED,
  ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTFOUND,
  ResourceUpdate_WarningsItem_Code_NEXTHOPINSTANCENOTONNETWORK,
  ResourceUpdate_WarningsItem_Code_NEXTHOPCANNOTIPFORWARD,
  ResourceUpdate_WarningsItem_Code_NEXTHOPNOTRUNNING,
  ResourceUpdate_WarningsItem_Code_INJECTEDKERNELSDEPRECATED,
  ResourceUpdate_WarningsItem_Code_REQUIREDTOSAGREEMENT,
  ResourceUpdate_WarningsItem_Code_DISKSIZELARGERTHANIMAGESIZE,
  ResourceUpdate_WarningsItem_Code_RESOURCENOTDELETED,
  ResourceUpdate_WarningsItem_Code_SINGLEINSTANCEPROPERTYTEMPLATE,
  ResourceUpdate_WarningsItem_Code_NOTCRITICALERROR,
  ResourceUpdate_WarningsItem_Code_CLEANUPFAILED,
  ResourceUpdate_WarningsItem_Code_FIELDVALUEOVERRIDEN,
  ResourceUpdate_WarningsItem_Code_RESOURCEINUSEBYOTHERRESOURCEWARNING,
  ResourceUpdate_WarningsItem_Code_MISSINGTYPEDEPENDENCY,
  ResourceUpdate_WarningsItem_Code_EXTERNALAPIWARNING,
  ResourceUpdate_WarningsItem_Code_SCHEMAVALIDATIONIGNORED,
  ResourceUpdate_WarningsItem_Code_UNDECLAREDPROPERTIES,
  ResourceUpdate_WarningsItem_Code_EXPERIMENTALTYPEUSED,
  ResourceUpdate_WarningsItem_Code_DEPRECATEDTYPEUSED,
  ResourceUpdate_WarningsItem_Code_PARTIALSUCCESS,
  ResourceUpdate_WarningsItem_Code_LARGEDEPLOYMENTWARNING,
  ResourceUpdate_WarningsItem_Code
  #-}

-- | Sets the policy to use for deleting resources.
newtype DeploymentsDeleteDeletePolicy = DeploymentsDeleteDeletePolicy {fromDeploymentsDeleteDeletePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsDeleteDeletePolicy_Delete' :: DeploymentsDeleteDeletePolicy
pattern DeploymentsDeleteDeletePolicy_Delete' = DeploymentsDeleteDeletePolicy "DELETE"

-- |
pattern DeploymentsDeleteDeletePolicy_Abandon :: DeploymentsDeleteDeletePolicy
pattern DeploymentsDeleteDeletePolicy_Abandon = DeploymentsDeleteDeletePolicy "ABANDON"

{-# COMPLETE
  DeploymentsDeleteDeletePolicy_Delete',
  DeploymentsDeleteDeletePolicy_Abandon,
  DeploymentsDeleteDeletePolicy
  #-}

-- | Sets the policy to use for creating new resources.
newtype DeploymentsInsertCreatePolicy = DeploymentsInsertCreatePolicy {fromDeploymentsInsertCreatePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsInsertCreatePolicy_CREATEORACQUIRE :: DeploymentsInsertCreatePolicy
pattern DeploymentsInsertCreatePolicy_CREATEORACQUIRE = DeploymentsInsertCreatePolicy "CREATE_OR_ACQUIRE"

-- |
pattern DeploymentsInsertCreatePolicy_Acquire :: DeploymentsInsertCreatePolicy
pattern DeploymentsInsertCreatePolicy_Acquire = DeploymentsInsertCreatePolicy "ACQUIRE"

{-# COMPLETE
  DeploymentsInsertCreatePolicy_CREATEORACQUIRE,
  DeploymentsInsertCreatePolicy_Acquire,
  DeploymentsInsertCreatePolicy
  #-}

-- | Sets the policy to use for creating new resources.
newtype DeploymentsPatchCreatePolicy = DeploymentsPatchCreatePolicy {fromDeploymentsPatchCreatePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsPatchCreatePolicy_CREATEORACQUIRE :: DeploymentsPatchCreatePolicy
pattern DeploymentsPatchCreatePolicy_CREATEORACQUIRE = DeploymentsPatchCreatePolicy "CREATE_OR_ACQUIRE"

-- |
pattern DeploymentsPatchCreatePolicy_Acquire :: DeploymentsPatchCreatePolicy
pattern DeploymentsPatchCreatePolicy_Acquire = DeploymentsPatchCreatePolicy "ACQUIRE"

{-# COMPLETE
  DeploymentsPatchCreatePolicy_CREATEORACQUIRE,
  DeploymentsPatchCreatePolicy_Acquire,
  DeploymentsPatchCreatePolicy
  #-}

-- | Sets the policy to use for deleting resources.
newtype DeploymentsPatchDeletePolicy = DeploymentsPatchDeletePolicy {fromDeploymentsPatchDeletePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsPatchDeletePolicy_Delete' :: DeploymentsPatchDeletePolicy
pattern DeploymentsPatchDeletePolicy_Delete' = DeploymentsPatchDeletePolicy "DELETE"

-- |
pattern DeploymentsPatchDeletePolicy_Abandon :: DeploymentsPatchDeletePolicy
pattern DeploymentsPatchDeletePolicy_Abandon = DeploymentsPatchDeletePolicy "ABANDON"

{-# COMPLETE
  DeploymentsPatchDeletePolicy_Delete',
  DeploymentsPatchDeletePolicy_Abandon,
  DeploymentsPatchDeletePolicy
  #-}

-- | Sets the policy to use for creating new resources.
newtype DeploymentsUpdateCreatePolicy = DeploymentsUpdateCreatePolicy {fromDeploymentsUpdateCreatePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsUpdateCreatePolicy_CREATEORACQUIRE :: DeploymentsUpdateCreatePolicy
pattern DeploymentsUpdateCreatePolicy_CREATEORACQUIRE = DeploymentsUpdateCreatePolicy "CREATE_OR_ACQUIRE"

-- |
pattern DeploymentsUpdateCreatePolicy_Acquire :: DeploymentsUpdateCreatePolicy
pattern DeploymentsUpdateCreatePolicy_Acquire = DeploymentsUpdateCreatePolicy "ACQUIRE"

{-# COMPLETE
  DeploymentsUpdateCreatePolicy_CREATEORACQUIRE,
  DeploymentsUpdateCreatePolicy_Acquire,
  DeploymentsUpdateCreatePolicy
  #-}

-- | Sets the policy to use for deleting resources.
newtype DeploymentsUpdateDeletePolicy = DeploymentsUpdateDeletePolicy {fromDeploymentsUpdateDeletePolicy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DeploymentsUpdateDeletePolicy_Delete' :: DeploymentsUpdateDeletePolicy
pattern DeploymentsUpdateDeletePolicy_Delete' = DeploymentsUpdateDeletePolicy "DELETE"

-- |
pattern DeploymentsUpdateDeletePolicy_Abandon :: DeploymentsUpdateDeletePolicy
pattern DeploymentsUpdateDeletePolicy_Abandon = DeploymentsUpdateDeletePolicy "ABANDON"

{-# COMPLETE
  DeploymentsUpdateDeletePolicy_Delete',
  DeploymentsUpdateDeletePolicy_Abandon,
  DeploymentsUpdateDeletePolicy
  #-}
