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
-- Module      : Gogol.DataFusion
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Data Fusion is a fully-managed, cloud native, enterprise data integration service for quickly building and managing data pipelines. It provides a graphical interface to increase time efficiency and reduce complexity, and allows business users, developers, and data scientists to easily and reliably build scalable data integration solutions to cleanse, prepare, blend, transfer and transform data without having to wrestle with infrastructure.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference>
module Gogol.DataFusion
  ( -- * Configuration
    dataFusionService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** datafusion.projects.locations.get
    DataFusionProjectsLocationsGetResource,
    DataFusionProjectsLocationsGet (..),
    newDataFusionProjectsLocationsGet,

    -- ** datafusion.projects.locations.instances.create
    DataFusionProjectsLocationsInstancesCreateResource,
    DataFusionProjectsLocationsInstancesCreate (..),
    newDataFusionProjectsLocationsInstancesCreate,

    -- ** datafusion.projects.locations.instances.delete
    DataFusionProjectsLocationsInstancesDeleteResource,
    DataFusionProjectsLocationsInstancesDelete (..),
    newDataFusionProjectsLocationsInstancesDelete,

    -- ** datafusion.projects.locations.instances.get
    DataFusionProjectsLocationsInstancesGetResource,
    DataFusionProjectsLocationsInstancesGet (..),
    newDataFusionProjectsLocationsInstancesGet,

    -- ** datafusion.projects.locations.instances.getIamPolicy
    DataFusionProjectsLocationsInstancesGetIamPolicyResource,
    DataFusionProjectsLocationsInstancesGetIamPolicy (..),
    newDataFusionProjectsLocationsInstancesGetIamPolicy,

    -- ** datafusion.projects.locations.instances.list
    DataFusionProjectsLocationsInstancesListResource,
    DataFusionProjectsLocationsInstancesList (..),
    newDataFusionProjectsLocationsInstancesList,

    -- ** datafusion.projects.locations.instances.patch
    DataFusionProjectsLocationsInstancesPatchResource,
    DataFusionProjectsLocationsInstancesPatch (..),
    newDataFusionProjectsLocationsInstancesPatch,

    -- ** datafusion.projects.locations.instances.restart
    DataFusionProjectsLocationsInstancesRestartResource,
    DataFusionProjectsLocationsInstancesRestart (..),
    newDataFusionProjectsLocationsInstancesRestart,

    -- ** datafusion.projects.locations.instances.setIamPolicy
    DataFusionProjectsLocationsInstancesSetIamPolicyResource,
    DataFusionProjectsLocationsInstancesSetIamPolicy (..),
    newDataFusionProjectsLocationsInstancesSetIamPolicy,

    -- ** datafusion.projects.locations.instances.testIamPermissions
    DataFusionProjectsLocationsInstancesTestIamPermissionsResource,
    DataFusionProjectsLocationsInstancesTestIamPermissions (..),
    newDataFusionProjectsLocationsInstancesTestIamPermissions,

    -- ** datafusion.projects.locations.list
    DataFusionProjectsLocationsListResource,
    DataFusionProjectsLocationsList (..),
    newDataFusionProjectsLocationsList,

    -- ** datafusion.projects.locations.operations.cancel
    DataFusionProjectsLocationsOperationsCancelResource,
    DataFusionProjectsLocationsOperationsCancel (..),
    newDataFusionProjectsLocationsOperationsCancel,

    -- ** datafusion.projects.locations.operations.delete
    DataFusionProjectsLocationsOperationsDeleteResource,
    DataFusionProjectsLocationsOperationsDelete (..),
    newDataFusionProjectsLocationsOperationsDelete,

    -- ** datafusion.projects.locations.operations.get
    DataFusionProjectsLocationsOperationsGetResource,
    DataFusionProjectsLocationsOperationsGet (..),
    newDataFusionProjectsLocationsOperationsGet,

    -- ** datafusion.projects.locations.operations.list
    DataFusionProjectsLocationsOperationsListResource,
    DataFusionProjectsLocationsOperationsList (..),
    newDataFusionProjectsLocationsOperationsList,

    -- ** datafusion.projects.locations.versions.list
    DataFusionProjectsLocationsVersionsListResource,
    DataFusionProjectsLocationsVersionsList (..),
    newDataFusionProjectsLocationsVersionsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Accelerator
    Accelerator (..),
    newAccelerator,

    -- ** Accelerator_AcceleratorType
    Accelerator_AcceleratorType (..),

    -- ** Accelerator_State
    Accelerator_State (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CryptoKeyConfig
    CryptoKeyConfig (..),
    newCryptoKeyConfig,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_DisabledReasonItem
    Instance_DisabledReasonItem (..),

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_Options
    Instance_Options (..),
    newInstance_Options,

    -- ** Instance_State
    Instance_State (..),

    -- ** Instance_Type
    Instance_Type (..),

    -- ** ListAvailableVersionsResponse
    ListAvailableVersionsResponse (..),
    newListAvailableVersionsResponse,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** OperationMetadata_AdditionalStatus
    OperationMetadata_AdditionalStatus (..),
    newOperationMetadata_AdditionalStatus,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** RestartInstanceRequest
    RestartInstanceRequest (..),
    newRestartInstanceRequest,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** Version
    Version (..),
    newVersion,

    -- ** Version_Type
    Version_Type (..),
  )
where

import Gogol.DataFusion.Projects.Locations.Get
import Gogol.DataFusion.Projects.Locations.Instances.Create
import Gogol.DataFusion.Projects.Locations.Instances.Delete
import Gogol.DataFusion.Projects.Locations.Instances.Get
import Gogol.DataFusion.Projects.Locations.Instances.GetIamPolicy
import Gogol.DataFusion.Projects.Locations.Instances.List
import Gogol.DataFusion.Projects.Locations.Instances.Patch
import Gogol.DataFusion.Projects.Locations.Instances.Restart
import Gogol.DataFusion.Projects.Locations.Instances.SetIamPolicy
import Gogol.DataFusion.Projects.Locations.Instances.TestIamPermissions
import Gogol.DataFusion.Projects.Locations.List
import Gogol.DataFusion.Projects.Locations.Operations.Cancel
import Gogol.DataFusion.Projects.Locations.Operations.Delete
import Gogol.DataFusion.Projects.Locations.Operations.Get
import Gogol.DataFusion.Projects.Locations.Operations.List
import Gogol.DataFusion.Projects.Locations.Versions.List
import Gogol.DataFusion.Types
