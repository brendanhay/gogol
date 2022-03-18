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
-- Module      : Gogol.YouTube.Comments.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.update@.
module Gogol.YouTube.Comments.Update
    (
    -- * Resource
      YouTubeCommentsUpdateResource

    -- ** Constructing a Request
    , newYouTubeCommentsUpdate
    , YouTubeCommentsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.comments.update@ method which the
-- 'YouTubeCommentsUpdate' request conforms to.
type YouTubeCommentsUpdateResource =
     "youtube" Core.:>
       "v3" Core.:>
         "comments" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Comment Core.:>
                           Core.Put '[Core.JSON] Comment

-- | Updates an existing resource.
--
-- /See:/ 'newYouTubeCommentsUpdate' smart constructor.
data YouTubeCommentsUpdate = YouTubeCommentsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The /part/ parameter identifies the properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: Comment
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentsUpdate' with the minimum fields required to make a request.
newYouTubeCommentsUpdate 
    ::  [Core.Text]
       -- ^  The /part/ parameter identifies the properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update. See 'part'.
    -> Comment
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeCommentsUpdate
newYouTubeCommentsUpdate part payload =
  YouTubeCommentsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , part = part
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCommentsUpdate
         where
        type Rs YouTubeCommentsUpdate = Comment
        type Scopes YouTubeCommentsUpdate =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient YouTubeCommentsUpdate{..}
          = go part xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeCommentsUpdateResource)
                      Core.mempty

