{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidPublisher.Reviews.Reply
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replies to a single review, or updates an existing reply.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.reply@.
module Gogol.AndroidPublisher.Reviews.Reply
  ( -- * Resource
    AndroidPublisherReviewsReplyResource,

    -- ** Constructing a Request
    AndroidPublisherReviewsReply (..),
    newAndroidPublisherReviewsReply,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.reviews.reply@ method which the
-- 'AndroidPublisherReviewsReply' request conforms to.
type AndroidPublisherReviewsReplyResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "reviews"
    Core.:> Core.CaptureMode "reviewId" "reply" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReviewsReplyRequest
    Core.:> Core.Post '[Core.JSON] ReviewsReplyResponse

-- | Replies to a single review, or updates an existing reply.
--
-- /See:/ 'newAndroidPublisherReviewsReply' smart constructor.
data AndroidPublisherReviewsReply = AndroidPublisherReviewsReply
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ReviewsReplyRequest,
    -- | Unique identifier for a review.
    reviewId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherReviewsReply' with the minimum fields required to make a request.
newAndroidPublisherReviewsReply ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ReviewsReplyRequest ->
  -- |  Unique identifier for a review. See 'reviewId'.
  Core.Text ->
  AndroidPublisherReviewsReply
newAndroidPublisherReviewsReply packageName payload reviewId =
  AndroidPublisherReviewsReply
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      reviewId = reviewId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherReviewsReply
  where
  type
    Rs AndroidPublisherReviewsReply =
      ReviewsReplyResponse
  type
    Scopes AndroidPublisherReviewsReply =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherReviewsReply {..} =
    go
      packageName
      reviewId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherReviewsReplyResource
          )
          Core.mempty
