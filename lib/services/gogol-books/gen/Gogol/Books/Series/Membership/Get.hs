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
-- Module      : Gogol.Books.Series.Membership.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Series membership data given the series id.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.series.membership.get@.
module Gogol.Books.Series.Membership.Get
  ( -- * Resource
    BooksSeriesMembershipGetResource,

    -- ** Constructing a Request
    newBooksSeriesMembershipGet,
    BooksSeriesMembershipGet,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.series.membership.get@ method which the
-- 'BooksSeriesMembershipGet' request conforms to.
type BooksSeriesMembershipGetResource =
  "books"
    Core.:> "v1"
    Core.:> "series"
    Core.:> "membership"
    Core.:> "get"
    Core.:> Core.QueryParam "series_id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "page_size" Core.Word32
    Core.:> Core.QueryParam "page_token" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Seriesmembership

-- | Returns Series membership data given the series id.
--
-- /See:/ 'newBooksSeriesMembershipGet' smart constructor.
data BooksSeriesMembershipGet = BooksSeriesMembershipGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of maximum results per page to be included in the response.
    pageSize :: (Core.Maybe Core.Word32),
    -- | The value of the nextToken from the previous page.
    pageToken :: (Core.Maybe Core.Text),
    -- | String that identifies the series
    seriesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksSeriesMembershipGet' with the minimum fields required to make a request.
newBooksSeriesMembershipGet ::
  -- |  String that identifies the series See 'seriesId'.
  Core.Text ->
  BooksSeriesMembershipGet
newBooksSeriesMembershipGet seriesId =
  BooksSeriesMembershipGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      seriesId = seriesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksSeriesMembershipGet where
  type Rs BooksSeriesMembershipGet = Seriesmembership
  type
    Scopes BooksSeriesMembershipGet =
      '[Books'FullControl]
  requestClient BooksSeriesMembershipGet {..} =
    go
      (Core.Just seriesId)
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksSeriesMembershipGetResource
          )
          Core.mempty
