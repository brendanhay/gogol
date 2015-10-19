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
-- Module      : Network.Google.Resource.Books.Bookshelves.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.bookshelves.get@.
module Network.Google.Resource.Books.Bookshelves.Get
    (
    -- * REST Resource
      BookshelvesGetResource

    -- * Creating a Request
    , bookshelvesGet'
    , BookshelvesGet'

    -- * Request Lenses
    , bgUserId
    , bgShelf
    , bgSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.bookshelves.get@ method which the
-- 'BookshelvesGet'' request conforms to.
type BookshelvesGetResource =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           Capture "shelf" Text :>
             QueryParam "source" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesGet'' smart constructor.
data BookshelvesGet' = BookshelvesGet'
    { _bgUserId :: !Text
    , _bgShelf  :: !Text
    , _bgSource :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgUserId'
--
-- * 'bgShelf'
--
-- * 'bgSource'
bookshelvesGet'
    :: Text -- ^ 'bgUserId'
    -> Text -- ^ 'bgShelf'
    -> BookshelvesGet'
bookshelvesGet' pBgUserId_ pBgShelf_ =
    BookshelvesGet'
    { _bgUserId = pBgUserId_
    , _bgShelf = pBgShelf_
    , _bgSource = Nothing
    }

-- | ID of user for whom to retrieve bookshelves.
bgUserId :: Lens' BookshelvesGet' Text
bgUserId = lens _bgUserId (\ s a -> s{_bgUserId = a})

-- | ID of bookshelf to retrieve.
bgShelf :: Lens' BookshelvesGet' Text
bgShelf = lens _bgShelf (\ s a -> s{_bgShelf = a})

-- | String to identify the originator of this request.
bgSource :: Lens' BookshelvesGet' (Maybe Text)
bgSource = lens _bgSource (\ s a -> s{_bgSource = a})

instance GoogleRequest BookshelvesGet' where
        type Rs BookshelvesGet' = Bookshelf
        requestClient BookshelvesGet'{..}
          = go _bgUserId _bgShelf _bgSource (Just AltJSON)
              booksService
          where go
                  = buildClient (Proxy :: Proxy BookshelvesGetResource)
                      mempty
