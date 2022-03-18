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
-- Module      : Gogol.YouTube.LiveChatModerators.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatModerators.insert@.
module Gogol.YouTube.LiveChatModerators.Insert
    (
    -- * Resource
      YouTubeLiveChatModeratorsInsertResource

    -- ** Constructing a Request
    , newYouTubeLiveChatModeratorsInsert
    , YouTubeLiveChatModeratorsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.insert@ method which the
-- 'YouTubeLiveChatModeratorsInsert' request conforms to.
type YouTubeLiveChatModeratorsInsertResource =
     "youtube" Core.:>
       "v3" Core.:>
         "liveChat" Core.:>
           "moderators" Core.:>
             Core.QueryParams "part" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] LiveChatModerator Core.:>
                             Core.Post '[Core.JSON] LiveChatModerator

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeLiveChatModeratorsInsert' smart constructor.
data YouTubeLiveChatModeratorsInsert = YouTubeLiveChatModeratorsInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: LiveChatModerator
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatModeratorsInsert' with the minimum fields required to make a request.
newYouTubeLiveChatModeratorsInsert 
    ::  [Core.Text]
       -- ^  The /part/ parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet. See 'part'.
    -> LiveChatModerator
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeLiveChatModeratorsInsert
newYouTubeLiveChatModeratorsInsert part payload =
  YouTubeLiveChatModeratorsInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , part = part
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeLiveChatModeratorsInsert
         where
        type Rs YouTubeLiveChatModeratorsInsert =
             LiveChatModerator
        type Scopes YouTubeLiveChatModeratorsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient YouTubeLiveChatModeratorsInsert{..}
          = go part xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeLiveChatModeratorsInsertResource)
                      Core.mempty

