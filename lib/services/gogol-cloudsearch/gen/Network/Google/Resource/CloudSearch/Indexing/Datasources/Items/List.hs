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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all or a subset of Item resources. This API requires an admin or
-- service account to execute. The service account used is the one
-- whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.list@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.List
    (
    -- * REST Resource
      IndexingDatasourcesItemsListResource

    -- * Creating a Request
    , indexingDatasourcesItemsList
    , IndexingDatasourcesItemsList

    -- * Request Lenses
    , idilXgafv
    , idilUploadProtocol
    , idilAccessToken
    , idilUploadType
    , idilConnectorName
    , idilName
    , idilBrief
    , idilDebugOptionsEnableDebugging
    , idilPageToken
    , idilPageSize
    , idilCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.list@ method which the
-- 'IndexingDatasourcesItemsList' request conforms to.
type IndexingDatasourcesItemsListResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "items" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "connectorName" Text :>
                       QueryParam "brief" Bool :>
                         QueryParam "debugOptions.enableDebugging" Bool :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListItemsResponse

-- | Lists all or a subset of Item resources. This API requires an admin or
-- service account to execute. The service account used is the one
-- whitelisted in the corresponding data source.
--
-- /See:/ 'indexingDatasourcesItemsList' smart constructor.
data IndexingDatasourcesItemsList =
  IndexingDatasourcesItemsList'
    { _idilXgafv :: !(Maybe Xgafv)
    , _idilUploadProtocol :: !(Maybe Text)
    , _idilAccessToken :: !(Maybe Text)
    , _idilUploadType :: !(Maybe Text)
    , _idilConnectorName :: !(Maybe Text)
    , _idilName :: !Text
    , _idilBrief :: !(Maybe Bool)
    , _idilDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _idilPageToken :: !(Maybe Text)
    , _idilPageSize :: !(Maybe (Textual Int32))
    , _idilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idilXgafv'
--
-- * 'idilUploadProtocol'
--
-- * 'idilAccessToken'
--
-- * 'idilUploadType'
--
-- * 'idilConnectorName'
--
-- * 'idilName'
--
-- * 'idilBrief'
--
-- * 'idilDebugOptionsEnableDebugging'
--
-- * 'idilPageToken'
--
-- * 'idilPageSize'
--
-- * 'idilCallback'
indexingDatasourcesItemsList
    :: Text -- ^ 'idilName'
    -> IndexingDatasourcesItemsList
indexingDatasourcesItemsList pIdilName_ =
  IndexingDatasourcesItemsList'
    { _idilXgafv = Nothing
    , _idilUploadProtocol = Nothing
    , _idilAccessToken = Nothing
    , _idilUploadType = Nothing
    , _idilConnectorName = Nothing
    , _idilName = pIdilName_
    , _idilBrief = Nothing
    , _idilDebugOptionsEnableDebugging = Nothing
    , _idilPageToken = Nothing
    , _idilPageSize = Nothing
    , _idilCallback = Nothing
    }


-- | V1 error format.
idilXgafv :: Lens' IndexingDatasourcesItemsList (Maybe Xgafv)
idilXgafv
  = lens _idilXgafv (\ s a -> s{_idilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idilUploadProtocol :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilUploadProtocol
  = lens _idilUploadProtocol
      (\ s a -> s{_idilUploadProtocol = a})

-- | OAuth access token.
idilAccessToken :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilAccessToken
  = lens _idilAccessToken
      (\ s a -> s{_idilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idilUploadType :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilUploadType
  = lens _idilUploadType
      (\ s a -> s{_idilUploadType = a})

-- | Name of connector making this call. Format:
-- datasources\/{source_id}\/connectors\/{ID}
idilConnectorName :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilConnectorName
  = lens _idilConnectorName
      (\ s a -> s{_idilConnectorName = a})

-- | Name of the Data Source to list Items. Format: datasources\/{source_id}
idilName :: Lens' IndexingDatasourcesItemsList Text
idilName = lens _idilName (\ s a -> s{_idilName = a})

-- | When set to true, the indexing system only populates the following
-- fields: name, version, queue. metadata.hash, metadata.title,
-- metadata.sourceRepositoryURL, metadata.objectType, metadata.createTime,
-- metadata.updateTime, metadata.contentLanguage, metadata.mimeType,
-- structured_data.hash, content.hash, itemType, itemStatus.code,
-- itemStatus.processingError.code, itemStatus.repositoryError.type, If
-- this value is false, then all the fields are populated in Item.
idilBrief :: Lens' IndexingDatasourcesItemsList (Maybe Bool)
idilBrief
  = lens _idilBrief (\ s a -> s{_idilBrief = a})

-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
idilDebugOptionsEnableDebugging :: Lens' IndexingDatasourcesItemsList (Maybe Bool)
idilDebugOptionsEnableDebugging
  = lens _idilDebugOptionsEnableDebugging
      (\ s a -> s{_idilDebugOptionsEnableDebugging = a})

-- | The next_page_token value returned from a previous List request, if any.
idilPageToken :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilPageToken
  = lens _idilPageToken
      (\ s a -> s{_idilPageToken = a})

-- | Maximum number of items to fetch in a request. The max value is 1000
-- when brief is true. The max value is 10 if brief is false. The default
-- value is 10
idilPageSize :: Lens' IndexingDatasourcesItemsList (Maybe Int32)
idilPageSize
  = lens _idilPageSize (\ s a -> s{_idilPageSize = a})
      . mapping _Coerce

-- | JSONP
idilCallback :: Lens' IndexingDatasourcesItemsList (Maybe Text)
idilCallback
  = lens _idilCallback (\ s a -> s{_idilCallback = a})

instance GoogleRequest IndexingDatasourcesItemsList
         where
        type Rs IndexingDatasourcesItemsList =
             ListItemsResponse
        type Scopes IndexingDatasourcesItemsList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsList'{..}
          = go _idilName _idilXgafv _idilUploadProtocol
              _idilAccessToken
              _idilUploadType
              _idilConnectorName
              _idilBrief
              _idilDebugOptionsEnableDebugging
              _idilPageToken
              _idilPageSize
              _idilCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy IndexingDatasourcesItemsListResource)
                      mempty
