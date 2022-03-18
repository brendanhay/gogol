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
-- Module      : Gogol.LibraryAgent.Shelves.Books.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists books in a shelf. The order is unspecified but deterministic. Newly created books will not necessarily be added to the end of this list. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.list@.
module Gogol.LibraryAgent.Shelves.Books.List
    (
    -- * Resource
      LibraryAgentShelvesBooksListResource

    -- ** Constructing a Request
    , newLibraryAgentShelvesBooksList
    , LibraryAgentShelvesBooksList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.LibraryAgent.Types

-- | A resource alias for @libraryagent.shelves.books.list@ method which the
-- 'LibraryAgentShelvesBooksList' request conforms to.
type LibraryAgentShelvesBooksListResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "books" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleExampleLibraryagentV1ListBooksResponse

-- | Lists books in a shelf. The order is unspecified but deterministic. Newly created books will not necessarily be added to the end of this list. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ 'newLibraryAgentShelvesBooksList' smart constructor.
data LibraryAgentShelvesBooksList = LibraryAgentShelvesBooksList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Requested page size. Server may return fewer books than requested. If unspecified, server will pick an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results the server should return. Typically, this is the value of ListBooksResponse.next/page/token. returned from the previous call to @ListBooks@ method.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the shelf whose books we\'d like to list.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesBooksList' with the minimum fields required to make a request.
newLibraryAgentShelvesBooksList 
    ::  Core.Text
       -- ^  Required. The name of the shelf whose books we\'d like to list. See 'parent'.
    -> LibraryAgentShelvesBooksList
newLibraryAgentShelvesBooksList parent =
  LibraryAgentShelvesBooksList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LibraryAgentShelvesBooksList
         where
        type Rs LibraryAgentShelvesBooksList =
             GoogleExampleLibraryagentV1ListBooksResponse
        type Scopes LibraryAgentShelvesBooksList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient LibraryAgentShelvesBooksList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              libraryAgentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LibraryAgentShelvesBooksListResource)
                      Core.mempty

