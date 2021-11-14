{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.LibraryAgent.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.LibraryAgent.Types.Product where

import Network.Google.LibraryAgent.Types.Sum
import Network.Google.Prelude

-- | A Shelf contains a collection of books with a theme.
--
-- /See:/ 'googleExampleLibraryagentV1Shelf' smart constructor.
data GoogleExampleLibraryagentV1Shelf =
  GoogleExampleLibraryagentV1Shelf'
    { _gelvsName :: !(Maybe Text)
    , _gelvsTheme :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleExampleLibraryagentV1Shelf' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gelvsName'
--
-- * 'gelvsTheme'
googleExampleLibraryagentV1Shelf
    :: GoogleExampleLibraryagentV1Shelf
googleExampleLibraryagentV1Shelf =
  GoogleExampleLibraryagentV1Shelf'
    {_gelvsName = Nothing, _gelvsTheme = Nothing}


-- | Output only. The resource name of the shelf. Shelf names have the form
-- \`shelves\/{shelf_id}\`. The name is ignored when creating a shelf.
gelvsName :: Lens' GoogleExampleLibraryagentV1Shelf (Maybe Text)
gelvsName
  = lens _gelvsName (\ s a -> s{_gelvsName = a})

-- | The theme of the shelf
gelvsTheme :: Lens' GoogleExampleLibraryagentV1Shelf (Maybe Text)
gelvsTheme
  = lens _gelvsTheme (\ s a -> s{_gelvsTheme = a})

instance FromJSON GoogleExampleLibraryagentV1Shelf
         where
        parseJSON
          = withObject "GoogleExampleLibraryagentV1Shelf"
              (\ o ->
                 GoogleExampleLibraryagentV1Shelf' <$>
                   (o .:? "name") <*> (o .:? "theme"))

instance ToJSON GoogleExampleLibraryagentV1Shelf
         where
        toJSON GoogleExampleLibraryagentV1Shelf'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gelvsName,
                  ("theme" .=) <$> _gelvsTheme])

-- | Response message for LibraryAgent.ListShelves.
--
-- /See:/ 'googleExampleLibraryagentV1ListShelvesResponse' smart constructor.
data GoogleExampleLibraryagentV1ListShelvesResponse =
  GoogleExampleLibraryagentV1ListShelvesResponse'
    { _gelvlsrNextPageToken :: !(Maybe Text)
    , _gelvlsrShelves :: !(Maybe [GoogleExampleLibraryagentV1Shelf])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleExampleLibraryagentV1ListShelvesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gelvlsrNextPageToken'
--
-- * 'gelvlsrShelves'
googleExampleLibraryagentV1ListShelvesResponse
    :: GoogleExampleLibraryagentV1ListShelvesResponse
googleExampleLibraryagentV1ListShelvesResponse =
  GoogleExampleLibraryagentV1ListShelvesResponse'
    {_gelvlsrNextPageToken = Nothing, _gelvlsrShelves = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- ListShelvesRequest.page_token field in the subsequent call to
-- \`ListShelves\` method to retrieve the next page of results.
gelvlsrNextPageToken :: Lens' GoogleExampleLibraryagentV1ListShelvesResponse (Maybe Text)
gelvlsrNextPageToken
  = lens _gelvlsrNextPageToken
      (\ s a -> s{_gelvlsrNextPageToken = a})

-- | The list of shelves.
gelvlsrShelves :: Lens' GoogleExampleLibraryagentV1ListShelvesResponse [GoogleExampleLibraryagentV1Shelf]
gelvlsrShelves
  = lens _gelvlsrShelves
      (\ s a -> s{_gelvlsrShelves = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleExampleLibraryagentV1ListShelvesResponse
         where
        parseJSON
          = withObject
              "GoogleExampleLibraryagentV1ListShelvesResponse"
              (\ o ->
                 GoogleExampleLibraryagentV1ListShelvesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "shelves" .!= mempty))

instance ToJSON
           GoogleExampleLibraryagentV1ListShelvesResponse
         where
        toJSON
          GoogleExampleLibraryagentV1ListShelvesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gelvlsrNextPageToken,
                  ("shelves" .=) <$> _gelvlsrShelves])

-- | Response message for LibraryAgent.ListBooks.
--
-- /See:/ 'googleExampleLibraryagentV1ListBooksResponse' smart constructor.
data GoogleExampleLibraryagentV1ListBooksResponse =
  GoogleExampleLibraryagentV1ListBooksResponse'
    { _gelvlbrNextPageToken :: !(Maybe Text)
    , _gelvlbrBooks :: !(Maybe [GoogleExampleLibraryagentV1Book])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleExampleLibraryagentV1ListBooksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gelvlbrNextPageToken'
--
-- * 'gelvlbrBooks'
googleExampleLibraryagentV1ListBooksResponse
    :: GoogleExampleLibraryagentV1ListBooksResponse
googleExampleLibraryagentV1ListBooksResponse =
  GoogleExampleLibraryagentV1ListBooksResponse'
    {_gelvlbrNextPageToken = Nothing, _gelvlbrBooks = Nothing}


-- | A token to retrieve next page of results. Pass this value in the
-- ListBooksRequest.page_token field in the subsequent call to
-- \`ListBooks\` method to retrieve the next page of results.
gelvlbrNextPageToken :: Lens' GoogleExampleLibraryagentV1ListBooksResponse (Maybe Text)
gelvlbrNextPageToken
  = lens _gelvlbrNextPageToken
      (\ s a -> s{_gelvlbrNextPageToken = a})

-- | The list of books.
gelvlbrBooks :: Lens' GoogleExampleLibraryagentV1ListBooksResponse [GoogleExampleLibraryagentV1Book]
gelvlbrBooks
  = lens _gelvlbrBooks (\ s a -> s{_gelvlbrBooks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleExampleLibraryagentV1ListBooksResponse
         where
        parseJSON
          = withObject
              "GoogleExampleLibraryagentV1ListBooksResponse"
              (\ o ->
                 GoogleExampleLibraryagentV1ListBooksResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "books" .!= mempty))

instance ToJSON
           GoogleExampleLibraryagentV1ListBooksResponse
         where
        toJSON
          GoogleExampleLibraryagentV1ListBooksResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gelvlbrNextPageToken,
                  ("books" .=) <$> _gelvlbrBooks])

-- | A single book in the library.
--
-- /See:/ 'googleExampleLibraryagentV1Book' smart constructor.
data GoogleExampleLibraryagentV1Book =
  GoogleExampleLibraryagentV1Book'
    { _gelvbRead :: !(Maybe Bool)
    , _gelvbName :: !(Maybe Text)
    , _gelvbAuthor :: !(Maybe Text)
    , _gelvbTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleExampleLibraryagentV1Book' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gelvbRead'
--
-- * 'gelvbName'
--
-- * 'gelvbAuthor'
--
-- * 'gelvbTitle'
googleExampleLibraryagentV1Book
    :: GoogleExampleLibraryagentV1Book
googleExampleLibraryagentV1Book =
  GoogleExampleLibraryagentV1Book'
    { _gelvbRead = Nothing
    , _gelvbName = Nothing
    , _gelvbAuthor = Nothing
    , _gelvbTitle = Nothing
    }


-- | Value indicating whether the book has been read.
gelvbRead :: Lens' GoogleExampleLibraryagentV1Book (Maybe Bool)
gelvbRead
  = lens _gelvbRead (\ s a -> s{_gelvbRead = a})

-- | The resource name of the book. Book names have the form
-- \`shelves\/{shelf_id}\/books\/{book_id}\`. The name is ignored when
-- creating a book.
gelvbName :: Lens' GoogleExampleLibraryagentV1Book (Maybe Text)
gelvbName
  = lens _gelvbName (\ s a -> s{_gelvbName = a})

-- | The name of the book author.
gelvbAuthor :: Lens' GoogleExampleLibraryagentV1Book (Maybe Text)
gelvbAuthor
  = lens _gelvbAuthor (\ s a -> s{_gelvbAuthor = a})

-- | The title of the book.
gelvbTitle :: Lens' GoogleExampleLibraryagentV1Book (Maybe Text)
gelvbTitle
  = lens _gelvbTitle (\ s a -> s{_gelvbTitle = a})

instance FromJSON GoogleExampleLibraryagentV1Book
         where
        parseJSON
          = withObject "GoogleExampleLibraryagentV1Book"
              (\ o ->
                 GoogleExampleLibraryagentV1Book' <$>
                   (o .:? "read") <*> (o .:? "name") <*>
                     (o .:? "author")
                     <*> (o .:? "title"))

instance ToJSON GoogleExampleLibraryagentV1Book where
        toJSON GoogleExampleLibraryagentV1Book'{..}
          = object
              (catMaybes
                 [("read" .=) <$> _gelvbRead,
                  ("name" .=) <$> _gelvbName,
                  ("author" .=) <$> _gelvbAuthor,
                  ("title" .=) <$> _gelvbTitle])
