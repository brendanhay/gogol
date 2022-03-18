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
-- Module      : Gogol.Plus.Activities.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.activities.get@.
module Gogol.Plus.Activities.Get
    (
    -- * Resource
      PlusActivitiesGetResource

    -- ** Constructing a Request
    , newPlusActivitiesGet
    , PlusActivitiesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Plus.Types

-- | A resource alias for @plus.activities.get@ method which the
-- 'PlusActivitiesGet' request conforms to.
type PlusActivitiesGetResource =
     "plus" Core.:>
       "v1" Core.:>
         "activities" Core.:>
           Core.Capture "activityId" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] Activity

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusActivitiesGet' smart constructor.
newtype PlusActivitiesGet = PlusActivitiesGet
    {
      -- | The ID of the activity to get.
      activityId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusActivitiesGet' with the minimum fields required to make a request.
newPlusActivitiesGet 
    ::  Core.Text
       -- ^  The ID of the activity to get. See 'activityId'.
    -> PlusActivitiesGet
newPlusActivitiesGet activityId = PlusActivitiesGet {activityId = activityId}

instance Core.GoogleRequest PlusActivitiesGet where
        type Rs PlusActivitiesGet = Activity
        type Scopes PlusActivitiesGet =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient PlusActivitiesGet{..}
          = go activityId (Core.Just Core.AltJSON) plusService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy PlusActivitiesGetResource)
                      Core.mempty

