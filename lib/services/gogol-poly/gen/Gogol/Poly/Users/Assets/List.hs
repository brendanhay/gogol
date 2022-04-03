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
-- Module      : Gogol.Poly.Users.Assets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists assets authored by the given user. Only the value \'me\', representing the currently-authenticated user, is supported. May include assets with an access level of PRIVATE or UNLISTED and assets which are All Rights Reserved for the currently-authenticated user.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.users.assets.list@.
module Gogol.Poly.Users.Assets.List
  ( -- * Resource
    PolyUsersAssetsListResource,

    -- ** Constructing a Request
    PolyUsersAssetsList (..),
    newPolyUsersAssetsList,
  )
where

import Gogol.Poly.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @poly.users.assets.list@ method which the
-- 'PolyUsersAssetsList' request conforms to.
type PolyUsersAssetsListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "assets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "format" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "visibility"
              UsersAssetsListVisibility
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUserAssetsResponse

-- | Lists assets authored by the given user. Only the value \'me\', representing the currently-authenticated user, is supported. May include assets with an access level of PRIVATE or UNLISTED and assets which are All Rights Reserved for the currently-authenticated user.
--
-- /See:/ 'newPolyUsersAssetsList' smart constructor.
data PolyUsersAssetsList = PolyUsersAssetsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return only assets with the matching format. Acceptable values are: @BLOCKS@, @FBX@, @GLTF@, @GLTF2@, @OBJ@, and @TILT@.
    format :: (Core.Maybe Core.Text),
    -- | A valid user id. Currently, only the special value \'me\', representing the currently-authenticated user is supported. To use \'me\', you must pass an OAuth token with the request.
    name :: Core.Text,
    -- | Specifies an ordering for assets. Acceptable values are: @BEST@, @NEWEST@, @OLDEST@. Defaults to @BEST@, which ranks assets based on a combination of popularity and other features.
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of assets to be returned. This value must be between @1@ and @100@. Defaults to @20@.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Specifies a continuation token from a previous search whose results were split into multiple pages. To get the next page, submit the same request specifying the value from next/page/token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The visibility of the assets to be returned. Defaults to VISIBILITY_UNSPECIFIED which returns all assets.
    visibility :: (Core.Maybe UsersAssetsListVisibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolyUsersAssetsList' with the minimum fields required to make a request.
newPolyUsersAssetsList ::
  -- |  A valid user id. Currently, only the special value \'me\', representing the currently-authenticated user is supported. To use \'me\', you must pass an OAuth token with the request. See 'name'.
  Core.Text ->
  PolyUsersAssetsList
newPolyUsersAssetsList name =
  PolyUsersAssetsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      format = Core.Nothing,
      name = name,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.GoogleRequest PolyUsersAssetsList where
  type Rs PolyUsersAssetsList = ListUserAssetsResponse
  type Scopes PolyUsersAssetsList = '[]
  requestClient PolyUsersAssetsList {..} =
    go
      name
      xgafv
      accessToken
      callback
      format
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      visibility
      (Core.Just Core.AltJSON)
      polyService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PolyUsersAssetsListResource
          )
          Core.mempty
