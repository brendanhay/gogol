-- |
-- Module      : Gogol.Storage.Channels.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.channels.stop@.
module Gogol.Storage.Channels.Stop
    (
    -- * Constructing a Request
    StorageChannelsStop (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Stop watching resources through this channel.
newtype StorageChannelsStop = StorageChannelsStop
    {
      -- | Multipart request metadata.
      meta :: Channel
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest StorageChannelsStop where
        type Core.Scopes StorageChannelsStop =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageChannelsStop = StorageService
        type Core.Response StorageChannelsStop = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageChannelsStop{..}
          = serviceRequest{Core.method = "POST", Core.path = Core.toRequestPath ["/storage/v1/channels/stop"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
