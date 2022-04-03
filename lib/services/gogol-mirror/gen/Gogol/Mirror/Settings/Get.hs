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
-- Module      : Gogol.Mirror.Settings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single setting by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.settings.get@.
module Gogol.Mirror.Settings.Get
  ( -- * Resource
    MirrorSettingsGetResource,

    -- ** Constructing a Request
    MirrorSettingsGet (..),
    newMirrorSettingsGet,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.settings.get@ method which the
-- 'MirrorSettingsGet' request conforms to.
type MirrorSettingsGetResource =
  "mirror"
    Core.:> "v1"
    Core.:> "settings"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Setting

-- | Gets a single setting by ID.
--
-- /See:/ 'newMirrorSettingsGet' smart constructor.
newtype MirrorSettingsGet = MirrorSettingsGet
  { -- | The ID of the setting. The following IDs are valid: - locale - The key to the user’s language\/locale (BCP 47 identifier) that Glassware should use to render localized content. - timezone - The key to the user’s current time zone region as defined in the tz database. Example: America\/Los_Angeles.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorSettingsGet' with the minimum fields required to make a request.
newMirrorSettingsGet ::
  -- |  The ID of the setting. The following IDs are valid: - locale - The key to the user’s language\/locale (BCP 47 identifier) that Glassware should use to render localized content. - timezone - The key to the user’s current time zone region as defined in the tz database. Example: America\/Los_Angeles. See 'id'.
  Core.Text ->
  MirrorSettingsGet
newMirrorSettingsGet id = MirrorSettingsGet {id = id}

instance Core.GoogleRequest MirrorSettingsGet where
  type Rs MirrorSettingsGet = Setting
  type Scopes MirrorSettingsGet = '[Glass'Timeline]
  requestClient MirrorSettingsGet {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorSettingsGetResource)
          Core.mempty
