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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes Item resource for the specified resource name. This API requires
-- an admin or service account to execute. The service account used is the
-- one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.delete@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Delete
    (
    -- * REST Resource
      IndexingDatasourcesItemsDeleteResource

    -- * Creating a Request
    , indexingDatasourcesItemsDelete
    , IndexingDatasourcesItemsDelete

    -- * Request Lenses
    , ididXgafv
    , ididUploadProtocol
    , ididAccessToken
    , ididMode
    , ididUploadType
    , ididConnectorName
    , ididName
    , ididVersion
    , ididDebugOptionsEnableDebugging
    , ididCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.delete@ method which the
-- 'IndexingDatasourcesItemsDelete' request conforms to.
type IndexingDatasourcesItemsDeleteResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "mode" IndexingDatasourcesItemsDeleteMode
                   :>
                   QueryParam "uploadType" Text :>
                     QueryParam "connectorName" Text :>
                       QueryParam "version" Bytes :>
                         QueryParam "debugOptions.enableDebugging" Bool :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes Item resource for the specified resource name. This API requires
-- an admin or service account to execute. The service account used is the
-- one whitelisted in the corresponding data source.
--
-- /See:/ 'indexingDatasourcesItemsDelete' smart constructor.
data IndexingDatasourcesItemsDelete =
  IndexingDatasourcesItemsDelete'
    { _ididXgafv :: !(Maybe Xgafv)
    , _ididUploadProtocol :: !(Maybe Text)
    , _ididAccessToken :: !(Maybe Text)
    , _ididMode :: !(Maybe IndexingDatasourcesItemsDeleteMode)
    , _ididUploadType :: !(Maybe Text)
    , _ididConnectorName :: !(Maybe Text)
    , _ididName :: !Text
    , _ididVersion :: !(Maybe Bytes)
    , _ididDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ididCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ididXgafv'
--
-- * 'ididUploadProtocol'
--
-- * 'ididAccessToken'
--
-- * 'ididMode'
--
-- * 'ididUploadType'
--
-- * 'ididConnectorName'
--
-- * 'ididName'
--
-- * 'ididVersion'
--
-- * 'ididDebugOptionsEnableDebugging'
--
-- * 'ididCallback'
indexingDatasourcesItemsDelete
    :: Text -- ^ 'ididName'
    -> IndexingDatasourcesItemsDelete
indexingDatasourcesItemsDelete pIdidName_ =
  IndexingDatasourcesItemsDelete'
    { _ididXgafv = Nothing
    , _ididUploadProtocol = Nothing
    , _ididAccessToken = Nothing
    , _ididMode = Nothing
    , _ididUploadType = Nothing
    , _ididConnectorName = Nothing
    , _ididName = pIdidName_
    , _ididVersion = Nothing
    , _ididDebugOptionsEnableDebugging = Nothing
    , _ididCallback = Nothing
    }


-- | V1 error format.
ididXgafv :: Lens' IndexingDatasourcesItemsDelete (Maybe Xgafv)
ididXgafv
  = lens _ididXgafv (\ s a -> s{_ididXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ididUploadProtocol :: Lens' IndexingDatasourcesItemsDelete (Maybe Text)
ididUploadProtocol
  = lens _ididUploadProtocol
      (\ s a -> s{_ididUploadProtocol = a})

-- | OAuth access token.
ididAccessToken :: Lens' IndexingDatasourcesItemsDelete (Maybe Text)
ididAccessToken
  = lens _ididAccessToken
      (\ s a -> s{_ididAccessToken = a})

-- | Required. The RequestMode for this request.
ididMode :: Lens' IndexingDatasourcesItemsDelete (Maybe IndexingDatasourcesItemsDeleteMode)
ididMode = lens _ididMode (\ s a -> s{_ididMode = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ididUploadType :: Lens' IndexingDatasourcesItemsDelete (Maybe Text)
ididUploadType
  = lens _ididUploadType
      (\ s a -> s{_ididUploadType = a})

-- | Name of connector making this call. Format:
-- datasources\/{source_id}\/connectors\/{ID}
ididConnectorName :: Lens' IndexingDatasourcesItemsDelete (Maybe Text)
ididConnectorName
  = lens _ididConnectorName
      (\ s a -> s{_ididConnectorName = a})

-- | Required. Name of the item to delete. Format:
-- datasources\/{source_id}\/items\/{item_id}
ididName :: Lens' IndexingDatasourcesItemsDelete Text
ididName = lens _ididName (\ s a -> s{_ididName = a})

-- | Required. The incremented version of the item to delete from the index.
-- The indexing system stores the version from the datasource as a byte
-- string and compares the Item version in the index to the version of the
-- queued Item using lexical ordering. Cloud Search Indexing won\'t delete
-- any queued item with a version value that is less than or equal to the
-- version of the currently indexed item. The maximum length for this field
-- is 1024 bytes.
ididVersion :: Lens' IndexingDatasourcesItemsDelete (Maybe ByteString)
ididVersion
  = lens _ididVersion (\ s a -> s{_ididVersion = a}) .
      mapping _Bytes

-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
ididDebugOptionsEnableDebugging :: Lens' IndexingDatasourcesItemsDelete (Maybe Bool)
ididDebugOptionsEnableDebugging
  = lens _ididDebugOptionsEnableDebugging
      (\ s a -> s{_ididDebugOptionsEnableDebugging = a})

-- | JSONP
ididCallback :: Lens' IndexingDatasourcesItemsDelete (Maybe Text)
ididCallback
  = lens _ididCallback (\ s a -> s{_ididCallback = a})

instance GoogleRequest IndexingDatasourcesItemsDelete
         where
        type Rs IndexingDatasourcesItemsDelete = Operation
        type Scopes IndexingDatasourcesItemsDelete =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsDelete'{..}
          = go _ididName _ididXgafv _ididUploadProtocol
              _ididAccessToken
              _ididMode
              _ididUploadType
              _ididConnectorName
              _ididVersion
              _ididDebugOptionsEnableDebugging
              _ididCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesItemsDeleteResource)
                      mempty
