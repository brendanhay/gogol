{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.bookshelves.list@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.List
    (
    -- * REST Resource
      MyLibraryBookshelvesListResource

    -- * Creating a Request
    , myLibraryBookshelvesList'
    , MyLibraryBookshelvesList'

    -- * Request Lenses
    , mlblSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.list@ method which the
-- 'MyLibraryBookshelvesList'' request conforms to.
type MyLibraryBookshelvesListResource =
     "mylibrary" :>
       "bookshelves" :>
         QueryParam "source" Text :>
           QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ 'myLibraryBookshelvesList'' smart constructor.
newtype MyLibraryBookshelvesList' = MyLibraryBookshelvesList'
    { _mlblSource :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlblSource'
myLibraryBookshelvesList'
    :: MyLibraryBookshelvesList'
myLibraryBookshelvesList' =
    MyLibraryBookshelvesList'
    { _mlblSource = Nothing
    }

-- | String to identify the originator of this request.
mlblSource :: Lens' MyLibraryBookshelvesList' (Maybe Text)
mlblSource
  = lens _mlblSource (\ s a -> s{_mlblSource = a})

instance GoogleRequest MyLibraryBookshelvesList'
         where
        type Rs MyLibraryBookshelvesList' = Bookshelves
        requestClient MyLibraryBookshelvesList'{..}
          = go _mlblSource (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryBookshelvesListResource)
                      mempty
