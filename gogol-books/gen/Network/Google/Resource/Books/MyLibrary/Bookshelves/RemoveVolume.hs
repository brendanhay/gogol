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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a volume from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesRemoveVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesRemoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesRemoveVolume'
    , MyLibraryBookshelvesRemoveVolume'

    -- * Request Lenses
    , mlbrvReason
    , mlbrvShelf
    , mlbrvVolumeId
    , mlbrvSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesRemoveVolume@ method which the
-- 'MyLibraryBookshelvesRemoveVolume'' request conforms to.
type MyLibraryBookshelvesRemoveVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "removeVolume" :>
             QueryParam "volumeId" Text :>
               QueryParam "reason"
                 MyLibraryBookshelvesRemoveVolumeReason
                 :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Removes a volume from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesRemoveVolume'' smart constructor.
data MyLibraryBookshelvesRemoveVolume' = MyLibraryBookshelvesRemoveVolume'
    { _mlbrvReason   :: !(Maybe MyLibraryBookshelvesRemoveVolumeReason)
    , _mlbrvShelf    :: !Text
    , _mlbrvVolumeId :: !Text
    , _mlbrvSource   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesRemoveVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbrvReason'
--
-- * 'mlbrvShelf'
--
-- * 'mlbrvVolumeId'
--
-- * 'mlbrvSource'
myLibraryBookshelvesRemoveVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> MyLibraryBookshelvesRemoveVolume'
myLibraryBookshelvesRemoveVolume' pMlbrvShelf_ pMlbrvVolumeId_ =
    MyLibraryBookshelvesRemoveVolume'
    { _mlbrvReason = Nothing
    , _mlbrvShelf = pMlbrvShelf_
    , _mlbrvVolumeId = pMlbrvVolumeId_
    , _mlbrvSource = Nothing
    }

-- | The reason for which the book is removed from the library.
mlbrvReason :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe MyLibraryBookshelvesRemoveVolumeReason)
mlbrvReason
  = lens _mlbrvReason (\ s a -> s{_mlbrvReason = a})

-- | ID of bookshelf from which to remove a volume.
mlbrvShelf :: Lens' MyLibraryBookshelvesRemoveVolume' Text
mlbrvShelf
  = lens _mlbrvShelf (\ s a -> s{_mlbrvShelf = a})

-- | ID of volume to remove.
mlbrvVolumeId :: Lens' MyLibraryBookshelvesRemoveVolume' Text
mlbrvVolumeId
  = lens _mlbrvVolumeId
      (\ s a -> s{_mlbrvVolumeId = a})

-- | String to identify the originator of this request.
mlbrvSource :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Text)
mlbrvSource
  = lens _mlbrvSource (\ s a -> s{_mlbrvSource = a})

instance GoogleRequest
         MyLibraryBookshelvesRemoveVolume' where
        type Rs MyLibraryBookshelvesRemoveVolume' = ()
        requestClient MyLibraryBookshelvesRemoveVolume'{..}
          = go _mlbrvShelf (Just _mlbrvVolumeId) _mlbrvReason
              _mlbrvSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesRemoveVolumeResource)
                      mempty
