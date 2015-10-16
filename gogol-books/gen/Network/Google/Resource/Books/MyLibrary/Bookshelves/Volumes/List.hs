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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesVolumesList@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
    (
    -- * REST Resource
      MyLibraryBookshelvesVolumesListResource

    -- * Creating a Request
    , myLibraryBookshelvesVolumesList'
    , MyLibraryBookshelvesVolumesList'

    -- * Request Lenses
    , mlbvlCountry
    , mlbvlQ
    , mlbvlShelf
    , mlbvlSource
    , mlbvlProjection
    , mlbvlStartIndex
    , mlbvlMaxResults
    , mlbvlShowPreOrders
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesVolumesList@ method which the
-- 'MyLibraryBookshelvesVolumesList'' request conforms to.
type MyLibraryBookshelvesVolumesListResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "volumes" :>
             QueryParam "country" Text :>
               QueryParam "q" Text :>
                 QueryParam "source" Text :>
                   QueryParam "projection"
                     MyLibraryBookshelvesVolumesListProjection
                     :>
                     QueryParam "startIndex" Word32 :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "showPreorders" Bool :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesVolumesList'' smart constructor.
data MyLibraryBookshelvesVolumesList' = MyLibraryBookshelvesVolumesList'
    { _mlbvlCountry       :: !(Maybe Text)
    , _mlbvlQ             :: !(Maybe Text)
    , _mlbvlShelf         :: !Text
    , _mlbvlSource        :: !(Maybe Text)
    , _mlbvlProjection    :: !(Maybe MyLibraryBookshelvesVolumesListProjection)
    , _mlbvlStartIndex    :: !(Maybe Word32)
    , _mlbvlMaxResults    :: !(Maybe Word32)
    , _mlbvlShowPreOrders :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbvlCountry'
--
-- * 'mlbvlQ'
--
-- * 'mlbvlShelf'
--
-- * 'mlbvlSource'
--
-- * 'mlbvlProjection'
--
-- * 'mlbvlStartIndex'
--
-- * 'mlbvlMaxResults'
--
-- * 'mlbvlShowPreOrders'
myLibraryBookshelvesVolumesList'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesVolumesList'
myLibraryBookshelvesVolumesList' pMlbvlShelf_ =
    MyLibraryBookshelvesVolumesList'
    { _mlbvlCountry = Nothing
    , _mlbvlQ = Nothing
    , _mlbvlShelf = pMlbvlShelf_
    , _mlbvlSource = Nothing
    , _mlbvlProjection = Nothing
    , _mlbvlStartIndex = Nothing
    , _mlbvlMaxResults = Nothing
    , _mlbvlShowPreOrders = Nothing
    }

-- | ISO-3166-1 code to override the IP-based location.
mlbvlCountry :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlCountry
  = lens _mlbvlCountry (\ s a -> s{_mlbvlCountry = a})

-- | Full-text search query string in this bookshelf.
mlbvlQ :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlQ = lens _mlbvlQ (\ s a -> s{_mlbvlQ = a})

-- | The bookshelf ID or name retrieve volumes for.
mlbvlShelf :: Lens' MyLibraryBookshelvesVolumesList' Text
mlbvlShelf
  = lens _mlbvlShelf (\ s a -> s{_mlbvlShelf = a})

-- | String to identify the originator of this request.
mlbvlSource :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlSource
  = lens _mlbvlSource (\ s a -> s{_mlbvlSource = a})

-- | Restrict information returned to a set of selected fields.
mlbvlProjection :: Lens' MyLibraryBookshelvesVolumesList' (Maybe MyLibraryBookshelvesVolumesListProjection)
mlbvlProjection
  = lens _mlbvlProjection
      (\ s a -> s{_mlbvlProjection = a})

-- | Index of the first element to return (starts at 0)
mlbvlStartIndex :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Word32)
mlbvlStartIndex
  = lens _mlbvlStartIndex
      (\ s a -> s{_mlbvlStartIndex = a})

-- | Maximum number of results to return
mlbvlMaxResults :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Word32)
mlbvlMaxResults
  = lens _mlbvlMaxResults
      (\ s a -> s{_mlbvlMaxResults = a})

-- | Set to true to show pre-ordered books. Defaults to false.
mlbvlShowPreOrders :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Bool)
mlbvlShowPreOrders
  = lens _mlbvlShowPreOrders
      (\ s a -> s{_mlbvlShowPreOrders = a})

instance GoogleRequest
         MyLibraryBookshelvesVolumesList' where
        type Rs MyLibraryBookshelvesVolumesList' = Volumes
        requestClient MyLibraryBookshelvesVolumesList'{..}
          = go _mlbvlShelf _mlbvlCountry _mlbvlQ _mlbvlSource
              _mlbvlProjection
              _mlbvlStartIndex
              _mlbvlMaxResults
              _mlbvlShowPreOrders
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesVolumesListResource)
                      mempty
