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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Poll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Polls for unreserved items from the indexing queue and marks a set as
-- reserved, starting with items that have the oldest timestamp from the
-- highest priority ItemStatus. The priority order is as follows: ERROR
-- MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from
-- other threads cannot create overlapping sets. After handling the
-- reserved items, the client should put items back into the unreserved
-- state, either by calling index, or by calling push with the type
-- REQUEUE. Items automatically become available (unreserved) after 4 hours
-- even if no update or push method is called. This API requires an admin
-- or service account to execute. The service account used is the one
-- whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.poll@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Poll
    (
    -- * REST Resource
      IndexingDatasourcesItemsPollResource

    -- * Creating a Request
    , indexingDatasourcesItemsPoll
    , IndexingDatasourcesItemsPoll

    -- * Request Lenses
    , idipdXgafv
    , idipdUploadProtocol
    , idipdAccessToken
    , idipdUploadType
    , idipdPayload
    , idipdName
    , idipdCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.poll@ method which the
-- 'IndexingDatasourcesItemsPoll' request conforms to.
type IndexingDatasourcesItemsPollResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "items:poll" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PollItemsRequest :>
                           Post '[JSON] PollItemsResponse

-- | Polls for unreserved items from the indexing queue and marks a set as
-- reserved, starting with items that have the oldest timestamp from the
-- highest priority ItemStatus. The priority order is as follows: ERROR
-- MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from
-- other threads cannot create overlapping sets. After handling the
-- reserved items, the client should put items back into the unreserved
-- state, either by calling index, or by calling push with the type
-- REQUEUE. Items automatically become available (unreserved) after 4 hours
-- even if no update or push method is called. This API requires an admin
-- or service account to execute. The service account used is the one
-- whitelisted in the corresponding data source.
--
-- /See:/ 'indexingDatasourcesItemsPoll' smart constructor.
data IndexingDatasourcesItemsPoll =
  IndexingDatasourcesItemsPoll'
    { _idipdXgafv :: !(Maybe Xgafv)
    , _idipdUploadProtocol :: !(Maybe Text)
    , _idipdAccessToken :: !(Maybe Text)
    , _idipdUploadType :: !(Maybe Text)
    , _idipdPayload :: !PollItemsRequest
    , _idipdName :: !Text
    , _idipdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsPoll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idipdXgafv'
--
-- * 'idipdUploadProtocol'
--
-- * 'idipdAccessToken'
--
-- * 'idipdUploadType'
--
-- * 'idipdPayload'
--
-- * 'idipdName'
--
-- * 'idipdCallback'
indexingDatasourcesItemsPoll
    :: PollItemsRequest -- ^ 'idipdPayload'
    -> Text -- ^ 'idipdName'
    -> IndexingDatasourcesItemsPoll
indexingDatasourcesItemsPoll pIdipdPayload_ pIdipdName_ =
  IndexingDatasourcesItemsPoll'
    { _idipdXgafv = Nothing
    , _idipdUploadProtocol = Nothing
    , _idipdAccessToken = Nothing
    , _idipdUploadType = Nothing
    , _idipdPayload = pIdipdPayload_
    , _idipdName = pIdipdName_
    , _idipdCallback = Nothing
    }


-- | V1 error format.
idipdXgafv :: Lens' IndexingDatasourcesItemsPoll (Maybe Xgafv)
idipdXgafv
  = lens _idipdXgafv (\ s a -> s{_idipdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idipdUploadProtocol :: Lens' IndexingDatasourcesItemsPoll (Maybe Text)
idipdUploadProtocol
  = lens _idipdUploadProtocol
      (\ s a -> s{_idipdUploadProtocol = a})

-- | OAuth access token.
idipdAccessToken :: Lens' IndexingDatasourcesItemsPoll (Maybe Text)
idipdAccessToken
  = lens _idipdAccessToken
      (\ s a -> s{_idipdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idipdUploadType :: Lens' IndexingDatasourcesItemsPoll (Maybe Text)
idipdUploadType
  = lens _idipdUploadType
      (\ s a -> s{_idipdUploadType = a})

-- | Multipart request metadata.
idipdPayload :: Lens' IndexingDatasourcesItemsPoll PollItemsRequest
idipdPayload
  = lens _idipdPayload (\ s a -> s{_idipdPayload = a})

-- | Name of the Data Source to poll items. Format: datasources\/{source_id}
idipdName :: Lens' IndexingDatasourcesItemsPoll Text
idipdName
  = lens _idipdName (\ s a -> s{_idipdName = a})

-- | JSONP
idipdCallback :: Lens' IndexingDatasourcesItemsPoll (Maybe Text)
idipdCallback
  = lens _idipdCallback
      (\ s a -> s{_idipdCallback = a})

instance GoogleRequest IndexingDatasourcesItemsPoll
         where
        type Rs IndexingDatasourcesItemsPoll =
             PollItemsResponse
        type Scopes IndexingDatasourcesItemsPoll =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsPoll'{..}
          = go _idipdName _idipdXgafv _idipdUploadProtocol
              _idipdAccessToken
              _idipdUploadType
              _idipdCallback
              (Just AltJSON)
              _idipdPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy IndexingDatasourcesItemsPollResource)
                      mempty
