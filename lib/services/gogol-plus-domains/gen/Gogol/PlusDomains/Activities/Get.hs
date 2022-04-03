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
-- Module      : Gogol.PlusDomains.Activities.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.get@.
module Gogol.PlusDomains.Activities.Get
  ( -- * Resource
    PlusDomainsActivitiesGetResource,

    -- ** Constructing a Request
    PlusDomainsActivitiesGet (..),
    newPlusDomainsActivitiesGet,
  )
where

import Gogol.PlusDomains.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @plusDomains.activities.get@ method which the
-- 'PlusDomainsActivitiesGet' request conforms to.
type PlusDomainsActivitiesGetResource =
  "plusDomains"
    Core.:> "v1"
    Core.:> "activities"
    Core.:> Core.Capture "activityId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Activity

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusDomainsActivitiesGet' smart constructor.
newtype PlusDomainsActivitiesGet = PlusDomainsActivitiesGet
  { -- | The ID of the activity to get.
    activityId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsActivitiesGet' with the minimum fields required to make a request.
newPlusDomainsActivitiesGet ::
  -- |  The ID of the activity to get. See 'activityId'.
  Core.Text ->
  PlusDomainsActivitiesGet
newPlusDomainsActivitiesGet activityId =
  PlusDomainsActivitiesGet {activityId = activityId}

instance Core.GoogleRequest PlusDomainsActivitiesGet where
  type Rs PlusDomainsActivitiesGet = Activity
  type
    Scopes PlusDomainsActivitiesGet =
      '[Plus'Login, Plus'Me, Plus'Stream'Read]
  requestClient PlusDomainsActivitiesGet {..} =
    go
      activityId
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlusDomainsActivitiesGetResource
          )
          Core.mempty
