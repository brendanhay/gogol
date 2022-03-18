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
-- Module      : Gogol.Books.Familysharing.GetFamilyInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information regarding the family that the user is part of.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.getFamilyInfo@.
module Gogol.Books.Familysharing.GetFamilyInfo
  ( -- * Resource
    BooksFamilysharingGetFamilyInfoResource,

    -- ** Constructing a Request
    newBooksFamilysharingGetFamilyInfo,
    BooksFamilysharingGetFamilyInfo,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.familysharing.getFamilyInfo@ method which the
-- 'BooksFamilysharingGetFamilyInfo' request conforms to.
type BooksFamilysharingGetFamilyInfoResource =
  "books"
    Core.:> "v1"
    Core.:> "familysharing"
    Core.:> "getFamilyInfo"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FamilyInfo

-- | Gets information regarding the family that the user is part of.
--
-- /See:/ 'newBooksFamilysharingGetFamilyInfo' smart constructor.
data BooksFamilysharingGetFamilyInfo = BooksFamilysharingGetFamilyInfo
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksFamilysharingGetFamilyInfo' with the minimum fields required to make a request.
newBooksFamilysharingGetFamilyInfo ::
  BooksFamilysharingGetFamilyInfo
newBooksFamilysharingGetFamilyInfo =
  BooksFamilysharingGetFamilyInfo
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksFamilysharingGetFamilyInfo
  where
  type Rs BooksFamilysharingGetFamilyInfo = FamilyInfo
  type
    Scopes BooksFamilysharingGetFamilyInfo =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksFamilysharingGetFamilyInfo {..} =
    go
      xgafv
      accessToken
      callback
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksFamilysharingGetFamilyInfoResource
          )
          Core.mempty
