{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.LibraryAgent
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A simple Google Example Library API.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference>
module Gogol.LibraryAgent
  ( -- * Configuration
    libraryAgentService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** libraryagent.shelves.books.borrow
    LibraryAgentShelvesBooksBorrowResource,
    LibraryAgentShelvesBooksBorrow (..),
    newLibraryAgentShelvesBooksBorrow,

    -- ** libraryagent.shelves.books.get
    LibraryAgentShelvesBooksGetResource,
    LibraryAgentShelvesBooksGet (..),
    newLibraryAgentShelvesBooksGet,

    -- ** libraryagent.shelves.books.list
    LibraryAgentShelvesBooksListResource,
    LibraryAgentShelvesBooksList (..),
    newLibraryAgentShelvesBooksList,

    -- ** libraryagent.shelves.books.return
    LibraryAgentShelvesBooksReturnResource,
    LibraryAgentShelvesBooksReturn (..),
    newLibraryAgentShelvesBooksReturn,

    -- ** libraryagent.shelves.get
    LibraryAgentShelvesGetResource,
    LibraryAgentShelvesGet (..),
    newLibraryAgentShelvesGet,

    -- ** libraryagent.shelves.list
    LibraryAgentShelvesListResource,
    LibraryAgentShelvesList (..),
    newLibraryAgentShelvesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleExampleLibraryagentV1Book
    GoogleExampleLibraryagentV1Book (..),
    newGoogleExampleLibraryagentV1Book,

    -- ** GoogleExampleLibraryagentV1ListBooksResponse
    GoogleExampleLibraryagentV1ListBooksResponse (..),
    newGoogleExampleLibraryagentV1ListBooksResponse,

    -- ** GoogleExampleLibraryagentV1ListShelvesResponse
    GoogleExampleLibraryagentV1ListShelvesResponse (..),
    newGoogleExampleLibraryagentV1ListShelvesResponse,

    -- ** GoogleExampleLibraryagentV1Shelf
    GoogleExampleLibraryagentV1Shelf (..),
    newGoogleExampleLibraryagentV1Shelf,
  )
where

import Gogol.LibraryAgent.Shelves.Books.Borrow
import Gogol.LibraryAgent.Shelves.Books.Get
import Gogol.LibraryAgent.Shelves.Books.List
import Gogol.LibraryAgent.Shelves.Books.Return
import Gogol.LibraryAgent.Shelves.Get
import Gogol.LibraryAgent.Shelves.List
import Gogol.LibraryAgent.Types
