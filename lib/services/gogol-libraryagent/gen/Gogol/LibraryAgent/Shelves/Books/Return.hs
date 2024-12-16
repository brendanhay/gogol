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
-- Module      : Gogol.LibraryAgent.Shelves.Books.Return
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a book to the library. Returns the book if it is returned to the library successfully. Returns error if the book does not belong to the library or the users didn\'t borrow before.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.return@.
module Gogol.LibraryAgent.Shelves.Books.Return
    (
    -- * Resource
      LibraryAgentShelvesBooksReturnResource

    -- ** Constructing a Request
    , LibraryAgentShelvesBooksReturn (..)
    , newLibraryAgentShelvesBooksReturn
    ) where

import qualified Gogol.Prelude as Core
import Gogol.LibraryAgent.Types

-- | A resource alias for @libraryagent.shelves.books.return@ method which the
-- 'LibraryAgentShelvesBooksReturn' request conforms to.
type LibraryAgentShelvesBooksReturnResource =
     "v1" Core.:>
       Core.CaptureMode "name" "return" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Post '[Core.JSON]
                       GoogleExampleLibraryagentV1Book

-- | Return a book to the library. Returns the book if it is returned to the library successfully. Returns error if the book does not belong to the library or the users didn\'t borrow before.
--
-- /See:/ 'newLibraryAgentShelvesBooksReturn' smart constructor.
data LibraryAgentShelvesBooksReturn = LibraryAgentShelvesBooksReturn
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the book to return.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesBooksReturn' with the minimum fields required to make a request.
newLibraryAgentShelvesBooksReturn 
    ::  Core.Text
       -- ^  Required. The name of the book to return. See 'name'.
    -> LibraryAgentShelvesBooksReturn
newLibraryAgentShelvesBooksReturn name =
  LibraryAgentShelvesBooksReturn
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LibraryAgentShelvesBooksReturn
         where
        type Rs LibraryAgentShelvesBooksReturn =
             GoogleExampleLibraryagentV1Book
        type Scopes LibraryAgentShelvesBooksReturn =
             '[CloudPlatform'FullControl]
        requestClient LibraryAgentShelvesBooksReturn{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              libraryAgentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LibraryAgentShelvesBooksReturnResource)
                      Core.mempty

