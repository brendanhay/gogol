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
-- Module      : Network.Google.Resource.Books.Bookshelves.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.bookshelves.list@.
module Network.Google.Resource.Books.Bookshelves.List
    (
    -- * REST Resource
      BookshelvesListResource

    -- * Creating a Request
    , bookshelvesList
    , BookshelvesList

    -- * Request Lenses
    , blUserId
    , blSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.bookshelves.list@ method which the
-- 'BookshelvesList' request conforms to.
type BookshelvesListResource =
     "books" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "bookshelves" :>
               QueryParam "source" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ 'bookshelvesList' smart constructor.
data BookshelvesList = BookshelvesList'
    { _blUserId :: !Text
    , _blSource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blUserId'
--
-- * 'blSource'
bookshelvesList
    :: Text -- ^ 'blUserId'
    -> BookshelvesList
bookshelvesList pBlUserId_ =
    BookshelvesList'
    { _blUserId = pBlUserId_
    , _blSource = Nothing
    }

-- | ID of user for whom to retrieve bookshelves.
blUserId :: Lens' BookshelvesList Text
blUserId = lens _blUserId (\ s a -> s{_blUserId = a})

-- | String to identify the originator of this request.
blSource :: Lens' BookshelvesList (Maybe Text)
blSource = lens _blSource (\ s a -> s{_blSource = a})

instance GoogleRequest BookshelvesList where
        type Rs BookshelvesList = Bookshelves
        type Scopes BookshelvesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient BookshelvesList'{..}
          = go _blUserId _blSource (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy :: Proxy BookshelvesListResource)
                      mempty
