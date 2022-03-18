{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Freelistingsprogram.Requestreview
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a review for Free Listings program in the provided region. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.freelistingsprogram.requestreview@.
module Gogol.ShoppingContent.Content.Freelistingsprogram.Requestreview
    (
    -- * Resource
      ContentFreelistingsprogramRequestreviewResource

    -- ** Constructing a Request
    , newContentFreelistingsprogramRequestreview
    , ContentFreelistingsprogramRequestreview
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.freelistingsprogram.requestreview@ method which the
-- 'ContentFreelistingsprogramRequestreview' request conforms to.
type ContentFreelistingsprogramRequestreviewResource
     =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "freelistingsprogram" Core.:>
             "requestreview" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON]
                             RequestReviewFreeListingsRequest
                             Core.:> Core.Post '[Core.JSON] ()

-- | Requests a review for Free Listings program in the provided region. Important: This method is only whitelisted for selected merchants.
--
-- /See:/ 'newContentFreelistingsprogramRequestreview' smart constructor.
data ContentFreelistingsprogramRequestreview = ContentFreelistingsprogramRequestreview
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the account.
    , merchantId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: RequestReviewFreeListingsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentFreelistingsprogramRequestreview' with the minimum fields required to make a request.
newContentFreelistingsprogramRequestreview 
    ::  Core.Int64
       -- ^  Required. The ID of the account. See 'merchantId'.
    -> RequestReviewFreeListingsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentFreelistingsprogramRequestreview
newContentFreelistingsprogramRequestreview merchantId payload =
  ContentFreelistingsprogramRequestreview
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentFreelistingsprogramRequestreview
         where
        type Rs ContentFreelistingsprogramRequestreview = ()
        type Scopes ContentFreelistingsprogramRequestreview =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ContentFreelistingsprogramRequestreview{..}
          = go merchantId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentFreelistingsprogramRequestreviewResource)
                      Core.mempty

