{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.LibraryAgent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A simple Google Example Library API.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference>
module Network.Google.LibraryAgent
    (
    -- * Service Configuration
      libraryAgentService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , LibraryAgentAPI

    -- * Resources

    -- ** libraryagent.shelves.books.borrow
    , module Network.Google.Resource.LibraryAgent.Shelves.Books.Borrow

    -- ** libraryagent.shelves.books.get
    , module Network.Google.Resource.LibraryAgent.Shelves.Books.Get

    -- ** libraryagent.shelves.books.list
    , module Network.Google.Resource.LibraryAgent.Shelves.Books.List

    -- ** libraryagent.shelves.books.return
    , module Network.Google.Resource.LibraryAgent.Shelves.Books.Return

    -- ** libraryagent.shelves.get
    , module Network.Google.Resource.LibraryAgent.Shelves.Get

    -- ** libraryagent.shelves.list
    , module Network.Google.Resource.LibraryAgent.Shelves.List

    -- * Types

    -- ** GoogleExampleLibraryagentV1Shelf
    , GoogleExampleLibraryagentV1Shelf
    , googleExampleLibraryagentV1Shelf
    , gelvsName
    , gelvsTheme

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleExampleLibraryagentV1ListShelvesResponse
    , GoogleExampleLibraryagentV1ListShelvesResponse
    , googleExampleLibraryagentV1ListShelvesResponse
    , gelvlsrNextPageToken
    , gelvlsrShelves

    -- ** GoogleExampleLibraryagentV1ListBooksResponse
    , GoogleExampleLibraryagentV1ListBooksResponse
    , googleExampleLibraryagentV1ListBooksResponse
    , gelvlbrNextPageToken
    , gelvlbrBooks

    -- ** GoogleExampleLibraryagentV1Book
    , GoogleExampleLibraryagentV1Book
    , googleExampleLibraryagentV1Book
    , gelvbRead
    , gelvbName
    , gelvbAuthor
    , gelvbTitle
    ) where

import Network.Google.Prelude
import Network.Google.LibraryAgent.Types
import Network.Google.Resource.LibraryAgent.Shelves.Books.Borrow
import Network.Google.Resource.LibraryAgent.Shelves.Books.Get
import Network.Google.Resource.LibraryAgent.Shelves.Books.List
import Network.Google.Resource.LibraryAgent.Shelves.Books.Return
import Network.Google.Resource.LibraryAgent.Shelves.Get
import Network.Google.Resource.LibraryAgent.Shelves.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Library Agent API service.
type LibraryAgentAPI =
     ShelvesBooksReturnResource :<|>
       ShelvesBooksListResource
       :<|> ShelvesBooksBorrowResource
       :<|> ShelvesBooksGetResource
       :<|> ShelvesListResource
       :<|> ShelvesGetResource
