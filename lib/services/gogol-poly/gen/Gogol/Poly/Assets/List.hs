{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Poly.Assets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all public, remixable assets. These are assets with an access level of PUBLIC and published under the CC-By license.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.assets.list@.
module Gogol.Poly.Assets.List
    (
    -- * Resource
      PolyAssetsListResource

    -- ** Constructing a Request
    , PolyAssetsList (..)
    , newPolyAssetsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Poly.Types

-- | A resource alias for @poly.assets.list@ method which the
-- 'PolyAssetsList' request conforms to.
type PolyAssetsListResource =
     "v1" Core.:>
       "assets" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "category" Core.Text Core.:>
                 Core.QueryParam "curated" Core.Bool Core.:>
                   Core.QueryParam "format" Core.Text Core.:>
                     Core.QueryParam "keywords" Core.Text Core.:>
                       Core.QueryParam "maxComplexity"
                         AssetsListMaxComplexity
                         Core.:>
                         Core.QueryParam "orderBy" Core.Text Core.:>
                           Core.QueryParam "pageSize" Core.Int32 Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] ListAssetsResponse

-- | Lists all public, remixable assets. These are assets with an access level of PUBLIC and published under the CC-By license.
--
-- /See:/ 'newPolyAssetsList' smart constructor.
data PolyAssetsList = PolyAssetsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Filter assets based on the specified category. Supported values are: @animals@, @architecture@, @art@, @food@, @nature@, @objects@, @people@, @scenes@, @technology@, and @transport@.
    , category :: (Core.Maybe Core.Text)
      -- | Return only assets that have been curated by the Poly team.
    , curated :: (Core.Maybe Core.Bool)
      -- | Return only assets with the matching format. Acceptable values are: @BLOCKS@, @FBX@, @GLTF@, @GLTF2@, @OBJ@, @TILT@.
    , format :: (Core.Maybe Core.Text)
      -- | One or more search terms to be matched against all text that Poly has indexed for assets, which includes display_name, description, and tags. Multiple keywords should be separated by spaces.
    , keywords :: (Core.Maybe Core.Text)
      -- | Returns assets that are of the specified complexity or less. Defaults to COMPLEX. For example, a request for MEDIUM assets also includes SIMPLE assets.
    , maxComplexity :: (Core.Maybe AssetsListMaxComplexity)
      -- | Specifies an ordering for assets. Acceptable values are: @BEST@, @NEWEST@, @OLDEST@. Defaults to @BEST@, which ranks assets based on a combination of popularity and other features.
    , orderBy :: (Core.Maybe Core.Text)
      -- | The maximum number of assets to be returned. This value must be between @1@ and @100@. Defaults to @20@.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Specifies a continuation token from a previous search whose results were split into multiple pages. To get the next page, submit the same request specifying the value from next/page/token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolyAssetsList' with the minimum fields required to make a request.
newPolyAssetsList 
    ::  PolyAssetsList
newPolyAssetsList =
  PolyAssetsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , category = Core.Nothing
    , curated = Core.Nothing
    , format = Core.Nothing
    , keywords = Core.Nothing
    , maxComplexity = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PolyAssetsList where
        type Rs PolyAssetsList = ListAssetsResponse
        type Scopes PolyAssetsList = '[]
        requestClient PolyAssetsList{..}
          = go xgafv accessToken callback category curated
              format
              keywords
              maxComplexity
              orderBy
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              polyService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy PolyAssetsListResource)
                      Core.mempty

