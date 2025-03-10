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
-- Module      : Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (or creates if allow_missing = true) a product certification which links certifications with products. This method can only be called by certification bodies.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.languages.productCertifications.patch@.
module Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Patch
  ( -- * Resource
    ManufacturersAccountsLanguagesProductCertificationsPatchResource,

    -- ** Constructing a Request
    ManufacturersAccountsLanguagesProductCertificationsPatch (..),
    newManufacturersAccountsLanguagesProductCertificationsPatch,
  )
where

import Gogol.Manufacturers.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @manufacturers.accounts.languages.productCertifications.patch@ method which the
-- 'ManufacturersAccountsLanguagesProductCertificationsPatch' request conforms to.
type ManufacturersAccountsLanguagesProductCertificationsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ProductCertification
    Core.:> Core.Patch '[Core.JSON] ProductCertification

-- | Updates (or creates if allow_missing = true) a product certification which links certifications with products. This method can only be called by certification bodies.
--
-- /See:/ 'newManufacturersAccountsLanguagesProductCertificationsPatch' smart constructor.
data ManufacturersAccountsLanguagesProductCertificationsPatch = ManufacturersAccountsLanguagesProductCertificationsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name identifier of a product certification Format: accounts\/{account}\/languages\/{language_code}\/productCertifications\/{id} Where @id@ is a some unique identifier and @language_code@ is a 2-letter ISO 639-1 code of a Shopping supported language according to https:\/\/support.google.com\/merchants\/answer\/160637.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ProductCertification,
    -- | Optional. The list of fields to update according to aip.dev\/134. However, only full update is supported as of right now. Therefore, it can be either ignored or set to \"*\". Setting any other values will returns UNIMPLEMENTED error.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsLanguagesProductCertificationsPatch' with the minimum fields required to make a request.
newManufacturersAccountsLanguagesProductCertificationsPatch ::
  -- |  Required. The unique name identifier of a product certification Format: accounts\/{account}\/languages\/{language_code}\/productCertifications\/{id} Where @id@ is a some unique identifier and @language_code@ is a 2-letter ISO 639-1 code of a Shopping supported language according to https:\/\/support.google.com\/merchants\/answer\/160637. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ProductCertification ->
  ManufacturersAccountsLanguagesProductCertificationsPatch
newManufacturersAccountsLanguagesProductCertificationsPatch
  name
  payload =
    ManufacturersAccountsLanguagesProductCertificationsPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ManufacturersAccountsLanguagesProductCertificationsPatch
  where
  type
    Rs ManufacturersAccountsLanguagesProductCertificationsPatch =
      ProductCertification
  type
    Scopes
      ManufacturersAccountsLanguagesProductCertificationsPatch =
      '[Manufacturercenter'FullControl]
  requestClient
    ManufacturersAccountsLanguagesProductCertificationsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        manufacturersService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ManufacturersAccountsLanguagesProductCertificationsPatchResource
            )
            Core.mempty
