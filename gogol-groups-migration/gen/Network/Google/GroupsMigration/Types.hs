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
-- Module      : Network.Google.GroupsMigration.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.GroupsMigration.Types
  ( -- * Configuration
    groupsMigrationService,

    -- * OAuth Scopes
    appsGroupsMigrationScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Groups
    Groups (..),
    newGroups,
  )
where

import Network.Google.GroupsMigration.Internal.Product
import Network.Google.GroupsMigration.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Groups Migration API. This contains the host and root path used as a starting point for constructing service requests.
groupsMigrationService :: Core.ServiceConfig
groupsMigrationService =
  Core.defaultService
    (Core.ServiceId "groupsmigration:v1")
    "groupsmigration.googleapis.com"

-- | Upload messages to any Google group in your domain
appsGroupsMigrationScope :: Core.Proxy '["https://www.googleapis.com/auth/apps.groups.migration"]
appsGroupsMigrationScope = Core.Proxy
