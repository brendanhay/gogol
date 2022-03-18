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
-- Module      : Gogol.Games.Applications.GetEndPoint
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a URL for the requested end point type.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.getEndPoint@.
module Gogol.Games.Applications.GetEndPoint
    (
    -- * Resource
      GamesApplicationsGetEndPointResource

    -- ** Constructing a Request
    , newGamesApplicationsGetEndPoint
    , GamesApplicationsGetEndPoint
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.applications.getEndPoint@ method which the
-- 'GamesApplicationsGetEndPoint' request conforms to.
type GamesApplicationsGetEndPointResource =
     "games" Core.:>
       "v1" Core.:>
         "applications" Core.:>
           "getEndPoint" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "applicationId" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "endPointType"
                       ApplicationsGetEndPointEndPointType
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON] EndPoint

-- | Returns a URL for the requested end point type.
--
-- /See:/ 'newGamesApplicationsGetEndPoint' smart constructor.
data GamesApplicationsGetEndPoint = GamesApplicationsGetEndPoint
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The application ID from the Google Play developer console.
    , applicationId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Type of endpoint being requested.
    , endPointType :: (Core.Maybe ApplicationsGetEndPointEndPointType)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesApplicationsGetEndPoint' with the minimum fields required to make a request.
newGamesApplicationsGetEndPoint 
    ::  GamesApplicationsGetEndPoint
newGamesApplicationsGetEndPoint =
  GamesApplicationsGetEndPoint
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , applicationId = Core.Nothing
    , callback = Core.Nothing
    , endPointType = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesApplicationsGetEndPoint
         where
        type Rs GamesApplicationsGetEndPoint = EndPoint
        type Scopes GamesApplicationsGetEndPoint =
             '["https://www.googleapis.com/auth/games"]
        requestClient GamesApplicationsGetEndPoint{..}
          = go xgafv accessToken applicationId callback
              endPointType
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesApplicationsGetEndPointResource)
                      Core.mempty

