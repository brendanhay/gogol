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
-- Module      : Gogol.FactCheckTools.Pages.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete all @ClaimReview@ markup on a page.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.delete@.
module Gogol.FactCheckTools.Pages.Delete
  ( -- * Resource
    FactCheckToolsPagesDeleteResource,

    -- ** Constructing a Request
    newFactCheckToolsPagesDelete,
    FactCheckToolsPagesDelete,
  )
where

import Gogol.FactCheckTools.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @factchecktools.pages.delete@ method which the
-- 'FactCheckToolsPagesDelete' request conforms to.
type FactCheckToolsPagesDeleteResource =
  "v1alpha1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Delete all @ClaimReview@ markup on a page.
--
-- /See:/ 'newFactCheckToolsPagesDelete' smart constructor.
data FactCheckToolsPagesDelete = FactCheckToolsPagesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to delete, in the form of @pages\/{page_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsPagesDelete' with the minimum fields required to make a request.
newFactCheckToolsPagesDelete ::
  -- |  The name of the resource to delete, in the form of @pages\/{page_id}@. See 'name'.
  Core.Text ->
  FactCheckToolsPagesDelete
newFactCheckToolsPagesDelete name =
  FactCheckToolsPagesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsPagesDelete where
  type
    Rs FactCheckToolsPagesDelete =
      GoogleProtobufEmpty
  type
    Scopes FactCheckToolsPagesDelete =
      '["https://www.googleapis.com/auth/userinfo.email"]
  requestClient FactCheckToolsPagesDelete {..} =
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
              Core.Proxy FactCheckToolsPagesDeleteResource
          )
          Core.mempty
