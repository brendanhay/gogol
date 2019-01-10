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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Index
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates Item ACL, metadata, and content. It will insert the Item if it
-- does not exist. This method does not support partial updates. Fields
-- with no provided values are cleared out in the Cloud Search index.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.index@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Index
    (
    -- * REST Resource
      IndexingDatasourcesItemsIndexResource

    -- * Creating a Request
    , indexingDatasourcesItemsIndex
    , IndexingDatasourcesItemsIndex

    -- * Request Lenses
    , idiiXgafv
    , idiiUploadProtocol
    , idiiAccessToken
    , idiiUploadType
    , idiiPayload
    , idiiName
    , idiiCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.index@ method which the
-- 'IndexingDatasourcesItemsIndex' request conforms to.
type IndexingDatasourcesItemsIndexResource =
     "v1" :>
       "indexing" :>
         CaptureMode "name" "index" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] IndexItemRequest :>
                         Post '[JSON] Operation

-- | Updates Item ACL, metadata, and content. It will insert the Item if it
-- does not exist. This method does not support partial updates. Fields
-- with no provided values are cleared out in the Cloud Search index.
--
-- /See:/ 'indexingDatasourcesItemsIndex' smart constructor.
data IndexingDatasourcesItemsIndex = IndexingDatasourcesItemsIndex'
    { _idiiXgafv          :: !(Maybe Xgafv)
    , _idiiUploadProtocol :: !(Maybe Text)
    , _idiiAccessToken    :: !(Maybe Text)
    , _idiiUploadType     :: !(Maybe Text)
    , _idiiPayload        :: !IndexItemRequest
    , _idiiName           :: !Text
    , _idiiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndexingDatasourcesItemsIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idiiXgafv'
--
-- * 'idiiUploadProtocol'
--
-- * 'idiiAccessToken'
--
-- * 'idiiUploadType'
--
-- * 'idiiPayload'
--
-- * 'idiiName'
--
-- * 'idiiCallback'
indexingDatasourcesItemsIndex
    :: IndexItemRequest -- ^ 'idiiPayload'
    -> Text -- ^ 'idiiName'
    -> IndexingDatasourcesItemsIndex
indexingDatasourcesItemsIndex pIdiiPayload_ pIdiiName_ =
    IndexingDatasourcesItemsIndex'
    { _idiiXgafv = Nothing
    , _idiiUploadProtocol = Nothing
    , _idiiAccessToken = Nothing
    , _idiiUploadType = Nothing
    , _idiiPayload = pIdiiPayload_
    , _idiiName = pIdiiName_
    , _idiiCallback = Nothing
    }

-- | V1 error format.
idiiXgafv :: Lens' IndexingDatasourcesItemsIndex (Maybe Xgafv)
idiiXgafv
  = lens _idiiXgafv (\ s a -> s{_idiiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idiiUploadProtocol :: Lens' IndexingDatasourcesItemsIndex (Maybe Text)
idiiUploadProtocol
  = lens _idiiUploadProtocol
      (\ s a -> s{_idiiUploadProtocol = a})

-- | OAuth access token.
idiiAccessToken :: Lens' IndexingDatasourcesItemsIndex (Maybe Text)
idiiAccessToken
  = lens _idiiAccessToken
      (\ s a -> s{_idiiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idiiUploadType :: Lens' IndexingDatasourcesItemsIndex (Maybe Text)
idiiUploadType
  = lens _idiiUploadType
      (\ s a -> s{_idiiUploadType = a})

-- | Multipart request metadata.
idiiPayload :: Lens' IndexingDatasourcesItemsIndex IndexItemRequest
idiiPayload
  = lens _idiiPayload (\ s a -> s{_idiiPayload = a})

-- | Name of the Item. Format: datasources\/{source_id}\/items\/{item_id}
-- This is a required field. The maximum length is 1536 characters.
idiiName :: Lens' IndexingDatasourcesItemsIndex Text
idiiName = lens _idiiName (\ s a -> s{_idiiName = a})

-- | JSONP
idiiCallback :: Lens' IndexingDatasourcesItemsIndex (Maybe Text)
idiiCallback
  = lens _idiiCallback (\ s a -> s{_idiiCallback = a})

instance GoogleRequest IndexingDatasourcesItemsIndex
         where
        type Rs IndexingDatasourcesItemsIndex = Operation
        type Scopes IndexingDatasourcesItemsIndex =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsIndex'{..}
          = go _idiiName _idiiXgafv _idiiUploadProtocol
              _idiiAccessToken
              _idiiUploadType
              _idiiCallback
              (Just AltJSON)
              _idiiPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesItemsIndexResource)
                      mempty
