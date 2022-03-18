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
-- Module      : Network.Google.Partners.Companies.Leads.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an advertiser lead for the given company ID.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.companies.leads.create@.
module Network.Google.Partners.Companies.Leads.Create
  ( -- * Resource
    PartnersCompaniesLeadsCreateResource,

    -- ** Constructing a Request
    newPartnersCompaniesLeadsCreate,
    PartnersCompaniesLeadsCreate,
  )
where

import Network.Google.Partners.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @partners.companies.leads.create@ method which the
-- 'PartnersCompaniesLeadsCreate' request conforms to.
type PartnersCompaniesLeadsCreateResource =
  "v2"
    Core.:> "companies"
    Core.:> Core.Capture "companyId" Core.Text
    Core.:> "leads"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateLeadRequest
    Core.:> Core.Post '[Core.JSON] CreateLeadResponse

-- | Creates an advertiser lead for the given company ID.
--
-- /See:/ 'newPartnersCompaniesLeadsCreate' smart constructor.
data PartnersCompaniesLeadsCreate = PartnersCompaniesLeadsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the company to contact.
    companyId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateLeadRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersCompaniesLeadsCreate' with the minimum fields required to make a request.
newPartnersCompaniesLeadsCreate ::
  -- |  The ID of the company to contact. See 'companyId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateLeadRequest ->
  PartnersCompaniesLeadsCreate
newPartnersCompaniesLeadsCreate companyId payload =
  PartnersCompaniesLeadsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      companyId = companyId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PartnersCompaniesLeadsCreate
  where
  type
    Rs PartnersCompaniesLeadsCreate =
      CreateLeadResponse
  type Scopes PartnersCompaniesLeadsCreate = '[]
  requestClient PartnersCompaniesLeadsCreate {..} =
    go
      companyId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersCompaniesLeadsCreateResource
          )
          Core.mempty
