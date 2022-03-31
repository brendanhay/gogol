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
-- Module      : Gogol.Books.Promooffer.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of promo offers available to the user
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.get@.
module Gogol.Books.Promooffer.Get
  ( -- * Resource
    BooksPromoofferGetResource,

    -- ** Constructing a Request
    newBooksPromoofferGet,
    BooksPromoofferGet,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.promooffer.get@ method which the
-- 'BooksPromoofferGet' request conforms to.
type BooksPromoofferGetResource =
  "books"
    Core.:> "v1"
    Core.:> "promooffer"
    Core.:> "get"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "androidId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "device" Core.Text
    Core.:> Core.QueryParam "manufacturer" Core.Text
    Core.:> Core.QueryParam "model" Core.Text
    Core.:> Core.QueryParam "product" Core.Text
    Core.:> Core.QueryParam "serial" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Offers

-- | Returns a list of promo offers available to the user
--
-- /See:/ 'newBooksPromoofferGet' smart constructor.
data BooksPromoofferGet = BooksPromoofferGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | device android_id
    androidId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | device device
    device :: (Core.Maybe Core.Text),
    -- | device manufacturer
    manufacturer :: (Core.Maybe Core.Text),
    -- | device model
    model :: (Core.Maybe Core.Text),
    -- | device product
    product :: (Core.Maybe Core.Text),
    -- | device serial
    serial :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksPromoofferGet' with the minimum fields required to make a request.
newBooksPromoofferGet ::
  BooksPromoofferGet
newBooksPromoofferGet =
  BooksPromoofferGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      androidId = Core.Nothing,
      callback = Core.Nothing,
      device = Core.Nothing,
      manufacturer = Core.Nothing,
      model = Core.Nothing,
      product = Core.Nothing,
      serial = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksPromoofferGet where
  type Rs BooksPromoofferGet = Offers
  type Scopes BooksPromoofferGet = '[Books'FullControl]
  requestClient BooksPromoofferGet {..} =
    go
      xgafv
      accessToken
      androidId
      callback
      device
      manufacturer
      model
      product
      serial
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksPromoofferGetResource)
          Core.mempty
