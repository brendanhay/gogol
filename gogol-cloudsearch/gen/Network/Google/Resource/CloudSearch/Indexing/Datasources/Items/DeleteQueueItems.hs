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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all items in a queue. This method is useful for deleting stale
-- items. This API requires an admin or service account to execute. The
-- service account used is the one whitelisted in the corresponding data
-- source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.deleteQueueItems@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
    (
    -- * REST Resource
      IndexingDatasourcesItemsDeleteQueueItemsResource

    -- * Creating a Request
    , indexingDatasourcesItemsDeleteQueueItems
    , IndexingDatasourcesItemsDeleteQueueItems

    -- * Request Lenses
    , ididqiXgafv
    , ididqiUploadProtocol
    , ididqiAccessToken
    , ididqiUploadType
    , ididqiPayload
    , ididqiName
    , ididqiCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.deleteQueueItems@ method which the
-- 'IndexingDatasourcesItemsDeleteQueueItems' request conforms to.
type IndexingDatasourcesItemsDeleteQueueItemsResource
     =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "items:deleteQueueItems" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DeleteQueueItemsRequest :>
                           Post '[JSON] Operation

-- | Deletes all items in a queue. This method is useful for deleting stale
-- items. This API requires an admin or service account to execute. The
-- service account used is the one whitelisted in the corresponding data
-- source.
--
-- /See:/ 'indexingDatasourcesItemsDeleteQueueItems' smart constructor.
data IndexingDatasourcesItemsDeleteQueueItems =
  IndexingDatasourcesItemsDeleteQueueItems'
    { _ididqiXgafv :: !(Maybe Xgafv)
    , _ididqiUploadProtocol :: !(Maybe Text)
    , _ididqiAccessToken :: !(Maybe Text)
    , _ididqiUploadType :: !(Maybe Text)
    , _ididqiPayload :: !DeleteQueueItemsRequest
    , _ididqiName :: !Text
    , _ididqiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsDeleteQueueItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ididqiXgafv'
--
-- * 'ididqiUploadProtocol'
--
-- * 'ididqiAccessToken'
--
-- * 'ididqiUploadType'
--
-- * 'ididqiPayload'
--
-- * 'ididqiName'
--
-- * 'ididqiCallback'
indexingDatasourcesItemsDeleteQueueItems
    :: DeleteQueueItemsRequest -- ^ 'ididqiPayload'
    -> Text -- ^ 'ididqiName'
    -> IndexingDatasourcesItemsDeleteQueueItems
indexingDatasourcesItemsDeleteQueueItems pIdidqiPayload_ pIdidqiName_ =
  IndexingDatasourcesItemsDeleteQueueItems'
    { _ididqiXgafv = Nothing
    , _ididqiUploadProtocol = Nothing
    , _ididqiAccessToken = Nothing
    , _ididqiUploadType = Nothing
    , _ididqiPayload = pIdidqiPayload_
    , _ididqiName = pIdidqiName_
    , _ididqiCallback = Nothing
    }


-- | V1 error format.
ididqiXgafv :: Lens' IndexingDatasourcesItemsDeleteQueueItems (Maybe Xgafv)
ididqiXgafv
  = lens _ididqiXgafv (\ s a -> s{_ididqiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ididqiUploadProtocol :: Lens' IndexingDatasourcesItemsDeleteQueueItems (Maybe Text)
ididqiUploadProtocol
  = lens _ididqiUploadProtocol
      (\ s a -> s{_ididqiUploadProtocol = a})

-- | OAuth access token.
ididqiAccessToken :: Lens' IndexingDatasourcesItemsDeleteQueueItems (Maybe Text)
ididqiAccessToken
  = lens _ididqiAccessToken
      (\ s a -> s{_ididqiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ididqiUploadType :: Lens' IndexingDatasourcesItemsDeleteQueueItems (Maybe Text)
ididqiUploadType
  = lens _ididqiUploadType
      (\ s a -> s{_ididqiUploadType = a})

-- | Multipart request metadata.
ididqiPayload :: Lens' IndexingDatasourcesItemsDeleteQueueItems DeleteQueueItemsRequest
ididqiPayload
  = lens _ididqiPayload
      (\ s a -> s{_ididqiPayload = a})

-- | Name of the Data Source to delete items in a queue. Format:
-- datasources\/{source_id}
ididqiName :: Lens' IndexingDatasourcesItemsDeleteQueueItems Text
ididqiName
  = lens _ididqiName (\ s a -> s{_ididqiName = a})

-- | JSONP
ididqiCallback :: Lens' IndexingDatasourcesItemsDeleteQueueItems (Maybe Text)
ididqiCallback
  = lens _ididqiCallback
      (\ s a -> s{_ididqiCallback = a})

instance GoogleRequest
           IndexingDatasourcesItemsDeleteQueueItems
         where
        type Rs IndexingDatasourcesItemsDeleteQueueItems =
             Operation
        type Scopes IndexingDatasourcesItemsDeleteQueueItems
             =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient
          IndexingDatasourcesItemsDeleteQueueItems'{..}
          = go _ididqiName _ididqiXgafv _ididqiUploadProtocol
              _ididqiAccessToken
              _ididqiUploadType
              _ididqiCallback
              (Just AltJSON)
              _ididqiPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           IndexingDatasourcesItemsDeleteQueueItemsResource)
                      mempty
