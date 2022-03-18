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
-- Module      : Gogol.YouTube.ThirdPartyLinks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thirdPartyLinks.update@.
module Gogol.YouTube.ThirdPartyLinks.Update
    (
    -- * Resource
      YouTubeThirdPartyLinksUpdateResource

    -- ** Constructing a Request
    , newYouTubeThirdPartyLinksUpdate
    , YouTubeThirdPartyLinksUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.thirdPartyLinks.update@ method which the
-- 'YouTubeThirdPartyLinksUpdate' request conforms to.
type YouTubeThirdPartyLinksUpdateResource =
     "youtube" Core.:>
       "v3" Core.:>
         "thirdPartyLinks" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "externalChannelId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ThirdPartyLink Core.:>
                             Core.Put '[Core.JSON] ThirdPartyLink

-- | Updates an existing resource.
--
-- /See:/ 'newYouTubeThirdPartyLinksUpdate' smart constructor.
data YouTubeThirdPartyLinksUpdate = YouTubeThirdPartyLinksUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Channel ID to which changes should be applied, for delegation.
    , externalChannelId :: (Core.Maybe Core.Text)
      -- | The /part/ parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet.
    , part :: [Core.Text]
      -- | Multipart request metadata.
    , payload :: ThirdPartyLink
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeThirdPartyLinksUpdate' with the minimum fields required to make a request.
newYouTubeThirdPartyLinksUpdate 
    ::  [Core.Text]
       -- ^  The /part/ parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet. See 'part'.
    -> ThirdPartyLink
       -- ^  Multipart request metadata. See 'payload'.
    -> YouTubeThirdPartyLinksUpdate
newYouTubeThirdPartyLinksUpdate part payload =
  YouTubeThirdPartyLinksUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , externalChannelId = Core.Nothing
    , part = part
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeThirdPartyLinksUpdate
         where
        type Rs YouTubeThirdPartyLinksUpdate = ThirdPartyLink
        type Scopes YouTubeThirdPartyLinksUpdate = '[]
        requestClient YouTubeThirdPartyLinksUpdate{..}
          = go part xgafv accessToken callback
              externalChannelId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeThirdPartyLinksUpdateResource)
                      Core.mempty

