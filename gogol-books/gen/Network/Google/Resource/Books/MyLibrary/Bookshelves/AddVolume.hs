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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a volume to a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.bookshelves.addVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesAddVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesAddVolume'
    , MyLibraryBookshelvesAddVolume'

    -- * Request Lenses
    , mlbavReason
    , mlbavShelf
    , mlbavVolumeId
    , mlbavSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.bookshelves.addVolume@ method which the
-- 'MyLibraryBookshelvesAddVolume'' request conforms to.
type MyLibraryBookshelvesAddVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "addVolume" :>
             QueryParam "volumeId" Text :>
               QueryParam "reason"
                 MyLibraryBookshelvesAddVolumeReason
                 :>
                 QueryParam "source" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Adds a volume to a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesAddVolume'' smart constructor.
data MyLibraryBookshelvesAddVolume' = MyLibraryBookshelvesAddVolume'
    { _mlbavReason   :: !(Maybe MyLibraryBookshelvesAddVolumeReason)
    , _mlbavShelf    :: !Text
    , _mlbavVolumeId :: !Text
    , _mlbavSource   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesAddVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbavReason'
--
-- * 'mlbavShelf'
--
-- * 'mlbavVolumeId'
--
-- * 'mlbavSource'
myLibraryBookshelvesAddVolume'
    :: Text -- ^ 'mlbavShelf'
    -> Text -- ^ 'mlbavVolumeId'
    -> MyLibraryBookshelvesAddVolume'
myLibraryBookshelvesAddVolume' pMlbavShelf_ pMlbavVolumeId_ =
    MyLibraryBookshelvesAddVolume'
    { _mlbavReason = Nothing
    , _mlbavShelf = pMlbavShelf_
    , _mlbavVolumeId = pMlbavVolumeId_
    , _mlbavSource = Nothing
    }

-- | The reason for which the book is added to the library.
mlbavReason :: Lens' MyLibraryBookshelvesAddVolume' (Maybe MyLibraryBookshelvesAddVolumeReason)
mlbavReason
  = lens _mlbavReason (\ s a -> s{_mlbavReason = a})

-- | ID of bookshelf to which to add a volume.
mlbavShelf :: Lens' MyLibraryBookshelvesAddVolume' Text
mlbavShelf
  = lens _mlbavShelf (\ s a -> s{_mlbavShelf = a})

-- | ID of volume to add.
mlbavVolumeId :: Lens' MyLibraryBookshelvesAddVolume' Text
mlbavVolumeId
  = lens _mlbavVolumeId
      (\ s a -> s{_mlbavVolumeId = a})

-- | String to identify the originator of this request.
mlbavSource :: Lens' MyLibraryBookshelvesAddVolume' (Maybe Text)
mlbavSource
  = lens _mlbavSource (\ s a -> s{_mlbavSource = a})

instance GoogleRequest MyLibraryBookshelvesAddVolume'
         where
        type Rs MyLibraryBookshelvesAddVolume' = ()
        requestClient MyLibraryBookshelvesAddVolume'{..}
          = go _mlbavShelf (Just _mlbavVolumeId) _mlbavReason
              _mlbavSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryBookshelvesAddVolumeResource)
                      mempty
