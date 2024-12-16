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
-- Module      : Gogol.Mirror.Locations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of locations for the user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.locations.list@.
module Gogol.Mirror.Locations.List
    (
    -- * Resource
      MirrorLocationsListResource

    -- ** Constructing a Request
    , MirrorLocationsList (..)
    , newMirrorLocationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Mirror.Types

-- | A resource alias for @mirror.locations.list@ method which the
-- 'MirrorLocationsList' request conforms to.
type MirrorLocationsListResource =
     "mirror" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           Core.QueryParam "alt" Core.AltJSON Core.:>
             Core.Get '[Core.JSON] LocationsListResponse

-- | Retrieves a list of locations for the user.
--
-- /See:/ 'newMirrorLocationsList' smart constructor.
data MirrorLocationsList = MirrorLocationsList
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorLocationsList' with the minimum fields required to make a request.
newMirrorLocationsList 
    ::  MirrorLocationsList
newMirrorLocationsList = MirrorLocationsList

instance Core.GoogleRequest MirrorLocationsList where
        type Rs MirrorLocationsList = LocationsListResponse
        type Scopes MirrorLocationsList =
             '[Glass'Location, Glass'Timeline]
        requestClient MirrorLocationsList{}
          = go (Core.Just Core.AltJSON) mirrorService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MirrorLocationsListResource)
                      Core.mempty

