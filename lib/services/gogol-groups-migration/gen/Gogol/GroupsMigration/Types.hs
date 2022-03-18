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
-- Module      : Gogol.GroupsMigration.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.GroupsMigration.Types
    (
    -- * Configuration
      groupsMigrationService

    -- * OAuth Scopes
    , appsGroupsMigrationScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Groups
    , Groups (..)
    , newGroups
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GroupsMigration.Internal.Product
import Gogol.GroupsMigration.Internal.Sum

-- | Default request referring to version @v1@ of the Groups Migration API. This contains the host and root path used as a starting point for constructing service requests.
groupsMigrationService :: Core.ServiceConfig
groupsMigrationService
  = Core.defaultService
      (Core.ServiceId "groupsmigration:v1")
      "groupsmigration.googleapis.com"

-- | Upload messages to any Google group in your domain
appsGroupsMigrationScope :: Core.Proxy '["https://www.googleapis.com/auth/apps.groups.migration"]
appsGroupsMigrationScope = Core.Proxy
