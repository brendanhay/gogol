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
-- Module      : Gogol.LibraryAgent.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.LibraryAgent.Internal.Product
  (

    -- * GoogleExampleLibraryagentV1Book
    GoogleExampleLibraryagentV1Book (..),
    newGoogleExampleLibraryagentV1Book,

    -- * GoogleExampleLibraryagentV1ListBooksResponse
    GoogleExampleLibraryagentV1ListBooksResponse (..),
    newGoogleExampleLibraryagentV1ListBooksResponse,

    -- * GoogleExampleLibraryagentV1ListShelvesResponse
    GoogleExampleLibraryagentV1ListShelvesResponse (..),
    newGoogleExampleLibraryagentV1ListShelvesResponse,

    -- * GoogleExampleLibraryagentV1Shelf
    GoogleExampleLibraryagentV1Shelf (..),
    newGoogleExampleLibraryagentV1Shelf,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.LibraryAgent.Internal.Sum

-- | A single book in the library.
--
-- /See:/ 'newGoogleExampleLibraryagentV1Book' smart constructor.
data GoogleExampleLibraryagentV1Book = GoogleExampleLibraryagentV1Book
    {
      -- | The name of the book author.
      author :: (Core.Maybe Core.Text)
      -- | The resource name of the book. Book names have the form @shelves\/{shelf_id}\/books\/{book_id}@. The name is ignored when creating a book.
    , name :: (Core.Maybe Core.Text)
      -- | Value indicating whether the book has been read.
    , read :: (Core.Maybe Core.Bool)
      -- | The title of the book.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleExampleLibraryagentV1Book' with the minimum fields required to make a request.
newGoogleExampleLibraryagentV1Book 
    ::  GoogleExampleLibraryagentV1Book
newGoogleExampleLibraryagentV1Book =
  GoogleExampleLibraryagentV1Book
    { author = Core.Nothing
    , name = Core.Nothing
    , read = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON
           GoogleExampleLibraryagentV1Book
         where
        parseJSON
          = Core.withObject "GoogleExampleLibraryagentV1Book"
              (\ o ->
                 GoogleExampleLibraryagentV1Book Core.<$>
                   (o Core..:? "author") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "read")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON GoogleExampleLibraryagentV1Book
         where
        toJSON GoogleExampleLibraryagentV1Book{..}
          = Core.object
              (Core.catMaybes
                 [("author" Core..=) Core.<$> author,
                  ("name" Core..=) Core.<$> name,
                  ("read" Core..=) Core.<$> read,
                  ("title" Core..=) Core.<$> title])


-- | Response message for LibraryAgent.ListBooks.
--
-- /See:/ 'newGoogleExampleLibraryagentV1ListBooksResponse' smart constructor.
data GoogleExampleLibraryagentV1ListBooksResponse = GoogleExampleLibraryagentV1ListBooksResponse
    {
      -- | The list of books.
      books :: (Core.Maybe [GoogleExampleLibraryagentV1Book])
      -- | A token to retrieve next page of results. Pass this value in the ListBooksRequest.page_token field in the subsequent call to @ListBooks@ method to retrieve the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleExampleLibraryagentV1ListBooksResponse' with the minimum fields required to make a request.
newGoogleExampleLibraryagentV1ListBooksResponse 
    ::  GoogleExampleLibraryagentV1ListBooksResponse
newGoogleExampleLibraryagentV1ListBooksResponse =
  GoogleExampleLibraryagentV1ListBooksResponse
    {books = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           GoogleExampleLibraryagentV1ListBooksResponse
         where
        parseJSON
          = Core.withObject
              "GoogleExampleLibraryagentV1ListBooksResponse"
              (\ o ->
                 GoogleExampleLibraryagentV1ListBooksResponse Core.<$>
                   (o Core..:? "books") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON
           GoogleExampleLibraryagentV1ListBooksResponse
         where
        toJSON
          GoogleExampleLibraryagentV1ListBooksResponse{..}
          = Core.object
              (Core.catMaybes
                 [("books" Core..=) Core.<$> books,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for LibraryAgent.ListShelves.
--
-- /See:/ 'newGoogleExampleLibraryagentV1ListShelvesResponse' smart constructor.
data GoogleExampleLibraryagentV1ListShelvesResponse = GoogleExampleLibraryagentV1ListShelvesResponse
    {
      -- | A token to retrieve next page of results. Pass this value in the ListShelvesRequest.page_token field in the subsequent call to @ListShelves@ method to retrieve the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of shelves.
    , shelves :: (Core.Maybe [GoogleExampleLibraryagentV1Shelf])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleExampleLibraryagentV1ListShelvesResponse' with the minimum fields required to make a request.
newGoogleExampleLibraryagentV1ListShelvesResponse 
    ::  GoogleExampleLibraryagentV1ListShelvesResponse
newGoogleExampleLibraryagentV1ListShelvesResponse =
  GoogleExampleLibraryagentV1ListShelvesResponse
    {nextPageToken = Core.Nothing, shelves = Core.Nothing}

instance Core.FromJSON
           GoogleExampleLibraryagentV1ListShelvesResponse
         where
        parseJSON
          = Core.withObject
              "GoogleExampleLibraryagentV1ListShelvesResponse"
              (\ o ->
                 GoogleExampleLibraryagentV1ListShelvesResponse
                   Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "shelves"))

instance Core.ToJSON
           GoogleExampleLibraryagentV1ListShelvesResponse
         where
        toJSON
          GoogleExampleLibraryagentV1ListShelvesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("shelves" Core..=) Core.<$> shelves])


-- | A Shelf contains a collection of books with a theme.
--
-- /See:/ 'newGoogleExampleLibraryagentV1Shelf' smart constructor.
data GoogleExampleLibraryagentV1Shelf = GoogleExampleLibraryagentV1Shelf
    {
      -- | Output only. The resource name of the shelf. Shelf names have the form @shelves\/{shelf_id}@. The name is ignored when creating a shelf.
      name :: (Core.Maybe Core.Text)
      -- | The theme of the shelf
    , theme :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleExampleLibraryagentV1Shelf' with the minimum fields required to make a request.
newGoogleExampleLibraryagentV1Shelf 
    ::  GoogleExampleLibraryagentV1Shelf
newGoogleExampleLibraryagentV1Shelf =
  GoogleExampleLibraryagentV1Shelf {name = Core.Nothing, theme = Core.Nothing}

instance Core.FromJSON
           GoogleExampleLibraryagentV1Shelf
         where
        parseJSON
          = Core.withObject "GoogleExampleLibraryagentV1Shelf"
              (\ o ->
                 GoogleExampleLibraryagentV1Shelf Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "theme"))

instance Core.ToJSON GoogleExampleLibraryagentV1Shelf
         where
        toJSON GoogleExampleLibraryagentV1Shelf{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("theme" Core..=) Core.<$> theme])

