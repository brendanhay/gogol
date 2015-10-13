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
-- Module      : Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryReadingPositionsGet@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
    (
    -- * REST Resource
      MyLibraryReadingPositionsGetResource

    -- * Creating a Request
    , myLibraryReadingPositionsGet'
    , MyLibraryReadingPositionsGet'

    -- * Request Lenses
    , mlrpgContentVersion
    , mlrpgVolumeId
    , mlrpgSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryReadingPositionsGet@ method which the
-- 'MyLibraryReadingPositionsGet'' request conforms to.
type MyLibraryReadingPositionsGetResource =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           QueryParam "contentVersion" Text :>
             QueryParam "source" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ReadingPosition

-- | Retrieves my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsGet'' smart constructor.
data MyLibraryReadingPositionsGet' = MyLibraryReadingPositionsGet'
    { _mlrpgContentVersion :: !(Maybe Text)
    , _mlrpgVolumeId       :: !Text
    , _mlrpgSource         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryReadingPositionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpgContentVersion'
--
-- * 'mlrpgVolumeId'
--
-- * 'mlrpgSource'
myLibraryReadingPositionsGet'
    :: Text -- ^ 'volumeId'
    -> MyLibraryReadingPositionsGet'
myLibraryReadingPositionsGet' pMlrpgVolumeId_ =
    MyLibraryReadingPositionsGet'
    { _mlrpgContentVersion = Nothing
    , _mlrpgVolumeId = pMlrpgVolumeId_
    , _mlrpgSource = Nothing
    }

-- | Volume content version for which this reading position is requested.
mlrpgContentVersion :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgContentVersion
  = lens _mlrpgContentVersion
      (\ s a -> s{_mlrpgContentVersion = a})

-- | ID of volume for which to retrieve a reading position.
mlrpgVolumeId :: Lens' MyLibraryReadingPositionsGet' Text
mlrpgVolumeId
  = lens _mlrpgVolumeId
      (\ s a -> s{_mlrpgVolumeId = a})

-- | String to identify the originator of this request.
mlrpgSource :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgSource
  = lens _mlrpgSource (\ s a -> s{_mlrpgSource = a})

instance GoogleRequest MyLibraryReadingPositionsGet'
         where
        type Rs MyLibraryReadingPositionsGet' =
             ReadingPosition
        requestClient MyLibraryReadingPositionsGet'{..}
          = go _mlrpgVolumeId _mlrpgContentVersion _mlrpgSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryReadingPositionsGetResource)
                      mempty
