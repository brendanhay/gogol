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
-- Module      : Gogol.Composer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Apache Airflow environments on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference>
module Gogol.Composer
  ( -- * Configuration
    composerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** composer.projects.locations.environments.create
    ComposerProjectsLocationsEnvironmentsCreateResource,
    newComposerProjectsLocationsEnvironmentsCreate,
    ComposerProjectsLocationsEnvironmentsCreate,

    -- ** composer.projects.locations.environments.delete
    ComposerProjectsLocationsEnvironmentsDeleteResource,
    newComposerProjectsLocationsEnvironmentsDelete,
    ComposerProjectsLocationsEnvironmentsDelete,

    -- ** composer.projects.locations.environments.get
    ComposerProjectsLocationsEnvironmentsGetResource,
    newComposerProjectsLocationsEnvironmentsGet,
    ComposerProjectsLocationsEnvironmentsGet,

    -- ** composer.projects.locations.environments.list
    ComposerProjectsLocationsEnvironmentsListResource,
    newComposerProjectsLocationsEnvironmentsList,
    ComposerProjectsLocationsEnvironmentsList,

    -- ** composer.projects.locations.environments.patch
    ComposerProjectsLocationsEnvironmentsPatchResource,
    newComposerProjectsLocationsEnvironmentsPatch,
    ComposerProjectsLocationsEnvironmentsPatch,

    -- ** composer.projects.locations.imageVersions.list
    ComposerProjectsLocationsImageVersionsListResource,
    newComposerProjectsLocationsImageVersionsList,
    ComposerProjectsLocationsImageVersionsList,

    -- ** composer.projects.locations.operations.delete
    ComposerProjectsLocationsOperationsDeleteResource,
    newComposerProjectsLocationsOperationsDelete,
    ComposerProjectsLocationsOperationsDelete,

    -- ** composer.projects.locations.operations.get
    ComposerProjectsLocationsOperationsGetResource,
    newComposerProjectsLocationsOperationsGet,
    ComposerProjectsLocationsOperationsGet,

    -- ** composer.projects.locations.operations.list
    ComposerProjectsLocationsOperationsListResource,
    newComposerProjectsLocationsOperationsList,
    ComposerProjectsLocationsOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AllowedIpRange
    AllowedIpRange (..),
    newAllowedIpRange,

    -- ** CheckUpgradeResponse
    CheckUpgradeResponse (..),
    newCheckUpgradeResponse,

    -- ** CheckUpgradeResponse_ContainsPypiModulesConflict
    CheckUpgradeResponse_ContainsPypiModulesConflict (..),

    -- ** CheckUpgradeResponse_PypiDependencies
    CheckUpgradeResponse_PypiDependencies (..),
    newCheckUpgradeResponse_PypiDependencies,

    -- ** DatabaseConfig
    DatabaseConfig (..),
    newDatabaseConfig,

    -- ** Date
    Date (..),
    newDate,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_Labels
    Environment_Labels (..),
    newEnvironment_Labels,

    -- ** Environment_State
    Environment_State (..),

    -- ** EnvironmentConfig
    EnvironmentConfig (..),
    newEnvironmentConfig,

    -- ** EnvironmentConfig_EnvironmentSize
    EnvironmentConfig_EnvironmentSize (..),

    -- ** IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- ** ImageVersion
    ImageVersion (..),
    newImageVersion,

    -- ** ListEnvironmentsResponse
    ListEnvironmentsResponse (..),
    newListEnvironmentsResponse,

    -- ** ListImageVersionsResponse
    ListImageVersionsResponse (..),
    newListImageVersionsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- ** NodeConfig
    NodeConfig (..),
    newNodeConfig,

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

    -- ** OperationMetadata_OperationType
    OperationMetadata_OperationType (..),

    -- ** OperationMetadata_State
    OperationMetadata_State (..),

    -- ** PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- ** PrivateEnvironmentConfig
    PrivateEnvironmentConfig (..),
    newPrivateEnvironmentConfig,

    -- ** SchedulerResource
    SchedulerResource (..),
    newSchedulerResource,

    -- ** SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- ** SoftwareConfig_AirflowConfigOverrides
    SoftwareConfig_AirflowConfigOverrides (..),
    newSoftwareConfig_AirflowConfigOverrides,

    -- ** SoftwareConfig_EnvVariables
    SoftwareConfig_EnvVariables (..),
    newSoftwareConfig_EnvVariables,

    -- ** SoftwareConfig_PypiPackages
    SoftwareConfig_PypiPackages (..),
    newSoftwareConfig_PypiPackages,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** WebServerConfig
    WebServerConfig (..),
    newWebServerConfig,

    -- ** WebServerNetworkAccessControl
    WebServerNetworkAccessControl (..),
    newWebServerNetworkAccessControl,

    -- ** WebServerResource
    WebServerResource (..),
    newWebServerResource,

    -- ** WorkerResource
    WorkerResource (..),
    newWorkerResource,

    -- ** WorkloadsConfig
    WorkloadsConfig (..),
    newWorkloadsConfig,
  )
where

import Gogol.Composer.Projects.Locations.Environments.Create
import Gogol.Composer.Projects.Locations.Environments.Delete
import Gogol.Composer.Projects.Locations.Environments.Get
import Gogol.Composer.Projects.Locations.Environments.List
import Gogol.Composer.Projects.Locations.Environments.Patch
import Gogol.Composer.Projects.Locations.ImageVersions.List
import Gogol.Composer.Projects.Locations.Operations.Delete
import Gogol.Composer.Projects.Locations.Operations.Get
import Gogol.Composer.Projects.Locations.Operations.List
import Gogol.Composer.Types
