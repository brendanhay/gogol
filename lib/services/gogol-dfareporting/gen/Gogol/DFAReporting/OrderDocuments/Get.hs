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
-- Module      : Gogol.DFAReporting.OrderDocuments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one order document by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.orderDocuments.get@.
module Gogol.DFAReporting.OrderDocuments.Get
  ( -- * Resource
    DFAReportingOrderDocumentsGetResource,

    -- ** Constructing a Request
    newDFAReportingOrderDocumentsGet,
    DFAReportingOrderDocumentsGet,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.orderDocuments.get@ method which the
-- 'DFAReportingOrderDocumentsGet' request conforms to.
type DFAReportingOrderDocumentsGetResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Int64
    Core.:> "orderDocuments"
    Core.:> Core.Capture "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] OrderDocument

-- | Gets one order document by ID.
--
-- /See:/ 'newDFAReportingOrderDocumentsGet' smart constructor.
data DFAReportingOrderDocumentsGet = DFAReportingOrderDocumentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Order document ID.
    id :: Core.Int64,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Project ID for order documents.
    projectId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingOrderDocumentsGet' with the minimum fields required to make a request.
newDFAReportingOrderDocumentsGet ::
  -- |  Order document ID. See 'id'.
  Core.Int64 ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  -- |  Project ID for order documents. See 'projectId'.
  Core.Int64 ->
  DFAReportingOrderDocumentsGet
newDFAReportingOrderDocumentsGet id profileId projectId =
  DFAReportingOrderDocumentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      profileId = profileId,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingOrderDocumentsGet
  where
  type Rs DFAReportingOrderDocumentsGet = OrderDocument
  type
    Scopes DFAReportingOrderDocumentsGet =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingOrderDocumentsGet {..} =
    go
      profileId
      projectId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingOrderDocumentsGetResource
          )
          Core.mempty
