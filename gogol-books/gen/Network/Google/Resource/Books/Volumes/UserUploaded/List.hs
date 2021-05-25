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
-- Module      : Network.Google.Resource.Books.Volumes.UserUploaded.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of books uploaded by the current user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.useruploaded.list@.
module Network.Google.Resource.Books.Volumes.UserUploaded.List
    (
    -- * REST Resource
      VolumesUserUploadedListResource

    -- * Creating a Request
    , volumesUserUploadedList
    , VolumesUserUploadedList

    -- * Request Lenses
    , vuulProcessingState
    , vuulXgafv
    , vuulUploadProtocol
    , vuulLocale
    , vuulAccessToken
    , vuulUploadType
    , vuulVolumeId
    , vuulSource
    , vuulStartIndex
    , vuulMaxResults
    , vuulCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.useruploaded.list@ method which the
-- 'VolumesUserUploadedList' request conforms to.
type VolumesUserUploadedListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "useruploaded" :>
             QueryParams "processingState"
               VolumesUserUploadedListProcessingState
               :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "locale" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "volumeId" Text :>
                           QueryParam "source" Text :>
                             QueryParam "startIndex" (Textual Word32) :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Volumes

-- | Return a list of books uploaded by the current user.
--
-- /See:/ 'volumesUserUploadedList' smart constructor.
data VolumesUserUploadedList =
  VolumesUserUploadedList'
    { _vuulProcessingState :: !(Maybe [VolumesUserUploadedListProcessingState])
    , _vuulXgafv :: !(Maybe Xgafv)
    , _vuulUploadProtocol :: !(Maybe Text)
    , _vuulLocale :: !(Maybe Text)
    , _vuulAccessToken :: !(Maybe Text)
    , _vuulUploadType :: !(Maybe Text)
    , _vuulVolumeId :: !(Maybe [Text])
    , _vuulSource :: !(Maybe Text)
    , _vuulStartIndex :: !(Maybe (Textual Word32))
    , _vuulMaxResults :: !(Maybe (Textual Word32))
    , _vuulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesUserUploadedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuulProcessingState'
--
-- * 'vuulXgafv'
--
-- * 'vuulUploadProtocol'
--
-- * 'vuulLocale'
--
-- * 'vuulAccessToken'
--
-- * 'vuulUploadType'
--
-- * 'vuulVolumeId'
--
-- * 'vuulSource'
--
-- * 'vuulStartIndex'
--
-- * 'vuulMaxResults'
--
-- * 'vuulCallback'
volumesUserUploadedList
    :: VolumesUserUploadedList
volumesUserUploadedList =
  VolumesUserUploadedList'
    { _vuulProcessingState = Nothing
    , _vuulXgafv = Nothing
    , _vuulUploadProtocol = Nothing
    , _vuulLocale = Nothing
    , _vuulAccessToken = Nothing
    , _vuulUploadType = Nothing
    , _vuulVolumeId = Nothing
    , _vuulSource = Nothing
    , _vuulStartIndex = Nothing
    , _vuulMaxResults = Nothing
    , _vuulCallback = Nothing
    }


-- | The processing state of the user uploaded volumes to be returned.
vuulProcessingState :: Lens' VolumesUserUploadedList [VolumesUserUploadedListProcessingState]
vuulProcessingState
  = lens _vuulProcessingState
      (\ s a -> s{_vuulProcessingState = a})
      . _Default
      . _Coerce

-- | V1 error format.
vuulXgafv :: Lens' VolumesUserUploadedList (Maybe Xgafv)
vuulXgafv
  = lens _vuulXgafv (\ s a -> s{_vuulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vuulUploadProtocol :: Lens' VolumesUserUploadedList (Maybe Text)
vuulUploadProtocol
  = lens _vuulUploadProtocol
      (\ s a -> s{_vuulUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vuulLocale :: Lens' VolumesUserUploadedList (Maybe Text)
vuulLocale
  = lens _vuulLocale (\ s a -> s{_vuulLocale = a})

-- | OAuth access token.
vuulAccessToken :: Lens' VolumesUserUploadedList (Maybe Text)
vuulAccessToken
  = lens _vuulAccessToken
      (\ s a -> s{_vuulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vuulUploadType :: Lens' VolumesUserUploadedList (Maybe Text)
vuulUploadType
  = lens _vuulUploadType
      (\ s a -> s{_vuulUploadType = a})

-- | The ids of the volumes to be returned. If not specified all that match
-- the processingState are returned.
vuulVolumeId :: Lens' VolumesUserUploadedList [Text]
vuulVolumeId
  = lens _vuulVolumeId (\ s a -> s{_vuulVolumeId = a})
      . _Default
      . _Coerce

-- | String to identify the originator of this request.
vuulSource :: Lens' VolumesUserUploadedList (Maybe Text)
vuulSource
  = lens _vuulSource (\ s a -> s{_vuulSource = a})

-- | Index of the first result to return (starts at 0)
vuulStartIndex :: Lens' VolumesUserUploadedList (Maybe Word32)
vuulStartIndex
  = lens _vuulStartIndex
      (\ s a -> s{_vuulStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return.
vuulMaxResults :: Lens' VolumesUserUploadedList (Maybe Word32)
vuulMaxResults
  = lens _vuulMaxResults
      (\ s a -> s{_vuulMaxResults = a})
      . mapping _Coerce

-- | JSONP
vuulCallback :: Lens' VolumesUserUploadedList (Maybe Text)
vuulCallback
  = lens _vuulCallback (\ s a -> s{_vuulCallback = a})

instance GoogleRequest VolumesUserUploadedList where
        type Rs VolumesUserUploadedList = Volumes
        type Scopes VolumesUserUploadedList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesUserUploadedList'{..}
          = go (_vuulProcessingState ^. _Default) _vuulXgafv
              _vuulUploadProtocol
              _vuulLocale
              _vuulAccessToken
              _vuulUploadType
              (_vuulVolumeId ^. _Default)
              _vuulSource
              _vuulStartIndex
              _vuulMaxResults
              _vuulCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesUserUploadedListResource)
                      mempty
