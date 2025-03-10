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
-- Module      : Gogol.FactCheckTools.Pages.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update for all @ClaimReview@ markup on a page Note that this is a full update. To retain the existing @ClaimReview@ markup on a page, first perform a Get operation, then modify the returned markup, and finally call Update with the entire @ClaimReview@ markup as the body.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.update@.
module Gogol.FactCheckTools.Pages.Update
  ( -- * Resource
    FactCheckToolsPagesUpdateResource,

    -- ** Constructing a Request
    FactCheckToolsPagesUpdate (..),
    newFactCheckToolsPagesUpdate,
  )
where

import Gogol.FactCheckTools.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @factchecktools.pages.update@ method which the
-- 'FactCheckToolsPagesUpdate' request conforms to.
type FactCheckToolsPagesUpdateResource =
  "v1alpha1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
    Core.:> Core.Put
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage

-- | Update for all @ClaimReview@ markup on a page Note that this is a full update. To retain the existing @ClaimReview@ markup on a page, first perform a Get operation, then modify the returned markup, and finally call Update with the entire @ClaimReview@ markup as the body.
--
-- /See:/ 'newFactCheckToolsPagesUpdate' smart constructor.
data FactCheckToolsPagesUpdate = FactCheckToolsPagesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of this @ClaimReview@ markup page resource, in the form of @pages\/{page_id}@. Except for update requests, this field is output-only and should not be set by the user.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsPagesUpdate' with the minimum fields required to make a request.
newFactCheckToolsPagesUpdate ::
  -- |  The name of this @ClaimReview@ markup page resource, in the form of @pages\/{page_id}@. Except for update requests, this field is output-only and should not be set by the user. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage ->
  FactCheckToolsPagesUpdate
newFactCheckToolsPagesUpdate name payload =
  FactCheckToolsPagesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsPagesUpdate where
  type
    Rs FactCheckToolsPagesUpdate =
      GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage
  type
    Scopes FactCheckToolsPagesUpdate =
      '[Factchecktools'FullControl]
  requestClient FactCheckToolsPagesUpdate {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy FactCheckToolsPagesUpdateResource)
          Core.mempty
