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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an upload session for uploading item content. For items smaller
-- than 100 KiB, it\'s easier to embed the content inline within update.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.upload@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Upload
    (
    -- * REST Resource
      IndexingDatasourcesItemsUploadResource

    -- * Creating a Request
    , indexingDatasourcesItemsUpload
    , IndexingDatasourcesItemsUpload

    -- * Request Lenses
    , indXgafv
    , indUploadProtocol
    , indAccessToken
    , indUploadType
    , indPayload
    , indName
    , indCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.upload@ method which the
-- 'IndexingDatasourcesItemsUpload' request conforms to.
type IndexingDatasourcesItemsUploadResource =
     "v1" :>
       "indexing" :>
         CaptureMode "name" "upload" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] StartUploadItemRequest :>
                         Post '[JSON] UploadItemRef

-- | Creates an upload session for uploading item content. For items smaller
-- than 100 KiB, it\'s easier to embed the content inline within update.
--
-- /See:/ 'indexingDatasourcesItemsUpload' smart constructor.
data IndexingDatasourcesItemsUpload = IndexingDatasourcesItemsUpload'
    { _indXgafv          :: !(Maybe Xgafv)
    , _indUploadProtocol :: !(Maybe Text)
    , _indAccessToken    :: !(Maybe Text)
    , _indUploadType     :: !(Maybe Text)
    , _indPayload        :: !StartUploadItemRequest
    , _indName           :: !Text
    , _indCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndexingDatasourcesItemsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'indXgafv'
--
-- * 'indUploadProtocol'
--
-- * 'indAccessToken'
--
-- * 'indUploadType'
--
-- * 'indPayload'
--
-- * 'indName'
--
-- * 'indCallback'
indexingDatasourcesItemsUpload
    :: StartUploadItemRequest -- ^ 'indPayload'
    -> Text -- ^ 'indName'
    -> IndexingDatasourcesItemsUpload
indexingDatasourcesItemsUpload pIndPayload_ pIndName_ =
    IndexingDatasourcesItemsUpload'
    { _indXgafv = Nothing
    , _indUploadProtocol = Nothing
    , _indAccessToken = Nothing
    , _indUploadType = Nothing
    , _indPayload = pIndPayload_
    , _indName = pIndName_
    , _indCallback = Nothing
    }

-- | V1 error format.
indXgafv :: Lens' IndexingDatasourcesItemsUpload (Maybe Xgafv)
indXgafv = lens _indXgafv (\ s a -> s{_indXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
indUploadProtocol :: Lens' IndexingDatasourcesItemsUpload (Maybe Text)
indUploadProtocol
  = lens _indUploadProtocol
      (\ s a -> s{_indUploadProtocol = a})

-- | OAuth access token.
indAccessToken :: Lens' IndexingDatasourcesItemsUpload (Maybe Text)
indAccessToken
  = lens _indAccessToken
      (\ s a -> s{_indAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
indUploadType :: Lens' IndexingDatasourcesItemsUpload (Maybe Text)
indUploadType
  = lens _indUploadType
      (\ s a -> s{_indUploadType = a})

-- | Multipart request metadata.
indPayload :: Lens' IndexingDatasourcesItemsUpload StartUploadItemRequest
indPayload
  = lens _indPayload (\ s a -> s{_indPayload = a})

-- | Name of the Data Source to start a resumable upload. Format:
-- datasources\/{source_id}
indName :: Lens' IndexingDatasourcesItemsUpload Text
indName = lens _indName (\ s a -> s{_indName = a})

-- | JSONP
indCallback :: Lens' IndexingDatasourcesItemsUpload (Maybe Text)
indCallback
  = lens _indCallback (\ s a -> s{_indCallback = a})

instance GoogleRequest IndexingDatasourcesItemsUpload
         where
        type Rs IndexingDatasourcesItemsUpload =
             UploadItemRef
        type Scopes IndexingDatasourcesItemsUpload =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsUpload'{..}
          = go _indName _indXgafv _indUploadProtocol
              _indAccessToken
              _indUploadType
              _indCallback
              (Just AltJSON)
              _indPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesItemsUploadResource)
                      mempty
