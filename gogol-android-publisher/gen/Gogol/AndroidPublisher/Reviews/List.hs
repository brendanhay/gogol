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
-- Module      : Gogol.AndroidPublisher.Reviews.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all reviews.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.reviews.list@.
module Gogol.AndroidPublisher.Reviews.List
  ( -- * Resource
    AndroidPublisherReviewsListResource,

    -- ** Constructing a Request
    newAndroidPublisherReviewsList,
    AndroidPublisherReviewsList,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.reviews.list@ method which the
-- 'AndroidPublisherReviewsList' request conforms to.
type AndroidPublisherReviewsListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "reviews"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "translationLanguage" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReviewsListResponse

-- | Lists all reviews.
--
-- /See:/ 'newAndroidPublisherReviewsList' smart constructor.
data AndroidPublisherReviewsList = AndroidPublisherReviewsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | How many results the list operation should return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | The index of the first element to return.
    startIndex :: (Core.Maybe Core.Word32),
    -- | Pagination token. If empty, list starts at the first review.
    token :: (Core.Maybe Core.Text),
    -- | Language localization code.
    translationLanguage :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherReviewsList' with the minimum fields required to make a request.
newAndroidPublisherReviewsList ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherReviewsList
newAndroidPublisherReviewsList packageName =
  AndroidPublisherReviewsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      packageName = packageName,
      startIndex = Core.Nothing,
      token = Core.Nothing,
      translationLanguage = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherReviewsList
  where
  type
    Rs AndroidPublisherReviewsList =
      ReviewsListResponse
  type
    Scopes AndroidPublisherReviewsList =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherReviewsList {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      maxResults
      startIndex
      token
      translationLanguage
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherReviewsListResource
          )
          Core.mempty
