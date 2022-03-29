-- |
-- Module      : Gogol.AndroidPublisher.Reviews.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.get@.
module Gogol.AndroidPublisher.Reviews.Get
    (
    -- * Constructing a Request
    AndroidPublisherReviewsGet (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherReviewsGet (..),
#endif
    mkAndroidPublisherReviewsGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Gets a single review.
--
-- Construct a default value using the 'MkAndroidPublisherReviewsGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherReviewsGet = AndroidPublisherReviewsGet
    {
      -- | Package name of the app.
      packageName :: Core.Text
      -- | Unique identifier for a review.
    , reviewId :: Core.Text
      -- | Language localization code.
    , translationLanguage :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherReviewsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherReviewsGet :: Core.Text -> Core.Text -> AndroidPublisherReviewsGet
pattern MkAndroidPublisherReviewsGet{packageName, reviewId} =
        AndroidPublisherReviewsGet{packageName = packageName, reviewId = reviewId, translationLanguage = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherReviewsGet "Please use MkAndroidPublisherReviewsGet instead" #-}
#endif

-- | Create 'AndroidPublisherReviewsGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherReviewsGet :: Core.Text -> Core.Text -> AndroidPublisherReviewsGet
mkAndroidPublisherReviewsGet packageName reviewId
  = AndroidPublisherReviewsGet{packageName = packageName, reviewId = reviewId, translationLanguage = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherReviewsGet where
        type Core.Scopes AndroidPublisherReviewsGet = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherReviewsGet = AndroidPublisherService
        type Core.Response AndroidPublisherReviewsGet = Review
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherReviewsGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/reviews/", Core.toPathBuilder reviewId],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("translationLanguage",) Core.. Core.toQueryParam Core.<$> translationLanguage, Core.Just ("alt", "json")]}
