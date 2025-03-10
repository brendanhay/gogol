{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.FactCheckTools.Pages.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create @ClaimReview@ markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.create@.
module Gogol.FactCheckTools.Pages.Create
  ( -- * Resource
    FactCheckToolsPagesCreateResource,

    -- ** Constructing a Request
    FactCheckToolsPagesCreate (..),
    newFactCheckToolsPagesCreate,
  )
where

import Gogol.FactCheckTools.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @factchecktools.pages.create@ method which the
-- 'FactCheckToolsPagesCreate' request conforms to.
type FactCheckToolsPagesCreateResource =
  "v1alpha1"
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    Core.:> Core.Post
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Create @ClaimReview@ markup on a page.
--
-- /See:/ 'newFactCheckToolsPagesCreate' smart constructor.
data FactCheckToolsPagesCreate = FactCheckToolsPagesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsPagesCreate' with the minimum fields required to make a request.
newFactCheckToolsPagesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage ->
  FactCheckToolsPagesCreate
newFactCheckToolsPagesCreate payload =
  FactCheckToolsPagesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsPagesCreate where
  type
    Rs FactCheckToolsPagesCreate =
      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
  type
    Scopes FactCheckToolsPagesCreate =
      '[Factchecktools'FullControl]
  requestClient FactCheckToolsPagesCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      factCheckToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FactCheckToolsPagesCreateResource)
          Core.mempty
