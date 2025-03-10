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
-- Module      : Gogol.SafeBrowsing.Hashes.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for full hashes matching the specified prefixes. This is a custom method as defined by https:\/\/google.aip.dev\/136 (the custom method refers to this method having a custom name within Google\'s general API development nomenclature; it does not refer to using a custom HTTP method).
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.hashes.search@.
module Gogol.SafeBrowsing.Hashes.Search
  ( -- * Resource
    SafeBrowsingHashesSearchResource,

    -- ** Constructing a Request
    SafeBrowsingHashesSearch (..),
    newSafeBrowsingHashesSearch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.hashes.search@ method which the
-- 'SafeBrowsingHashesSearch' request conforms to.
type SafeBrowsingHashesSearchResource =
  "v5"
    Core.:> "hashes:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "hashPrefixes" Core.Base64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleSecuritySafebrowsingV5SearchHashesResponse

-- | Search for full hashes matching the specified prefixes. This is a custom method as defined by https:\/\/google.aip.dev\/136 (the custom method refers to this method having a custom name within Google\'s general API development nomenclature; it does not refer to using a custom HTTP method).
--
-- /See:/ 'newSafeBrowsingHashesSearch' smart constructor.
data SafeBrowsingHashesSearch = SafeBrowsingHashesSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The hash prefixes to be looked up. Clients MUST NOT send more than 1000 hash prefixes. However, following the URL processing procedure, clients SHOULD NOT need to send more than 30 hash prefixes. Currently each hash prefix is required to be exactly 4 bytes long. This MAY be relaxed in the future.
    hashPrefixes :: (Core.Maybe [Core.Base64]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingHashesSearch' with the minimum fields required to make a request.
newSafeBrowsingHashesSearch ::
  SafeBrowsingHashesSearch
newSafeBrowsingHashesSearch =
  SafeBrowsingHashesSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      hashPrefixes = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SafeBrowsingHashesSearch where
  type
    Rs SafeBrowsingHashesSearch =
      GoogleSecuritySafebrowsingV5SearchHashesResponse
  type Scopes SafeBrowsingHashesSearch = '[]
  requestClient SafeBrowsingHashesSearch {..} =
    go
      xgafv
      accessToken
      callback
      (hashPrefixes Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      safeBrowsingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SafeBrowsingHashesSearchResource)
          Core.mempty
