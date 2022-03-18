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
-- Module      : Network.Google.LibraryAgent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A simple Google Example Library API.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference>
module Network.Google.LibraryAgent
  ( -- * Configuration
    libraryAgentService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** libraryagent.shelves.books.borrow
    LibraryAgentShelvesBooksBorrowResource,
    newLibraryAgentShelvesBooksBorrow,
    LibraryAgentShelvesBooksBorrow,

    -- ** libraryagent.shelves.books.get
    LibraryAgentShelvesBooksGetResource,
    newLibraryAgentShelvesBooksGet,
    LibraryAgentShelvesBooksGet,

    -- ** libraryagent.shelves.books.list
    LibraryAgentShelvesBooksListResource,
    newLibraryAgentShelvesBooksList,
    LibraryAgentShelvesBooksList,

    -- ** libraryagent.shelves.books.return
    LibraryAgentShelvesBooksReturnResource,
    newLibraryAgentShelvesBooksReturn,
    LibraryAgentShelvesBooksReturn,

    -- ** libraryagent.shelves.get
    LibraryAgentShelvesGetResource,
    newLibraryAgentShelvesGet,
    LibraryAgentShelvesGet,

    -- ** libraryagent.shelves.list
    LibraryAgentShelvesListResource,
    newLibraryAgentShelvesList,
    LibraryAgentShelvesList,

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

import Network.Google.LibraryAgent.Shelves.Books.Borrow
import Network.Google.LibraryAgent.Shelves.Books.Get
import Network.Google.LibraryAgent.Shelves.Books.List
import Network.Google.LibraryAgent.Shelves.Books.Return
import Network.Google.LibraryAgent.Shelves.Get
import Network.Google.LibraryAgent.Shelves.List
import Network.Google.LibraryAgent.Types
