-- |
-- Module      : Gogol.AndroidPublisher.Grants.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.grants.patch@.
module Gogol.AndroidPublisher.Grants.Patch
    (
    -- * Constructing a Request
    AndroidPublisherGrantsPatch (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherGrantsPatch (..),
#endif
    mkAndroidPublisherGrantsPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Updates access for the user to the given package.
--
-- Construct a default value using the 'MkAndroidPublisherGrantsPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherGrantsPatch = AndroidPublisherGrantsPatch
    {
      -- | Multipart request metadata.
      meta :: Grant
      -- | Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\".
    , name :: Core.Text
      -- | Optional. The list of fields to be updated.
    , updateMask :: Core.Maybe Core.FieldMask
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherGrantsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherGrantsPatch :: Grant -> Core.Text -> AndroidPublisherGrantsPatch
pattern MkAndroidPublisherGrantsPatch{meta, name} =
        AndroidPublisherGrantsPatch{meta = meta, name = name, updateMask = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherGrantsPatch "Please use MkAndroidPublisherGrantsPatch instead" #-}
#endif

-- | Create 'AndroidPublisherGrantsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherGrantsPatch :: Grant -> Core.Text -> AndroidPublisherGrantsPatch
mkAndroidPublisherGrantsPatch meta name = AndroidPublisherGrantsPatch{meta = meta, name = name, updateMask = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherGrantsPatch where
        type Core.Scopes AndroidPublisherGrantsPatch = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherGrantsPatch = AndroidPublisherService
        type Core.Response AndroidPublisherGrantsPatch = Grant
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherGrantsPatch{..}
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
