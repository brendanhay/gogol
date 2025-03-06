{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AcceleratedMobilePageUrl.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AcceleratedMobilePageUrl.Internal.Product
  ( -- * AmpUrl
    AmpUrl (..),
    newAmpUrl,

    -- * AmpUrlError
    AmpUrlError (..),
    newAmpUrlError,

    -- * BatchGetAmpUrlsRequest
    BatchGetAmpUrlsRequest (..),
    newBatchGetAmpUrlsRequest,

    -- * BatchGetAmpUrlsResponse
    BatchGetAmpUrlsResponse (..),
    newBatchGetAmpUrlsResponse,
  )
where

import Gogol.AcceleratedMobilePageUrl.Internal.Sum
import Gogol.Prelude qualified as Core

-- | AMP URL response for a requested URL.
--
-- /See:/ 'newAmpUrl' smart constructor.
data AmpUrl = AmpUrl
  { -- | The AMP URL pointing to the publisher\'s web server.
    ampUrl :: (Core.Maybe Core.Text),
    -- | The </amp/cache/overview#amp-cache-url-format AMP Cache URL> pointing to the cached document in the Google AMP Cache.
    cdnAmpUrl :: (Core.Maybe Core.Text),
    -- | The original non-AMP URL.
    originalUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AmpUrl' with the minimum fields required to make a request.
newAmpUrl ::
  AmpUrl
newAmpUrl =
  AmpUrl
    { ampUrl = Core.Nothing,
      cdnAmpUrl = Core.Nothing,
      originalUrl = Core.Nothing
    }

instance Core.FromJSON AmpUrl where
  parseJSON =
    Core.withObject
      "AmpUrl"
      ( \o ->
          AmpUrl
            Core.<$> (o Core..:? "ampUrl")
            Core.<*> (o Core..:? "cdnAmpUrl")
            Core.<*> (o Core..:? "originalUrl")
      )

instance Core.ToJSON AmpUrl where
  toJSON AmpUrl {..} =
    Core.object
      ( Core.catMaybes
          [ ("ampUrl" Core..=) Core.<$> ampUrl,
            ("cdnAmpUrl" Core..=) Core.<$> cdnAmpUrl,
            ("originalUrl" Core..=) Core.<$> originalUrl
          ]
      )

-- | AMP URL Error resource for a requested URL that couldn\'t be found.
--
-- /See:/ 'newAmpUrlError' smart constructor.
data AmpUrlError = AmpUrlError
  { -- | The error code of an API call.
    errorCode :: (Core.Maybe AmpUrlError_ErrorCode),
    -- | An optional descriptive error message.
    errorMessage :: (Core.Maybe Core.Text),
    -- | The original non-AMP URL.
    originalUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AmpUrlError' with the minimum fields required to make a request.
newAmpUrlError ::
  AmpUrlError
newAmpUrlError =
  AmpUrlError
    { errorCode = Core.Nothing,
      errorMessage = Core.Nothing,
      originalUrl = Core.Nothing
    }

instance Core.FromJSON AmpUrlError where
  parseJSON =
    Core.withObject
      "AmpUrlError"
      ( \o ->
          AmpUrlError
            Core.<$> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "originalUrl")
      )

instance Core.ToJSON AmpUrlError where
  toJSON AmpUrlError {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCode" Core..=) Core.<$> errorCode,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("originalUrl" Core..=) Core.<$> originalUrl
          ]
      )

-- | AMP URL request for a batch of URLs.
--
-- /See:/ 'newBatchGetAmpUrlsRequest' smart constructor.
data BatchGetAmpUrlsRequest = BatchGetAmpUrlsRequest
  { -- | The lookup_strategy being requested.
    lookupStrategy :: (Core.Maybe BatchGetAmpUrlsRequest_LookupStrategy),
    -- | List of URLs to look up for the paired AMP URLs. The URLs are case-sensitive. Up to 50 URLs per lookup (see </amp/cache/reference/limits Usage Limits>).
    urls :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetAmpUrlsRequest' with the minimum fields required to make a request.
newBatchGetAmpUrlsRequest ::
  BatchGetAmpUrlsRequest
newBatchGetAmpUrlsRequest =
  BatchGetAmpUrlsRequest
    { lookupStrategy = Core.Nothing,
      urls = Core.Nothing
    }

instance Core.FromJSON BatchGetAmpUrlsRequest where
  parseJSON =
    Core.withObject
      "BatchGetAmpUrlsRequest"
      ( \o ->
          BatchGetAmpUrlsRequest
            Core.<$> (o Core..:? "lookupStrategy")
            Core.<*> (o Core..:? "urls")
      )

instance Core.ToJSON BatchGetAmpUrlsRequest where
  toJSON BatchGetAmpUrlsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lookupStrategy" Core..=) Core.<$> lookupStrategy,
            ("urls" Core..=) Core.<$> urls
          ]
      )

-- | Batch AMP URL response.
--
-- /See:/ 'newBatchGetAmpUrlsResponse' smart constructor.
data BatchGetAmpUrlsResponse = BatchGetAmpUrlsResponse
  { -- | For each URL in BatchAmpUrlsRequest, the URL response. The response might not be in the same order as URLs in the batch request. If BatchAmpUrlsRequest contains duplicate URLs, AmpUrl is generated only once.
    ampUrls :: (Core.Maybe [AmpUrl]),
    -- | The errors for requested URLs that have no AMP URL.
    urlErrors :: (Core.Maybe [AmpUrlError])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetAmpUrlsResponse' with the minimum fields required to make a request.
newBatchGetAmpUrlsResponse ::
  BatchGetAmpUrlsResponse
newBatchGetAmpUrlsResponse =
  BatchGetAmpUrlsResponse
    { ampUrls = Core.Nothing,
      urlErrors = Core.Nothing
    }

instance Core.FromJSON BatchGetAmpUrlsResponse where
  parseJSON =
    Core.withObject
      "BatchGetAmpUrlsResponse"
      ( \o ->
          BatchGetAmpUrlsResponse
            Core.<$> (o Core..:? "ampUrls")
            Core.<*> (o Core..:? "urlErrors")
      )

instance Core.ToJSON BatchGetAmpUrlsResponse where
  toJSON BatchGetAmpUrlsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("ampUrls" Core..=) Core.<$> ampUrls,
            ("urlErrors" Core..=) Core.<$> urlErrors
          ]
      )
