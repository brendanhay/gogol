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
-- Module      : Gogol.Books.Myconfig.RequestAccess
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request concurrent and download access restrictions.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.requestAccess@.
module Gogol.Books.Myconfig.RequestAccess
    (
    -- * Resource
      BooksMyconfigRequestAccessResource

    -- ** Constructing a Request
    , BooksMyconfigRequestAccess (..)
    , newBooksMyconfigRequestAccess
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.myconfig.requestAccess@ method which the
-- 'BooksMyconfigRequestAccess' request conforms to.
type BooksMyconfigRequestAccessResource =
     "books" Core.:>
       "v1" Core.:>
         "myconfig" Core.:>
           "requestAccess" Core.:>
             Core.QueryParam "cpksver" Core.Text Core.:>
               Core.QueryParam "nonce" Core.Text Core.:>
                 Core.QueryParam "source" Core.Text Core.:>
                   Core.QueryParam "volumeId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "licenseTypes"
                             MyconfigRequestAccessLicenseTypes
                             Core.:>
                             Core.QueryParam "locale" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Post '[Core.JSON] RequestAccessData

-- | Request concurrent and download access restrictions.
--
-- /See:/ 'newBooksMyconfigRequestAccess' smart constructor.
data BooksMyconfigRequestAccess = BooksMyconfigRequestAccess
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The device\/version ID from which to request the restrictions.
    , cpksver :: Core.Text
      -- | The type of access license to request. If not specified, the default is BOTH.
    , licenseTypes :: (Core.Maybe MyconfigRequestAccessLicenseTypes)
      -- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
    , locale :: (Core.Maybe Core.Text)
      -- | The client nonce value.
    , nonce :: Core.Text
      -- | String to identify the originator of this request.
    , source :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The volume to request concurrent\/download restrictions for.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMyconfigRequestAccess' with the minimum fields required to make a request.
newBooksMyconfigRequestAccess 
    ::  Core.Text
       -- ^  The device\/version ID from which to request the restrictions. See 'cpksver'.
    -> Core.Text
       -- ^  The client nonce value. See 'nonce'.
    -> Core.Text
       -- ^  String to identify the originator of this request. See 'source'.
    -> Core.Text
       -- ^  The volume to request concurrent\/download restrictions for. See 'volumeId'.
    -> BooksMyconfigRequestAccess
newBooksMyconfigRequestAccess cpksver nonce source volumeId =
  BooksMyconfigRequestAccess
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , cpksver = cpksver
    , licenseTypes = Core.Nothing
    , locale = Core.Nothing
    , nonce = nonce
    , source = source
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , volumeId = volumeId
    }

instance Core.GoogleRequest
           BooksMyconfigRequestAccess
         where
        type Rs BooksMyconfigRequestAccess =
             RequestAccessData
        type Scopes BooksMyconfigRequestAccess =
             '[Books'FullControl]
        requestClient BooksMyconfigRequestAccess{..}
          = go (Core.Just cpksver) (Core.Just nonce)
              (Core.Just source)
              (Core.Just volumeId)
              xgafv
              accessToken
              callback
              licenseTypes
              locale
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksMyconfigRequestAccessResource)
                      Core.mempty

