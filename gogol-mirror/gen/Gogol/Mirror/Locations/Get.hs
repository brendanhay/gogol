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
-- Module      : Gogol.Mirror.Locations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single location by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.locations.get@.
module Gogol.Mirror.Locations.Get
  ( -- * Resource
    MirrorLocationsGetResource,

    -- ** Constructing a Request
    newMirrorLocationsGet,
    MirrorLocationsGet,
  )
where

import Gogol.Mirror.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @mirror.locations.get@ method which the
-- 'MirrorLocationsGet' request conforms to.
type MirrorLocationsGetResource =
  "mirror"
    Core.:> "v1"
    Core.:> "locations"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Location

-- | Gets a single location by ID.
--
-- /See:/ 'newMirrorLocationsGet' smart constructor.
newtype MirrorLocationsGet = MirrorLocationsGet
  { -- | The ID of the location or latest for the last known location.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorLocationsGet' with the minimum fields required to make a request.
newMirrorLocationsGet ::
  -- |  The ID of the location or latest for the last known location. See 'id'.
  Core.Text ->
  MirrorLocationsGet
newMirrorLocationsGet id = MirrorLocationsGet {id = id}

instance Core.GoogleRequest MirrorLocationsGet where
  type Rs MirrorLocationsGet = Location
  type
    Scopes MirrorLocationsGet =
      '[ "https://www.googleapis.com/auth/glass.location",
         "https://www.googleapis.com/auth/glass.timeline"
       ]
  requestClient MirrorLocationsGet {..} =
    go id (Core.Just Core.AltJSON) mirrorService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MirrorLocationsGetResource)
          Core.mempty
