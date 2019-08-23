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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets Item resource by item name.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.get@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Get
    (
    -- * REST Resource
      IndexingDatasourcesItemsGetResource

    -- * Creating a Request
    , indexingDatasourcesItemsGet
    , IndexingDatasourcesItemsGet

    -- * Request Lenses
    , idigXgafv
    , idigUploadProtocol
    , idigAccessToken
    , idigUploadType
    , idigConnectorName
    , idigName
    , idigDebugOptionsEnableDebugging
    , idigCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.get@ method which the
-- 'IndexingDatasourcesItemsGet' request conforms to.
type IndexingDatasourcesItemsGetResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "connectorName" Text :>
                     QueryParam "debugOptions.enableDebugging" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Item

-- | Gets Item resource by item name.
--
-- /See:/ 'indexingDatasourcesItemsGet' smart constructor.
data IndexingDatasourcesItemsGet =
  IndexingDatasourcesItemsGet'
    { _idigXgafv                       :: !(Maybe Xgafv)
    , _idigUploadProtocol              :: !(Maybe Text)
    , _idigAccessToken                 :: !(Maybe Text)
    , _idigUploadType                  :: !(Maybe Text)
    , _idigConnectorName               :: !(Maybe Text)
    , _idigName                        :: !Text
    , _idigDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _idigCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idigXgafv'
--
-- * 'idigUploadProtocol'
--
-- * 'idigAccessToken'
--
-- * 'idigUploadType'
--
-- * 'idigConnectorName'
--
-- * 'idigName'
--
-- * 'idigDebugOptionsEnableDebugging'
--
-- * 'idigCallback'
indexingDatasourcesItemsGet
    :: Text -- ^ 'idigName'
    -> IndexingDatasourcesItemsGet
indexingDatasourcesItemsGet pIdigName_ =
  IndexingDatasourcesItemsGet'
    { _idigXgafv = Nothing
    , _idigUploadProtocol = Nothing
    , _idigAccessToken = Nothing
    , _idigUploadType = Nothing
    , _idigConnectorName = Nothing
    , _idigName = pIdigName_
    , _idigDebugOptionsEnableDebugging = Nothing
    , _idigCallback = Nothing
    }


-- | V1 error format.
idigXgafv :: Lens' IndexingDatasourcesItemsGet (Maybe Xgafv)
idigXgafv
  = lens _idigXgafv (\ s a -> s{_idigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idigUploadProtocol :: Lens' IndexingDatasourcesItemsGet (Maybe Text)
idigUploadProtocol
  = lens _idigUploadProtocol
      (\ s a -> s{_idigUploadProtocol = a})

-- | OAuth access token.
idigAccessToken :: Lens' IndexingDatasourcesItemsGet (Maybe Text)
idigAccessToken
  = lens _idigAccessToken
      (\ s a -> s{_idigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idigUploadType :: Lens' IndexingDatasourcesItemsGet (Maybe Text)
idigUploadType
  = lens _idigUploadType
      (\ s a -> s{_idigUploadType = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
idigConnectorName :: Lens' IndexingDatasourcesItemsGet (Maybe Text)
idigConnectorName
  = lens _idigConnectorName
      (\ s a -> s{_idigConnectorName = a})

-- | Name of the item to get info. Format:
-- datasources\/{source_id}\/items\/{item_id}
idigName :: Lens' IndexingDatasourcesItemsGet Text
idigName = lens _idigName (\ s a -> s{_idigName = a})

-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
idigDebugOptionsEnableDebugging :: Lens' IndexingDatasourcesItemsGet (Maybe Bool)
idigDebugOptionsEnableDebugging
  = lens _idigDebugOptionsEnableDebugging
      (\ s a -> s{_idigDebugOptionsEnableDebugging = a})

-- | JSONP
idigCallback :: Lens' IndexingDatasourcesItemsGet (Maybe Text)
idigCallback
  = lens _idigCallback (\ s a -> s{_idigCallback = a})

instance GoogleRequest IndexingDatasourcesItemsGet
         where
        type Rs IndexingDatasourcesItemsGet = Item
        type Scopes IndexingDatasourcesItemsGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsGet'{..}
          = go _idigName _idigXgafv _idigUploadProtocol
              _idigAccessToken
              _idigUploadType
              _idigConnectorName
              _idigDebugOptionsEnableDebugging
              _idigCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy IndexingDatasourcesItemsGetResource)
                      mempty
