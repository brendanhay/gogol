-- |
-- Module      : Gogol.AndroidPublisher.Reviews.Reply
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.reply@.
module Gogol.AndroidPublisher.Reviews.Reply
    (
    -- * Constructing a Request
    AndroidPublisherReviewsReply (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Replies to a single review, or updates an existing reply.
data AndroidPublisherReviewsReply = AndroidPublisherReviewsReply
    {
      -- | Multipart request metadata.
      meta :: ReviewsReplyRequest
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Unique identifier for a review.
    , reviewId :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherReviewsReply where
        type Core.Scopes AndroidPublisherReviewsReply = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherReviewsReply = AndroidPublisherService
        type Core.Response AndroidPublisherReviewsReply = ReviewsReplyResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherReviewsReply{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/reviews/", Core.toPathBuilder reviewId, "/:reply"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
