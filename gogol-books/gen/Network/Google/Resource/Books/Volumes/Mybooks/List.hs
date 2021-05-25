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
-- Module      : Network.Google.Resource.Books.Volumes.Mybooks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a list of books in My Library.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.mybooks.list@.
module Network.Google.Resource.Books.Volumes.Mybooks.List
    (
    -- * REST Resource
      VolumesMybooksListResource

    -- * Creating a Request
    , volumesMybooksList
    , VolumesMybooksList

    -- * Request Lenses
    , vmlProcessingState
    , vmlXgafv
    , vmlAcquireMethod
    , vmlUploadProtocol
    , vmlCountry
    , vmlLocale
    , vmlAccessToken
    , vmlUploadType
    , vmlSource
    , vmlStartIndex
    , vmlMaxResults
    , vmlCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.volumes.mybooks.list@ method which the
-- 'VolumesMybooksList' request conforms to.
type VolumesMybooksListResource =
     "books" :>
       "v1" :>
         "volumes" :>
           "mybooks" :>
             QueryParams "processingState"
               VolumesMybooksListProcessingState
               :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "acquireMethod"
                   VolumesMybooksListAcquireMethod
                   :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "country" Text :>
                       QueryParam "locale" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "source" Text :>
                               QueryParam "startIndex" (Textual Word32) :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Volumes

-- | Return a list of books in My Library.
--
-- /See:/ 'volumesMybooksList' smart constructor.
data VolumesMybooksList =
  VolumesMybooksList'
    { _vmlProcessingState :: !(Maybe [VolumesMybooksListProcessingState])
    , _vmlXgafv :: !(Maybe Xgafv)
    , _vmlAcquireMethod :: !(Maybe [VolumesMybooksListAcquireMethod])
    , _vmlUploadProtocol :: !(Maybe Text)
    , _vmlCountry :: !(Maybe Text)
    , _vmlLocale :: !(Maybe Text)
    , _vmlAccessToken :: !(Maybe Text)
    , _vmlUploadType :: !(Maybe Text)
    , _vmlSource :: !(Maybe Text)
    , _vmlStartIndex :: !(Maybe (Textual Word32))
    , _vmlMaxResults :: !(Maybe (Textual Word32))
    , _vmlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VolumesMybooksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmlProcessingState'
--
-- * 'vmlXgafv'
--
-- * 'vmlAcquireMethod'
--
-- * 'vmlUploadProtocol'
--
-- * 'vmlCountry'
--
-- * 'vmlLocale'
--
-- * 'vmlAccessToken'
--
-- * 'vmlUploadType'
--
-- * 'vmlSource'
--
-- * 'vmlStartIndex'
--
-- * 'vmlMaxResults'
--
-- * 'vmlCallback'
volumesMybooksList
    :: VolumesMybooksList
volumesMybooksList =
  VolumesMybooksList'
    { _vmlProcessingState = Nothing
    , _vmlXgafv = Nothing
    , _vmlAcquireMethod = Nothing
    , _vmlUploadProtocol = Nothing
    , _vmlCountry = Nothing
    , _vmlLocale = Nothing
    , _vmlAccessToken = Nothing
    , _vmlUploadType = Nothing
    , _vmlSource = Nothing
    , _vmlStartIndex = Nothing
    , _vmlMaxResults = Nothing
    , _vmlCallback = Nothing
    }


-- | The processing state of the user uploaded volumes to be returned.
-- Applicable only if the UPLOADED is specified in the acquireMethod.
vmlProcessingState :: Lens' VolumesMybooksList [VolumesMybooksListProcessingState]
vmlProcessingState
  = lens _vmlProcessingState
      (\ s a -> s{_vmlProcessingState = a})
      . _Default
      . _Coerce

-- | V1 error format.
vmlXgafv :: Lens' VolumesMybooksList (Maybe Xgafv)
vmlXgafv = lens _vmlXgafv (\ s a -> s{_vmlXgafv = a})

-- | How the book was acquired
vmlAcquireMethod :: Lens' VolumesMybooksList [VolumesMybooksListAcquireMethod]
vmlAcquireMethod
  = lens _vmlAcquireMethod
      (\ s a -> s{_vmlAcquireMethod = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vmlUploadProtocol :: Lens' VolumesMybooksList (Maybe Text)
vmlUploadProtocol
  = lens _vmlUploadProtocol
      (\ s a -> s{_vmlUploadProtocol = a})

-- | ISO-3166-1 code to override the IP-based location.
vmlCountry :: Lens' VolumesMybooksList (Maybe Text)
vmlCountry
  = lens _vmlCountry (\ s a -> s{_vmlCountry = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex:\'en_US\'. Used for
-- generating recommendations.
vmlLocale :: Lens' VolumesMybooksList (Maybe Text)
vmlLocale
  = lens _vmlLocale (\ s a -> s{_vmlLocale = a})

-- | OAuth access token.
vmlAccessToken :: Lens' VolumesMybooksList (Maybe Text)
vmlAccessToken
  = lens _vmlAccessToken
      (\ s a -> s{_vmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vmlUploadType :: Lens' VolumesMybooksList (Maybe Text)
vmlUploadType
  = lens _vmlUploadType
      (\ s a -> s{_vmlUploadType = a})

-- | String to identify the originator of this request.
vmlSource :: Lens' VolumesMybooksList (Maybe Text)
vmlSource
  = lens _vmlSource (\ s a -> s{_vmlSource = a})

-- | Index of the first result to return (starts at 0)
vmlStartIndex :: Lens' VolumesMybooksList (Maybe Word32)
vmlStartIndex
  = lens _vmlStartIndex
      (\ s a -> s{_vmlStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to return.
vmlMaxResults :: Lens' VolumesMybooksList (Maybe Word32)
vmlMaxResults
  = lens _vmlMaxResults
      (\ s a -> s{_vmlMaxResults = a})
      . mapping _Coerce

-- | JSONP
vmlCallback :: Lens' VolumesMybooksList (Maybe Text)
vmlCallback
  = lens _vmlCallback (\ s a -> s{_vmlCallback = a})

instance GoogleRequest VolumesMybooksList where
        type Rs VolumesMybooksList = Volumes
        type Scopes VolumesMybooksList =
             '["https://www.googleapis.com/auth/books"]
        requestClient VolumesMybooksList'{..}
          = go (_vmlProcessingState ^. _Default) _vmlXgafv
              (_vmlAcquireMethod ^. _Default)
              _vmlUploadProtocol
              _vmlCountry
              _vmlLocale
              _vmlAccessToken
              _vmlUploadType
              _vmlSource
              _vmlStartIndex
              _vmlMaxResults
              _vmlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy VolumesMybooksListResource)
                      mempty
