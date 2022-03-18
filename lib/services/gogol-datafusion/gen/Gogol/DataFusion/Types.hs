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
-- Module      : Gogol.DataFusion.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DataFusion.Types
    (
    -- * Configuration
      dataFusionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Accelerator
    , Accelerator (..)
    , newAccelerator

    -- ** Accelerator_AcceleratorType
    , Accelerator_AcceleratorType (..)

    -- ** Accelerator_State
    , Accelerator_State (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CryptoKeyConfig
    , CryptoKeyConfig (..)
    , newCryptoKeyConfig

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** Instance
    , Instance (..)
    , newInstance

    -- ** Instance_DisabledReasonItem
    , Instance_DisabledReasonItem (..)

    -- ** Instance_Labels
    , Instance_Labels (..)
    , newInstance_Labels

    -- ** Instance_Options
    , Instance_Options (..)
    , newInstance_Options

    -- ** Instance_State
    , Instance_State (..)

    -- ** Instance_Type
    , Instance_Type (..)

    -- ** ListAvailableVersionsResponse
    , ListAvailableVersionsResponse (..)
    , newListAvailableVersionsResponse

    -- ** ListInstancesResponse
    , ListInstancesResponse (..)
    , newListInstancesResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** NetworkConfig
    , NetworkConfig (..)
    , newNetworkConfig

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** OperationMetadata
    , OperationMetadata (..)
    , newOperationMetadata

    -- ** OperationMetadata_AdditionalStatus
    , OperationMetadata_AdditionalStatus (..)
    , newOperationMetadata_AdditionalStatus

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** RestartInstanceRequest
    , RestartInstanceRequest (..)
    , newRestartInstanceRequest

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** Version
    , Version (..)
    , newVersion

    -- ** Version_Type
    , Version_Type (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DataFusion.Internal.Product
import Gogol.DataFusion.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Data Fusion API. This contains the host and root path used as a starting point for constructing service requests.
dataFusionService :: Core.ServiceConfig
dataFusionService
  = Core.defaultService
      (Core.ServiceId "datafusion:v1")
      "datafusion.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
