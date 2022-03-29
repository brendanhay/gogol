-- |
-- Module      : Gogol.AndroidPublisher.Users.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.patch@.
module Gogol.AndroidPublisher.Users.Patch
    (
    -- * Constructing a Request
    AndroidPublisherUsersPatch (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherUsersPatch (..),
#endif
    mkAndroidPublisherUsersPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Updates access for the user to the developer account.
--
-- Construct a default value using the 'MkAndroidPublisherUsersPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherUsersPatch = AndroidPublisherUsersPatch
    {
      -- | Multipart request metadata.
      meta :: User
      -- | Required. Resource name for this user, following the pattern \"developers\/{developer}\/users\/{email}\".
    , name :: Core.Text
      -- | Optional. The list of fields to be updated.
    , updateMask :: Core.Maybe Core.FieldMask
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherUsersPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherUsersPatch :: User -> Core.Text -> AndroidPublisherUsersPatch
pattern MkAndroidPublisherUsersPatch{meta, name} =
        AndroidPublisherUsersPatch{meta = meta, name = name, updateMask = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherUsersPatch "Please use MkAndroidPublisherUsersPatch instead" #-}
#endif

-- | Create 'AndroidPublisherUsersPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherUsersPatch :: User -> Core.Text -> AndroidPublisherUsersPatch
mkAndroidPublisherUsersPatch meta name = AndroidPublisherUsersPatch{meta = meta, name = name, updateMask = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherUsersPatch where
        type Core.Scopes AndroidPublisherUsersPatch = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherUsersPatch = AndroidPublisherService
        type Core.Response AndroidPublisherUsersPatch = User
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherUsersPatch{..}
          = serviceRequest{Core.method = "PATCH", Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder name],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("updateMask",) Core.. Core.toQueryParam Core.<$> updateMask, Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
