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
-- Module      : Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.readingpositions.setPosition@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
    (
    -- * REST Resource
      MyLibraryReadingPositionsSetPositionResource

    -- * Creating a Request
    , myLibraryReadingPositionsSetPosition
    , MyLibraryReadingPositionsSetPosition

    -- * Request Lenses
    , mlrpspDeviceCookie
    , mlrpspContentVersion
    , mlrpspAction
    , mlrpspVolumeId
    , mlrpspSource
    , mlrpspTimestamp
    , mlrpspPosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.mylibrary.readingpositions.setPosition@ method which the
-- 'MyLibraryReadingPositionsSetPosition' request conforms to.
type MyLibraryReadingPositionsSetPositionResource =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           "setPosition" :>
             QueryParam "timestamp" Text :>
               QueryParam "position" Text :>
                 QueryParam "deviceCookie" Text :>
                   QueryParam "contentVersion" Text :>
                     QueryParam "action"
                       MyLibraryReadingPositionsSetPositionAction
                       :>
                       QueryParam "source" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsSetPosition' smart constructor.
data MyLibraryReadingPositionsSetPosition = MyLibraryReadingPositionsSetPosition
    { _mlrpspDeviceCookie   :: !(Maybe Text)
    , _mlrpspContentVersion :: !(Maybe Text)
    , _mlrpspAction         :: !(Maybe MyLibraryReadingPositionsSetPositionAction)
    , _mlrpspVolumeId       :: !Text
    , _mlrpspSource         :: !(Maybe Text)
    , _mlrpspTimestamp      :: !Text
    , _mlrpspPosition       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryReadingPositionsSetPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpspDeviceCookie'
--
-- * 'mlrpspContentVersion'
--
-- * 'mlrpspAction'
--
-- * 'mlrpspVolumeId'
--
-- * 'mlrpspSource'
--
-- * 'mlrpspTimestamp'
--
-- * 'mlrpspPosition'
myLibraryReadingPositionsSetPosition
    :: Text -- ^ 'mlrpspVolumeId'
    -> Text -- ^ 'mlrpspTimestamp'
    -> Text -- ^ 'mlrpspPosition'
    -> MyLibraryReadingPositionsSetPosition
myLibraryReadingPositionsSetPosition pMlrpspVolumeId_ pMlrpspTimestamp_ pMlrpspPosition_ =
    MyLibraryReadingPositionsSetPosition
    { _mlrpspDeviceCookie = Nothing
    , _mlrpspContentVersion = Nothing
    , _mlrpspAction = Nothing
    , _mlrpspVolumeId = pMlrpspVolumeId_
    , _mlrpspSource = Nothing
    , _mlrpspTimestamp = pMlrpspTimestamp_
    , _mlrpspPosition = pMlrpspPosition_
    }

-- | Random persistent device cookie optional on set position.
mlrpspDeviceCookie :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspDeviceCookie
  = lens _mlrpspDeviceCookie
      (\ s a -> s{_mlrpspDeviceCookie = a})

-- | Volume content version for which this reading position applies.
mlrpspContentVersion :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspContentVersion
  = lens _mlrpspContentVersion
      (\ s a -> s{_mlrpspContentVersion = a})

-- | Action that caused this reading position to be set.
mlrpspAction :: Lens' MyLibraryReadingPositionsSetPosition (Maybe MyLibraryReadingPositionsSetPositionAction)
mlrpspAction
  = lens _mlrpspAction (\ s a -> s{_mlrpspAction = a})

-- | ID of volume for which to update the reading position.
mlrpspVolumeId :: Lens' MyLibraryReadingPositionsSetPosition Text
mlrpspVolumeId
  = lens _mlrpspVolumeId
      (\ s a -> s{_mlrpspVolumeId = a})

-- | String to identify the originator of this request.
mlrpspSource :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspSource
  = lens _mlrpspSource (\ s a -> s{_mlrpspSource = a})

-- | RFC 3339 UTC format timestamp associated with this reading position.
mlrpspTimestamp :: Lens' MyLibraryReadingPositionsSetPosition Text
mlrpspTimestamp
  = lens _mlrpspTimestamp
      (\ s a -> s{_mlrpspTimestamp = a})

-- | Position string for the new volume reading position.
mlrpspPosition :: Lens' MyLibraryReadingPositionsSetPosition Text
mlrpspPosition
  = lens _mlrpspPosition
      (\ s a -> s{_mlrpspPosition = a})

instance GoogleRequest
         MyLibraryReadingPositionsSetPosition where
        type Rs MyLibraryReadingPositionsSetPosition = ()
        requestClient
          MyLibraryReadingPositionsSetPosition{..}
          = go _mlrpspVolumeId (Just _mlrpspTimestamp)
              (Just _mlrpspPosition)
              _mlrpspDeviceCookie
              _mlrpspContentVersion
              _mlrpspAction
              _mlrpspSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryReadingPositionsSetPositionResource)
                      mempty
