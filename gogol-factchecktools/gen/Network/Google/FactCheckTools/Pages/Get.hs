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
-- Module      : Network.Google.FactCheckTools.Pages.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all @ClaimReview@ markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.get@.
module Network.Google.FactCheckTools.Pages.Get
  ( -- * Resource
    FactCheckToolsPagesGetResource,

    -- ** Constructing a Request
    newFactCheckToolsPagesGet,
    FactCheckToolsPagesGet,
  )
where

import Network.Google.FactCheckTools.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @factchecktools.pages.get@ method which the
-- 'FactCheckToolsPagesGet' request conforms to.
type FactCheckToolsPagesGetResource =
  "v1alpha1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Get all @ClaimReview@ markup on a page.
--
-- /See:/ 'newFactCheckToolsPagesGet' smart constructor.
data FactCheckToolsPagesGet = FactCheckToolsPagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to get, in the form of @pages\/{page_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsPagesGet' with the minimum fields required to make a request.
newFactCheckToolsPagesGet ::
  -- |  The name of the resource to get, in the form of @pages\/{page_id}@. See 'name'.
  Core.Text ->
  FactCheckToolsPagesGet
newFactCheckToolsPagesGet name =
  FactCheckToolsPagesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsPagesGet where
  type
    Rs FactCheckToolsPagesGet =
      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
  type
    Scopes FactCheckToolsPagesGet =
      '["https://www.googleapis.com/auth/userinfo.email"]
  requestClient FactCheckToolsPagesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      factCheckToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FactCheckToolsPagesGetResource
          )
          Core.mempty
