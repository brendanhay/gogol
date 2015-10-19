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
-- Module      : Network.Google.Resource.Books.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksBookshelvesVolumesList@.
module Network.Google.Resource.Books.Bookshelves.Volumes.List
    (
    -- * REST Resource
      BookshelvesVolumesListResource

    -- * Creating a Request
    , bookshelvesVolumesList'
    , BookshelvesVolumesList'

    -- * Request Lenses
    , bvlUserId
    , bvlShelf
    , bvlSource
    , bvlStartIndex
    , bvlMaxResults
    , bvlShowPreOrders
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksBookshelvesVolumesList@ method which the
-- 'BookshelvesVolumesList'' request conforms to.
type BookshelvesVolumesListResource =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           Capture "shelf" Text :>
             "volumes" :>
               QueryParam "source" Text :>
                 QueryParam "startIndex" Word32 :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "showPreorders" Bool :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesVolumesList'' smart constructor.
data BookshelvesVolumesList' = BookshelvesVolumesList'
    { _bvlUserId        :: !Text
    , _bvlShelf         :: !Text
    , _bvlSource        :: !(Maybe Text)
    , _bvlStartIndex    :: !(Maybe Word32)
    , _bvlMaxResults    :: !(Maybe Word32)
    , _bvlShowPreOrders :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvlUserId'
--
-- * 'bvlShelf'
--
-- * 'bvlSource'
--
-- * 'bvlStartIndex'
--
-- * 'bvlMaxResults'
--
-- * 'bvlShowPreOrders'
bookshelvesVolumesList'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'shelf'
    -> BookshelvesVolumesList'
bookshelvesVolumesList' pBvlUserId_ pBvlShelf_ =
    BookshelvesVolumesList'
    { _bvlUserId = pBvlUserId_
    , _bvlShelf = pBvlShelf_
    , _bvlSource = Nothing
    , _bvlStartIndex = Nothing
    , _bvlMaxResults = Nothing
    , _bvlShowPreOrders = Nothing
    }

-- | ID of user for whom to retrieve bookshelf volumes.
bvlUserId :: Lens' BookshelvesVolumesList' Text
bvlUserId
  = lens _bvlUserId (\ s a -> s{_bvlUserId = a})

-- | ID of bookshelf to retrieve volumes.
bvlShelf :: Lens' BookshelvesVolumesList' Text
bvlShelf = lens _bvlShelf (\ s a -> s{_bvlShelf = a})

-- | String to identify the originator of this request.
bvlSource :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlSource
  = lens _bvlSource (\ s a -> s{_bvlSource = a})

-- | Index of the first element to return (starts at 0)
bvlStartIndex :: Lens' BookshelvesVolumesList' (Maybe Word32)
bvlStartIndex
  = lens _bvlStartIndex
      (\ s a -> s{_bvlStartIndex = a})

-- | Maximum number of results to return
bvlMaxResults :: Lens' BookshelvesVolumesList' (Maybe Word32)
bvlMaxResults
  = lens _bvlMaxResults
      (\ s a -> s{_bvlMaxResults = a})

-- | Set to true to show pre-ordered books. Defaults to false.
bvlShowPreOrders :: Lens' BookshelvesVolumesList' (Maybe Bool)
bvlShowPreOrders
  = lens _bvlShowPreOrders
      (\ s a -> s{_bvlShowPreOrders = a})

instance GoogleRequest BookshelvesVolumesList' where
        type Rs BookshelvesVolumesList' = Volumes
        requestClient BookshelvesVolumesList'{..}
          = go _bvlUserId _bvlShelf _bvlSource _bvlStartIndex
              _bvlMaxResults
              _bvlShowPreOrders
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy BookshelvesVolumesListResource)
                      mempty
