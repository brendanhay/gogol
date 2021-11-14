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
-- Module      : Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of offline dictionary metadata available
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.dictionary.listOfflineMetadata@.
module Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
    (
    -- * REST Resource
      DictionaryListOfflineMetadataResource

    -- * Creating a Request
    , dictionaryListOfflineMetadata
    , DictionaryListOfflineMetadata

    -- * Request Lenses
    , dlomXgafv
    , dlomCpksver
    , dlomUploadProtocol
    , dlomAccessToken
    , dlomUploadType
    , dlomCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.dictionary.listOfflineMetadata@ method which the
-- 'DictionaryListOfflineMetadata' request conforms to.
type DictionaryListOfflineMetadataResource =
     "books" :>
       "v1" :>
         "dictionary" :>
           "listOfflineMetadata" :>
             QueryParam "cpksver" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | Returns a list of offline dictionary metadata available
--
-- /See:/ 'dictionaryListOfflineMetadata' smart constructor.
data DictionaryListOfflineMetadata =
  DictionaryListOfflineMetadata'
    { _dlomXgafv :: !(Maybe Xgafv)
    , _dlomCpksver :: !Text
    , _dlomUploadProtocol :: !(Maybe Text)
    , _dlomAccessToken :: !(Maybe Text)
    , _dlomUploadType :: !(Maybe Text)
    , _dlomCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DictionaryListOfflineMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlomXgafv'
--
-- * 'dlomCpksver'
--
-- * 'dlomUploadProtocol'
--
-- * 'dlomAccessToken'
--
-- * 'dlomUploadType'
--
-- * 'dlomCallback'
dictionaryListOfflineMetadata
    :: Text -- ^ 'dlomCpksver'
    -> DictionaryListOfflineMetadata
dictionaryListOfflineMetadata pDlomCpksver_ =
  DictionaryListOfflineMetadata'
    { _dlomXgafv = Nothing
    , _dlomCpksver = pDlomCpksver_
    , _dlomUploadProtocol = Nothing
    , _dlomAccessToken = Nothing
    , _dlomUploadType = Nothing
    , _dlomCallback = Nothing
    }


-- | V1 error format.
dlomXgafv :: Lens' DictionaryListOfflineMetadata (Maybe Xgafv)
dlomXgafv
  = lens _dlomXgafv (\ s a -> s{_dlomXgafv = a})

-- | The device\/version ID from which to request the data.
dlomCpksver :: Lens' DictionaryListOfflineMetadata Text
dlomCpksver
  = lens _dlomCpksver (\ s a -> s{_dlomCpksver = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dlomUploadProtocol :: Lens' DictionaryListOfflineMetadata (Maybe Text)
dlomUploadProtocol
  = lens _dlomUploadProtocol
      (\ s a -> s{_dlomUploadProtocol = a})

-- | OAuth access token.
dlomAccessToken :: Lens' DictionaryListOfflineMetadata (Maybe Text)
dlomAccessToken
  = lens _dlomAccessToken
      (\ s a -> s{_dlomAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dlomUploadType :: Lens' DictionaryListOfflineMetadata (Maybe Text)
dlomUploadType
  = lens _dlomUploadType
      (\ s a -> s{_dlomUploadType = a})

-- | JSONP
dlomCallback :: Lens' DictionaryListOfflineMetadata (Maybe Text)
dlomCallback
  = lens _dlomCallback (\ s a -> s{_dlomCallback = a})

instance GoogleRequest DictionaryListOfflineMetadata
         where
        type Rs DictionaryListOfflineMetadata = Metadata
        type Scopes DictionaryListOfflineMetadata =
             '["https://www.googleapis.com/auth/books"]
        requestClient DictionaryListOfflineMetadata'{..}
          = go (Just _dlomCpksver) _dlomXgafv
              _dlomUploadProtocol
              _dlomAccessToken
              _dlomUploadType
              _dlomCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DictionaryListOfflineMetadataResource)
                      mempty
