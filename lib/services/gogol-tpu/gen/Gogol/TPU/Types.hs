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
-- Module      : Gogol.TPU.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.TPU.Types
    (
    -- * Configuration
      tPUService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AcceleratorType
    , AcceleratorType (..)
    , newAcceleratorType

    -- ** AccessConfig
    , AccessConfig (..)
    , newAccessConfig

    -- ** AttachedDisk
    , AttachedDisk (..)
    , newAttachedDisk

    -- ** AttachedDisk_Mode
    , AttachedDisk_Mode (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** GenerateServiceIdentityRequest
    , GenerateServiceIdentityRequest (..)
    , newGenerateServiceIdentityRequest

    -- ** GenerateServiceIdentityResponse
    , GenerateServiceIdentityResponse (..)
    , newGenerateServiceIdentityResponse

    -- ** GetGuestAttributesRequest
    , GetGuestAttributesRequest (..)
    , newGetGuestAttributesRequest

    -- ** GetGuestAttributesResponse
    , GetGuestAttributesResponse (..)
    , newGetGuestAttributesResponse

    -- ** GuestAttributes
    , GuestAttributes (..)
    , newGuestAttributes

    -- ** GuestAttributesEntry
    , GuestAttributesEntry (..)
    , newGuestAttributesEntry

    -- ** GuestAttributesValue
    , GuestAttributesValue (..)
    , newGuestAttributesValue

    -- ** ListAcceleratorTypesResponse
    , ListAcceleratorTypesResponse (..)
    , newListAcceleratorTypesResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListNodesResponse
    , ListNodesResponse (..)
    , newListNodesResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListRuntimeVersionsResponse
    , ListRuntimeVersionsResponse (..)
    , newListRuntimeVersionsResponse

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

    -- ** NetworkEndpoint
    , NetworkEndpoint (..)
    , newNetworkEndpoint

    -- ** Node
    , Node (..)
    , newNode

    -- ** Node_ApiVersion
    , Node_ApiVersion (..)

    -- ** Node_Health
    , Node_Health (..)

    -- ** Node_Labels
    , Node_Labels (..)
    , newNode_Labels

    -- ** Node_Metadata
    , Node_Metadata (..)
    , newNode_Metadata

    -- ** Node_State
    , Node_State (..)

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

    -- ** RuntimeVersion
    , RuntimeVersion (..)
    , newRuntimeVersion

    -- ** SchedulingConfig
    , SchedulingConfig (..)
    , newSchedulingConfig

    -- ** ServiceAccount
    , ServiceAccount (..)
    , newServiceAccount

    -- ** ServiceIdentity
    , ServiceIdentity (..)
    , newServiceIdentity

    -- ** StartNodeRequest
    , StartNodeRequest (..)
    , newStartNodeRequest

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** StopNodeRequest
    , StopNodeRequest (..)
    , newStopNodeRequest

    -- ** Symptom
    , Symptom (..)
    , newSymptom

    -- ** Symptom_SymptomType
    , Symptom_SymptomType (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Internal.Product
import Gogol.TPU.Internal.Sum

-- | Default request referring to version @v2alpha1@ of the Cloud TPU API. This contains the host and root path used as a starting point for constructing service requests.
tPUService :: Core.ServiceConfig
tPUService
  = Core.defaultService (Core.ServiceId "tpu:v2alpha1")
      "tpu.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
