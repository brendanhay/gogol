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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves my reading position information for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.readingpositions.get@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
    (
    -- * REST Resource
      MyLibraryReadingPositionsGetResource

    -- * Creating a Request
    , myLibraryReadingPositionsGet
    , MyLibraryReadingPositionsGet

    -- * Request Lenses
    , mlrpgXgafv
    , mlrpgUploadProtocol
    , mlrpgAccessToken
    , mlrpgContentVersion
    , mlrpgUploadType
    , mlrpgVolumeId
    , mlrpgSource
    , mlrpgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.mylibrary.readingpositions.get@ method which the
-- 'MyLibraryReadingPositionsGet' request conforms to.
type MyLibraryReadingPositionsGetResource =
     "books" :>
       "v1" :>
         "mylibrary" :>
           "readingpositions" :>
             Capture "volumeId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "contentVersion" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ReadingPosition

-- | Retrieves my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsGet' smart constructor.
data MyLibraryReadingPositionsGet =
  MyLibraryReadingPositionsGet'
    { _mlrpgXgafv :: !(Maybe Xgafv)
    , _mlrpgUploadProtocol :: !(Maybe Text)
    , _mlrpgAccessToken :: !(Maybe Text)
    , _mlrpgContentVersion :: !(Maybe Text)
    , _mlrpgUploadType :: !(Maybe Text)
    , _mlrpgVolumeId :: !Text
    , _mlrpgSource :: !(Maybe Text)
    , _mlrpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyLibraryReadingPositionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpgXgafv'
--
-- * 'mlrpgUploadProtocol'
--
-- * 'mlrpgAccessToken'
--
-- * 'mlrpgContentVersion'
--
-- * 'mlrpgUploadType'
--
-- * 'mlrpgVolumeId'
--
-- * 'mlrpgSource'
--
-- * 'mlrpgCallback'
myLibraryReadingPositionsGet
    :: Text -- ^ 'mlrpgVolumeId'
    -> MyLibraryReadingPositionsGet
myLibraryReadingPositionsGet pMlrpgVolumeId_ =
  MyLibraryReadingPositionsGet'
    { _mlrpgXgafv = Nothing
    , _mlrpgUploadProtocol = Nothing
    , _mlrpgAccessToken = Nothing
    , _mlrpgContentVersion = Nothing
    , _mlrpgUploadType = Nothing
    , _mlrpgVolumeId = pMlrpgVolumeId_
    , _mlrpgSource = Nothing
    , _mlrpgCallback = Nothing
    }


-- | V1 error format.
mlrpgXgafv :: Lens' MyLibraryReadingPositionsGet (Maybe Xgafv)
mlrpgXgafv
  = lens _mlrpgXgafv (\ s a -> s{_mlrpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlrpgUploadProtocol :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgUploadProtocol
  = lens _mlrpgUploadProtocol
      (\ s a -> s{_mlrpgUploadProtocol = a})

-- | OAuth access token.
mlrpgAccessToken :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgAccessToken
  = lens _mlrpgAccessToken
      (\ s a -> s{_mlrpgAccessToken = a})

-- | Volume content version for which this reading position is requested.
mlrpgContentVersion :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgContentVersion
  = lens _mlrpgContentVersion
      (\ s a -> s{_mlrpgContentVersion = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlrpgUploadType :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgUploadType
  = lens _mlrpgUploadType
      (\ s a -> s{_mlrpgUploadType = a})

-- | ID of volume for which to retrieve a reading position.
mlrpgVolumeId :: Lens' MyLibraryReadingPositionsGet Text
mlrpgVolumeId
  = lens _mlrpgVolumeId
      (\ s a -> s{_mlrpgVolumeId = a})

-- | String to identify the originator of this request.
mlrpgSource :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgSource
  = lens _mlrpgSource (\ s a -> s{_mlrpgSource = a})

-- | JSONP
mlrpgCallback :: Lens' MyLibraryReadingPositionsGet (Maybe Text)
mlrpgCallback
  = lens _mlrpgCallback
      (\ s a -> s{_mlrpgCallback = a})

instance GoogleRequest MyLibraryReadingPositionsGet
         where
        type Rs MyLibraryReadingPositionsGet =
             ReadingPosition
        type Scopes MyLibraryReadingPositionsGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyLibraryReadingPositionsGet'{..}
          = go _mlrpgVolumeId _mlrpgXgafv _mlrpgUploadProtocol
              _mlrpgAccessToken
              _mlrpgContentVersion
              _mlrpgUploadType
              _mlrpgSource
              _mlrpgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyLibraryReadingPositionsGetResource)
                      mempty
