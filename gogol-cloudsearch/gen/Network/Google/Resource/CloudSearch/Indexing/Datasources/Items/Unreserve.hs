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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Unreserve
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unreserves all items from a queue, making them all eligible to be
-- polled. This method is useful for resetting the indexing queue after a
-- connector has been restarted.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.unreserve@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Unreserve
    (
    -- * REST Resource
      IndexingDatasourcesItemsUnreserveResource

    -- * Creating a Request
    , indexingDatasourcesItemsUnreserve
    , IndexingDatasourcesItemsUnreserve

    -- * Request Lenses
    , idiuXgafv
    , idiuUploadProtocol
    , idiuAccessToken
    , idiuUploadType
    , idiuPayload
    , idiuName
    , idiuCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.unreserve@ method which the
-- 'IndexingDatasourcesItemsUnreserve' request conforms to.
type IndexingDatasourcesItemsUnreserveResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "items:unreserve" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UnreserveItemsRequest :>
                           Post '[JSON] Operation

-- | Unreserves all items from a queue, making them all eligible to be
-- polled. This method is useful for resetting the indexing queue after a
-- connector has been restarted.
--
-- /See:/ 'indexingDatasourcesItemsUnreserve' smart constructor.
data IndexingDatasourcesItemsUnreserve =
  IndexingDatasourcesItemsUnreserve'
    { _idiuXgafv          :: !(Maybe Xgafv)
    , _idiuUploadProtocol :: !(Maybe Text)
    , _idiuAccessToken    :: !(Maybe Text)
    , _idiuUploadType     :: !(Maybe Text)
    , _idiuPayload        :: !UnreserveItemsRequest
    , _idiuName           :: !Text
    , _idiuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IndexingDatasourcesItemsUnreserve' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idiuXgafv'
--
-- * 'idiuUploadProtocol'
--
-- * 'idiuAccessToken'
--
-- * 'idiuUploadType'
--
-- * 'idiuPayload'
--
-- * 'idiuName'
--
-- * 'idiuCallback'
indexingDatasourcesItemsUnreserve
    :: UnreserveItemsRequest -- ^ 'idiuPayload'
    -> Text -- ^ 'idiuName'
    -> IndexingDatasourcesItemsUnreserve
indexingDatasourcesItemsUnreserve pIdiuPayload_ pIdiuName_ =
  IndexingDatasourcesItemsUnreserve'
    { _idiuXgafv = Nothing
    , _idiuUploadProtocol = Nothing
    , _idiuAccessToken = Nothing
    , _idiuUploadType = Nothing
    , _idiuPayload = pIdiuPayload_
    , _idiuName = pIdiuName_
    , _idiuCallback = Nothing
    }

-- | V1 error format.
idiuXgafv :: Lens' IndexingDatasourcesItemsUnreserve (Maybe Xgafv)
idiuXgafv
  = lens _idiuXgafv (\ s a -> s{_idiuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idiuUploadProtocol :: Lens' IndexingDatasourcesItemsUnreserve (Maybe Text)
idiuUploadProtocol
  = lens _idiuUploadProtocol
      (\ s a -> s{_idiuUploadProtocol = a})

-- | OAuth access token.
idiuAccessToken :: Lens' IndexingDatasourcesItemsUnreserve (Maybe Text)
idiuAccessToken
  = lens _idiuAccessToken
      (\ s a -> s{_idiuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idiuUploadType :: Lens' IndexingDatasourcesItemsUnreserve (Maybe Text)
idiuUploadType
  = lens _idiuUploadType
      (\ s a -> s{_idiuUploadType = a})

-- | Multipart request metadata.
idiuPayload :: Lens' IndexingDatasourcesItemsUnreserve UnreserveItemsRequest
idiuPayload
  = lens _idiuPayload (\ s a -> s{_idiuPayload = a})

-- | Name of the Data Source to unreserve all items. Format:
-- datasources\/{source_id}
idiuName :: Lens' IndexingDatasourcesItemsUnreserve Text
idiuName = lens _idiuName (\ s a -> s{_idiuName = a})

-- | JSONP
idiuCallback :: Lens' IndexingDatasourcesItemsUnreserve (Maybe Text)
idiuCallback
  = lens _idiuCallback (\ s a -> s{_idiuCallback = a})

instance GoogleRequest
           IndexingDatasourcesItemsUnreserve
         where
        type Rs IndexingDatasourcesItemsUnreserve = Operation
        type Scopes IndexingDatasourcesItemsUnreserve =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsUnreserve'{..}
          = go _idiuName _idiuXgafv _idiuUploadProtocol
              _idiuAccessToken
              _idiuUploadType
              _idiuCallback
              (Just AltJSON)
              _idiuPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesItemsUnreserveResource)
                      mempty
