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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a volume within a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.bookshelves.moveVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesMoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesMoveVolume
    , MyLibraryBookshelvesMoveVolume

    -- * Request Lenses
    , mlbmvShelf
    , mlbmvVolumeId
    , mlbmvSource
    , mlbmvVolumePosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.moveVolume@ method which the
-- 'MyLibraryBookshelvesMoveVolume' request conforms to.
type MyLibraryBookshelvesMoveVolumeResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "bookshelves" :>
             Capture "shelf" Text :>
               "moveVolume" :>
                 QueryParam "volumeId" Text :>
                   QueryParam "volumePosition" (JSONText Int32) :>
                     QueryParam "source" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Moves a volume within a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesMoveVolume' smart constructor.
data MyLibraryBookshelvesMoveVolume = MyLibraryBookshelvesMoveVolume
    { _mlbmvShelf          :: !Text
    , _mlbmvVolumeId       :: !Text
    , _mlbmvSource         :: !(Maybe Text)
    , _mlbmvVolumePosition :: !(JSONText Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesMoveVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbmvShelf'
--
-- * 'mlbmvVolumeId'
--
-- * 'mlbmvSource'
--
-- * 'mlbmvVolumePosition'
myLibraryBookshelvesMoveVolume
    :: Text -- ^ 'mlbmvShelf'
    -> Text -- ^ 'mlbmvVolumeId'
    -> Int32 -- ^ 'mlbmvVolumePosition'
    -> MyLibraryBookshelvesMoveVolume
myLibraryBookshelvesMoveVolume pMlbmvShelf_ pMlbmvVolumeId_ pMlbmvVolumePosition_ =
    MyLibraryBookshelvesMoveVolume
    { _mlbmvShelf = pMlbmvShelf_
    , _mlbmvVolumeId = pMlbmvVolumeId_
    , _mlbmvSource = Nothing
    , _mlbmvVolumePosition = _Coerce # pMlbmvVolumePosition_
    }

-- | ID of bookshelf with the volume.
mlbmvShelf :: Lens' MyLibraryBookshelvesMoveVolume Text
mlbmvShelf
  = lens _mlbmvShelf (\ s a -> s{_mlbmvShelf = a})

-- | ID of volume to move.
mlbmvVolumeId :: Lens' MyLibraryBookshelvesMoveVolume Text
mlbmvVolumeId
  = lens _mlbmvVolumeId
      (\ s a -> s{_mlbmvVolumeId = a})

-- | String to identify the originator of this request.
mlbmvSource :: Lens' MyLibraryBookshelvesMoveVolume (Maybe Text)
mlbmvSource
  = lens _mlbmvSource (\ s a -> s{_mlbmvSource = a})

-- | Position on shelf to move the item (0 puts the item before the current
-- first item, 1 puts it between the first and the second and so on.)
mlbmvVolumePosition :: Lens' MyLibraryBookshelvesMoveVolume Int32
mlbmvVolumePosition
  = lens _mlbmvVolumePosition
      (\ s a -> s{_mlbmvVolumePosition = a})
      . _Coerce

instance GoogleRequest MyLibraryBookshelvesMoveVolume
         where
        type Rs MyLibraryBookshelvesMoveVolume = ()
        requestClient MyLibraryBookshelvesMoveVolume{..}
          = go _mlbmvShelf (Just _mlbmvVolumeId)
              (Just _mlbmvVolumePosition)
              _mlbmvSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesMoveVolumeResource)
                      mempty
