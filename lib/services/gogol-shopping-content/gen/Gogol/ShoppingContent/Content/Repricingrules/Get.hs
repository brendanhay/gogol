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
-- Module      : Gogol.ShoppingContent.Content.Repricingrules.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a repricing rule from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.get@.
module Gogol.ShoppingContent.Content.Repricingrules.Get
  ( -- * Resource
    ContentRepricingrulesGetResource,

    -- ** Constructing a Request
    newContentRepricingrulesGet,
    ContentRepricingrulesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.get@ method which the
-- 'ContentRepricingrulesGet' request conforms to.
type ContentRepricingrulesGetResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "repricingrules"
    Core.:> Core.Capture "ruleId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RepricingRule

-- | Retrieves a repricing rule from your Merchant Center account.
--
-- /See:/ 'newContentRepricingrulesGet' smart constructor.
data ContentRepricingrulesGet = ContentRepricingrulesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the merchant who owns the repricing rule.
    merchantId :: Core.Int64,
    -- | Required. The id of the rule to retrieve.
    ruleId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRepricingrulesGet' with the minimum fields required to make a request.
newContentRepricingrulesGet ::
  -- |  Required. The id of the merchant who owns the repricing rule. See 'merchantId'.
  Core.Int64 ->
  -- |  Required. The id of the rule to retrieve. See 'ruleId'.
  Core.Text ->
  ContentRepricingrulesGet
newContentRepricingrulesGet merchantId ruleId =
  ContentRepricingrulesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      ruleId = ruleId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentRepricingrulesGet where
  type Rs ContentRepricingrulesGet = RepricingRule
  type
    Scopes ContentRepricingrulesGet =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentRepricingrulesGet {..} =
    go
      merchantId
      ruleId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentRepricingrulesGetResource
          )
          Core.mempty
