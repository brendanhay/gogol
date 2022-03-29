-- |
-- Module      : Gogol.AndroidPublisher.Reviews.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.list@.
module Gogol.AndroidPublisher.Reviews.List
    (
    -- * Constructing a Request
    AndroidPublisherReviewsList (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherReviewsList (..),
#endif
    mkAndroidPublisherReviewsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists all reviews.
--
-- Construct a default value using the 'MkAndroidPublisherReviewsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherReviewsList = AndroidPublisherReviewsList
    {
      -- | How many results the list operation should return.
      maxResults :: Core.Maybe Core.Word32
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | The index of the first element to return.
    , startIndex :: Core.Maybe Core.Word32
      -- | Pagination token. If empty, list starts at the first review.
    , token :: Core.Maybe Core.Text
      -- | Language localization code.
    , translationLanguage :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherReviewsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherReviewsList :: Core.Text -> AndroidPublisherReviewsList
pattern MkAndroidPublisherReviewsList{packageName} =
        AndroidPublisherReviewsList{maxResults = Core.Nothing, packageName = packageName, startIndex = Core.Nothing,
                                    token = Core.Nothing, translationLanguage = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherReviewsList "Please use MkAndroidPublisherReviewsList instead" #-}
#endif

-- | Create 'AndroidPublisherReviewsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherReviewsList :: Core.Text -> AndroidPublisherReviewsList
mkAndroidPublisherReviewsList packageName
  = AndroidPublisherReviewsList{maxResults = Core.Nothing, packageName = packageName, startIndex = Core.Nothing,
                                token = Core.Nothing, translationLanguage = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherReviewsList where
        type Core.Scopes AndroidPublisherReviewsList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherReviewsList = AndroidPublisherService
        type Core.Response AndroidPublisherReviewsList = ReviewsListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherReviewsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/reviews"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("maxResults",) Core.. Core.toQueryParam Core.<$> maxResults,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("startIndex",) Core.. Core.toQueryParam Core.<$> startIndex,
                                  ("token",) Core.. Core.toQueryParam Core.<$> token,
                                  ("translationLanguage",) Core.. Core.toQueryParam Core.<$> translationLanguage, Core.Just ("alt", "json")]}
