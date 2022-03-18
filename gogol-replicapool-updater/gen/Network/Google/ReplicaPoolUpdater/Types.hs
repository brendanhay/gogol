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
-- Module      : Network.Google.ReplicaPoolUpdater.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ReplicaPoolUpdater.Types
  ( -- * Configuration
    replicaPoolUpdaterService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    replicapoolScope,
    replicapoolReadOnlyScope,

    -- * Types

    -- ** InstanceUpdate
    InstanceUpdate (..),
    newInstanceUpdate,

    -- ** InstanceUpdate_Error
    InstanceUpdate_Error (..),
    newInstanceUpdate_Error,

    -- ** InstanceUpdate_Error_ErrorsItem
    InstanceUpdate_Error_ErrorsItem (..),
    newInstanceUpdate_Error_ErrorsItem,

    -- ** InstanceUpdateList
    InstanceUpdateList (..),
    newInstanceUpdateList,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- ** Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- ** Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- ** Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- ** OperationList
    OperationList (..),
    newOperationList,

    -- ** RollingUpdate
    RollingUpdate (..),
    newRollingUpdate,

    -- ** RollingUpdate_Error
    RollingUpdate_Error (..),
    newRollingUpdate_Error,

    -- ** RollingUpdate_Error_ErrorsItem
    RollingUpdate_Error_ErrorsItem (..),
    newRollingUpdate_Error_ErrorsItem,

    -- ** RollingUpdate_Policy
    RollingUpdate_Policy (..),
    newRollingUpdate_Policy,

    -- ** RollingUpdateList
    RollingUpdateList (..),
    newRollingUpdateList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ReplicaPoolUpdater.Internal.Product
import Network.Google.ReplicaPoolUpdater.Internal.Sum

-- | Default request referring to version @v1beta1@ of the Google Compute Engine Instance Group Updater API. This contains the host and root path used as a starting point for constructing service requests.
replicaPoolUpdaterService :: Core.ServiceConfig
replicaPoolUpdaterService =
  Core.defaultService
    (Core.ServiceId "replicapoolupdater:v1beta1")
    "www.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Core.Proxy

-- | View and manage replica pools
replicapoolScope :: Core.Proxy '["https://www.googleapis.com/auth/replicapool"]
replicapoolScope = Core.Proxy

-- | View replica pools
replicapoolReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/replicapool.readonly"]
replicapoolReadOnlyScope = Core.Proxy
