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
-- Module      : Gogol.Books.Familysharing.Share
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates sharing of the content with the user\'s family. Empty response indicates success.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.share@.
module Gogol.Books.Familysharing.Share
    (
    -- * Resource
      BooksFamilysharingShareResource

    -- ** Constructing a Request
    , BooksFamilysharingShare (..)
    , newBooksFamilysharingShare
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.familysharing.share@ method which the
-- 'BooksFamilysharingShare' request conforms to.
type BooksFamilysharingShareResource =
     "books" Core.:>
       "v1" Core.:>
         "familysharing" Core.:>
           "share" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "docId" Core.Text Core.:>
                     Core.QueryParam "source" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "volumeId" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Post '[Core.JSON] Empty

-- | Initiates sharing of the content with the user\'s family. Empty response indicates success.
--
-- /See:/ 'newBooksFamilysharingShare' smart constructor.
data BooksFamilysharingShare = BooksFamilysharingShare
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The docid to share.
    , docId :: (Core.Maybe Core.Text)
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The volume to share.
    , volumeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksFamilysharingShare' with the minimum fields required to make a request.
newBooksFamilysharingShare 
    ::  BooksFamilysharingShare
newBooksFamilysharingShare =
  BooksFamilysharingShare
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , docId = Core.Nothing
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , volumeId = Core.Nothing
    }

instance Core.GoogleRequest BooksFamilysharingShare
         where
        type Rs BooksFamilysharingShare = Empty
        type Scopes BooksFamilysharingShare =
             '[Books'FullControl]
        requestClient BooksFamilysharingShare{..}
          = go xgafv accessToken callback docId source
              uploadType
              uploadProtocol
              volumeId
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksFamilysharingShareResource)
                      Core.mempty

