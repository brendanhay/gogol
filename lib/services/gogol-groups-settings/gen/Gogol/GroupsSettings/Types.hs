{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GroupsSettings.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.GroupsSettings.Types
    (
    -- * Configuration
      groupsSettingsService

    -- * OAuth Scopes
    , Apps'Groups'Settings

    -- * Types

    -- ** Groups
    , Groups (..)
    , newGroups
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GroupsSettings.Internal.Product
import Gogol.GroupsSettings.Internal.Sum

-- | Default request referring to version @v1@ of the Groups Settings API. This contains the host and root path used as a starting point for constructing service requests.
groupsSettingsService :: Core.ServiceConfig
groupsSettingsService
  = Core.defaultService
      (Core.ServiceId "groupssettings:v1")
      "www.googleapis.com"

-- | View and manage the settings of a G Suite group
type Apps'Groups'Settings = "https://www.googleapis.com/auth/apps.groups.settings"
