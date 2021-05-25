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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets my reading position information for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.readingpositions.setPosition@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
    (
    -- * REST Resource
      MyLibraryReadingPositionsSetPositionResource

    -- * Creating a Request
    , myLibraryReadingPositionsSetPosition
    , MyLibraryReadingPositionsSetPosition

    -- * Request Lenses
    , mlrpspDeviceCookie
    , mlrpspXgafv
    , mlrpspUploadProtocol
    , mlrpspAccessToken
    , mlrpspContentVersion
    , mlrpspUploadType
    , mlrpspAction
    , mlrpspVolumeId
    , mlrpspSource
    , mlrpspTimestamp
    , mlrpspCallback
    , mlrpspPosition
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.readingpositions.setPosition@ method which the
-- 'MyLibraryReadingPositionsSetPosition' request conforms to.
type MyLibraryReadingPositionsSetPositionResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "readingpositions" :>
             Capture "volumeId" Text :>
               "setPosition" :>
                 QueryParam "position" Text :>
                   QueryParam "timestamp" Text :>
                     QueryParam "deviceCookie" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "contentVersion" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "action"
                                   MyLibraryReadingPositionsSetPositionAction
                                   :>
                                   QueryParam "source" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Post '[JSON] Empty

-- | Sets my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsSetPosition' smart constructor.
data MyLibraryReadingPositionsSetPosition =
  MyLibraryReadingPositionsSetPosition'
    { _mlrpspDeviceCookie :: !(Maybe Text)
    , _mlrpspXgafv :: !(Maybe Xgafv)
    , _mlrpspUploadProtocol :: !(Maybe Text)
    , _mlrpspAccessToken :: !(Maybe Text)
    , _mlrpspContentVersion :: !(Maybe Text)
    , _mlrpspUploadType :: !(Maybe Text)
    , _mlrpspAction :: !(Maybe MyLibraryReadingPositionsSetPositionAction)
    , _mlrpspVolumeId :: !Text
    , _mlrpspSource :: !(Maybe Text)
    , _mlrpspTimestamp :: !Text
    , _mlrpspCallback :: !(Maybe Text)
    , _mlrpspPosition :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryReadingPositionsSetPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpspDeviceCookie'
--
-- * 'mlrpspXgafv'
--
-- * 'mlrpspUploadProtocol'
--
-- * 'mlrpspAccessToken'
--
-- * 'mlrpspContentVersion'
--
-- * 'mlrpspUploadType'
--
-- * 'mlrpspAction'
--
-- * 'mlrpspVolumeId'
--
-- * 'mlrpspSource'
--
-- * 'mlrpspTimestamp'
--
-- * 'mlrpspCallback'
--
-- * 'mlrpspPosition'
myLibraryReadingPositionsSetPosition
    :: Text -- ^ 'mlrpspVolumeId'
    -> Text -- ^ 'mlrpspTimestamp'
    -> Text -- ^ 'mlrpspPosition'
    -> MyLibraryReadingPositionsSetPosition
myLibraryReadingPositionsSetPosition pMlrpspVolumeId_ pMlrpspTimestamp_ pMlrpspPosition_ =
  MyLibraryReadingPositionsSetPosition'
    { _mlrpspDeviceCookie = Nothing
    , _mlrpspXgafv = Nothing
    , _mlrpspUploadProtocol = Nothing
    , _mlrpspAccessToken = Nothing
    , _mlrpspContentVersion = Nothing
    , _mlrpspUploadType = Nothing
    , _mlrpspAction = Nothing
    , _mlrpspVolumeId = pMlrpspVolumeId_
    , _mlrpspSource = Nothing
    , _mlrpspTimestamp = pMlrpspTimestamp_
    , _mlrpspCallback = Nothing
    , _mlrpspPosition = pMlrpspPosition_
    }


-- | Random persistent device cookie optional on set position.
mlrpspDeviceCookie :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspDeviceCookie
  = lens _mlrpspDeviceCookie
      (\ s a -> s{_mlrpspDeviceCookie = a})

-- | V1 error format.
mlrpspXgafv :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Xgafv)
mlrpspXgafv
  = lens _mlrpspXgafv (\ s a -> s{_mlrpspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlrpspUploadProtocol :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspUploadProtocol
  = lens _mlrpspUploadProtocol
      (\ s a -> s{_mlrpspUploadProtocol = a})

-- | OAuth access token.
mlrpspAccessToken :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspAccessToken
  = lens _mlrpspAccessToken
      (\ s a -> s{_mlrpspAccessToken = a})

-- | Volume content version for which this reading position applies.
mlrpspContentVersion :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspContentVersion
  = lens _mlrpspContentVersion
      (\ s a -> s{_mlrpspContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlrpspUploadType :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspUploadType
  = lens _mlrpspUploadType
      (\ s a -> s{_mlrpspUploadType = a})

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

-- | JSONP
mlrpspCallback :: Lens' MyLibraryReadingPositionsSetPosition (Maybe Text)
mlrpspCallback
  = lens _mlrpspCallback
      (\ s a -> s{_mlrpspCallback = a})

-- | Position string for the new volume reading position.
mlrpspPosition :: Lens' MyLibraryReadingPositionsSetPosition Text
mlrpspPosition
  = lens _mlrpspPosition
      (\ s a -> s{_mlrpspPosition = a})

instance GoogleRequest
           MyLibraryReadingPositionsSetPosition
         where
        type Rs MyLibraryReadingPositionsSetPosition = Empty
        type Scopes MyLibraryReadingPositionsSetPosition =
             '["https://www.googleapis.com/auth/books"]
        requestClient
          MyLibraryReadingPositionsSetPosition'{..}
          = go _mlrpspVolumeId (Just _mlrpspPosition)
              (Just _mlrpspTimestamp)
              _mlrpspDeviceCookie
              _mlrpspXgafv
              _mlrpspUploadProtocol
              _mlrpspAccessToken
              _mlrpspContentVersion
              _mlrpspUploadType
              _mlrpspAction
              _mlrpspSource
              _mlrpspCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyLibraryReadingPositionsSetPositionResource)
                      mempty
