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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesGet@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
    (
    -- * REST Resource
      MyLibraryBookshelvesGetResource

    -- * Creating a Request
    , myLibraryBookshelvesGet'
    , MyLibraryBookshelvesGet'

    -- * Request Lenses
    , mlbgShelf
    , mlbgSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesGet@ method which the
-- 'MyLibraryBookshelvesGet'' request conforms to.
type MyLibraryBookshelvesGetResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           QueryParam "source" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ 'myLibraryBookshelvesGet'' smart constructor.
data MyLibraryBookshelvesGet' = MyLibraryBookshelvesGet'
    { _mlbgShelf  :: !Text
    , _mlbgSource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbgShelf'
--
-- * 'mlbgSource'
myLibraryBookshelvesGet'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesGet'
myLibraryBookshelvesGet' pMlbgShelf_ =
    MyLibraryBookshelvesGet'
    { _mlbgShelf = pMlbgShelf_
    , _mlbgSource = Nothing
    }

-- | ID of bookshelf to retrieve.
mlbgShelf :: Lens' MyLibraryBookshelvesGet' Text
mlbgShelf
  = lens _mlbgShelf (\ s a -> s{_mlbgShelf = a})

-- | String to identify the originator of this request.
mlbgSource :: Lens' MyLibraryBookshelvesGet' (Maybe Text)
mlbgSource
  = lens _mlbgSource (\ s a -> s{_mlbgSource = a})

instance GoogleRequest MyLibraryBookshelvesGet' where
        type Rs MyLibraryBookshelvesGet' = Bookshelf
        requestClient MyLibraryBookshelvesGet'{..}
          = go _mlbgShelf _mlbgSource (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryBookshelvesGetResource)
                      mempty
