{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books.Promooffer.Dismiss
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the promo offer as dismissed.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.promooffer.dismiss@.
module Gogol.Books.Promooffer.Dismiss
    (
    -- * Resource
      BooksPromoofferDismissResource

    -- ** Constructing a Request
    , newBooksPromoofferDismiss
    , BooksPromoofferDismiss
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.promooffer.dismiss@ method which the
-- 'BooksPromoofferDismiss' request conforms to.
type BooksPromoofferDismissResource =
     "books" Core.:>
       "v1" Core.:>
         "promooffer" Core.:>
           "dismiss" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "androidId" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "device" Core.Text Core.:>
                       Core.QueryParam "manufacturer" Core.Text Core.:>
                         Core.QueryParam "model" Core.Text Core.:>
                           Core.QueryParam "offerId" Core.Text Core.:>
                             Core.QueryParam "product" Core.Text Core.:>
                               Core.QueryParam "serial" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Post '[Core.JSON] Empty

-- | Marks the promo offer as dismissed.
--
-- /See:/ 'newBooksPromoofferDismiss' smart constructor.
data BooksPromoofferDismiss = BooksPromoofferDismiss
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | device android_id
    , androidId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | device device
    , device :: (Core.Maybe Core.Text)
      -- | device manufacturer
    , manufacturer :: (Core.Maybe Core.Text)
      -- | device model
    , model :: (Core.Maybe Core.Text)
      -- | Offer to dimiss
    , offerId :: (Core.Maybe Core.Text)
      -- | device product
    , product :: (Core.Maybe Core.Text)
      -- | device serial
    , serial :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksPromoofferDismiss' with the minimum fields required to make a request.
newBooksPromoofferDismiss 
    ::  BooksPromoofferDismiss
newBooksPromoofferDismiss =
  BooksPromoofferDismiss
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , androidId = Core.Nothing
    , callback = Core.Nothing
    , device = Core.Nothing
    , manufacturer = Core.Nothing
    , model = Core.Nothing
    , offerId = Core.Nothing
    , product = Core.Nothing
    , serial = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksPromoofferDismiss
         where
        type Rs BooksPromoofferDismiss = Empty
        type Scopes BooksPromoofferDismiss =
             '["https://www.googleapis.com/auth/books"]
        requestClient BooksPromoofferDismiss{..}
          = go xgafv accessToken androidId callback device
              manufacturer
              model
              offerId
              product
              serial
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksPromoofferDismissResource)
                      Core.mempty

