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
-- Module      : Gogol.YouTube.LiveChatMessages.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.insert@.
module Gogol.YouTube.LiveChatMessages.Insert
    (
    -- * Resource
      YouTubeLiveChatMessagesInsertResource

    -- ** Constructing a Request
    , newYouTubeLiveChatMessagesInsert
    , YouTubeLiveChatMessagesInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.insert@ method which the
-- 'YouTubeLiveChatMessagesInsert' request conforms to.
type YouTubeLiveChatMessagesInsertResource =
     "youtube" Core.:>
       "v3" Core.:>
         "liveChat" Core.:>
           "messages" Core.:>
             Core.QueryParams "part" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] LiveChatMessage Core.:>
                             Core.Post '[Core.JSON] LiveChatMessage

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeLiveChatMessagesInsert' smart constructor.
data YouTubeLiveChatMessagesInsert = YouTubeLiveChatMessagesInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The /part/ parameter serves two purposes. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the parameter value to snippet.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: LiveChatMessage
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeLiveChatMessagesInsert' with the minimum fields required to make a request.
newYouTubeLiveChatMessagesInsert 
    ::  [Core.Text]
       -- ^  The /part/ parameter serves two purposes. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the parameter value to snippet. See 'part'.
    -> LiveChatMessage
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeLiveChatMessagesInsert
newYouTubeLiveChatMessagesInsert part payload =
  YouTubeLiveChatMessagesInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , part = part
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeLiveChatMessagesInsert
         where
        type Rs YouTubeLiveChatMessagesInsert =
             LiveChatMessage
        type Scopes YouTubeLiveChatMessagesInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient YouTubeLiveChatMessagesInsert{..}
          = go part xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeLiveChatMessagesInsertResource)
                      Core.mempty

