-- |
-- Module      : Gogol.AndroidPublisher.Users.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.list@.
module Gogol.AndroidPublisher.Users.List
    (
    -- * Constructing a Request
    AndroidPublisherUsersList (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherUsersList (..),
#endif
    mkAndroidPublisherUsersList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists all users with access to a developer account.
--
-- Construct a default value using the 'MkAndroidPublisherUsersList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherUsersList = AndroidPublisherUsersList
    {
      -- | The maximum number of results to return. This must be set to -1 to disable pagination.
      pageSize :: Core.Maybe Core.Int32
      -- | A token received from a previous call to this method, in order to retrieve further results.
    , pageToken :: Core.Maybe Core.Text
      -- | Required. The developer account to fetch users from. Format: developers\/{developer}.
    , parent :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherUsersList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherUsersList :: Core.Text -> AndroidPublisherUsersList
pattern MkAndroidPublisherUsersList{parent} =
        AndroidPublisherUsersList{pageSize = Core.Nothing, pageToken = Core.Nothing, parent = parent}

{-# DEPRECATED mkAndroidPublisherUsersList "Please use MkAndroidPublisherUsersList instead" #-}
#endif

-- | Create 'AndroidPublisherUsersList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherUsersList :: Core.Text -> AndroidPublisherUsersList
mkAndroidPublisherUsersList parent
  = AndroidPublisherUsersList{pageSize = Core.Nothing, pageToken = Core.Nothing, parent = parent}
instance Core.GoogleRequest AndroidPublisherUsersList where
        type Core.Scopes AndroidPublisherUsersList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherUsersList = AndroidPublisherService
        type Core.Response AndroidPublisherUsersList = ListUsersResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherUsersList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder parent, "/users"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("pageSize",) Core.. Core.toQueryParam Core.<$> pageSize, ("pageToken",) Core.. Core.toQueryParam Core.<$> pageToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}
