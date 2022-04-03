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
-- Module      : Gogol.Books.Promooffer.Accept
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts the promo offer.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.accept@.
module Gogol.Books.Promooffer.Accept
  ( -- * Resource
    BooksPromoofferAcceptResource,

    -- ** Constructing a Request
    BooksPromoofferAccept (..),
    newBooksPromoofferAccept,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.promooffer.accept@ method which the
-- 'BooksPromoofferAccept' request conforms to.
type BooksPromoofferAcceptResource =
  "books"
    Core.:> "v1"
    Core.:> "promooffer"
    Core.:> "accept"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "androidId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "device" Core.Text
    Core.:> Core.QueryParam "manufacturer" Core.Text
    Core.:> Core.QueryParam "model" Core.Text
    Core.:> Core.QueryParam "offerId" Core.Text
    Core.:> Core.QueryParam "product" Core.Text
    Core.:> Core.QueryParam "serial" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Accepts the promo offer.
--
-- /See:/ 'newBooksPromoofferAccept' smart constructor.
data BooksPromoofferAccept = BooksPromoofferAccept
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
    -- |
    offerId :: (Core.Maybe Core.Text),
    -- | device product
    product :: (Core.Maybe Core.Text),
    -- | device serial
    serial :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Volume id to exercise the offer
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksPromoofferAccept' with the minimum fields required to make a request.
newBooksPromoofferAccept ::
  BooksPromoofferAccept
newBooksPromoofferAccept =
  BooksPromoofferAccept
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      androidId = Core.Nothing,
      callback = Core.Nothing,
      device = Core.Nothing,
      manufacturer = Core.Nothing,
      model = Core.Nothing,
      offerId = Core.Nothing,
      product = Core.Nothing,
      serial = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.GoogleRequest BooksPromoofferAccept where
  type Rs BooksPromoofferAccept = Empty
  type
    Scopes BooksPromoofferAccept =
      '[Books'FullControl]
  requestClient BooksPromoofferAccept {..} =
    go
      xgafv
      accessToken
      androidId
      callback
      device
      manufacturer
      model
      offerId
      product
      serial
      uploadType
      uploadProtocol
      volumeId
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksPromoofferAcceptResource
          )
          Core.mempty
