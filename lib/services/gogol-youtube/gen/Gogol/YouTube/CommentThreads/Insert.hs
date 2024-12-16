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
-- Module      : Gogol.YouTube.CommentThreads.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.commentThreads.insert@.
module Gogol.YouTube.CommentThreads.Insert
    (
    -- * Resource
      YouTubeCommentThreadsInsertResource

    -- ** Constructing a Request
    , YouTubeCommentThreadsInsert (..)
    , newYouTubeCommentThreadsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.commentThreads.insert@ method which the
-- 'YouTubeCommentThreadsInsert' request conforms to.
type YouTubeCommentThreadsInsertResource =
     "youtube" Core.:>
       "v3" Core.:>
         "commentThreads" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] CommentThread Core.:>
                           Core.Post '[Core.JSON] CommentThread

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeCommentThreadsInsert' smart constructor.
data YouTubeCommentThreadsInsert = YouTubeCommentThreadsInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The /part/ parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: CommentThread
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentThreadsInsert' with the minimum fields required to make a request.
newYouTubeCommentThreadsInsert 
    ::  [Core.Text]
       -- ^  The /part/ parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units. See 'part'.
    -> CommentThread
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeCommentThreadsInsert
newYouTubeCommentThreadsInsert part payload =
  YouTubeCommentThreadsInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , part = part
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeCommentThreadsInsert
         where
        type Rs YouTubeCommentThreadsInsert = CommentThread
        type Scopes YouTubeCommentThreadsInsert =
             '[Youtube'ForceSsl]
        requestClient YouTubeCommentThreadsInsert{..}
          = go part xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeCommentThreadsInsertResource)
                      Core.mempty

