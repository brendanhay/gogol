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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.DeleteSchema
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the schema of a data source.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.deleteSchema@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.DeleteSchema
    (
    -- * REST Resource
      IndexingDatasourcesDeleteSchemaResource

    -- * Creating a Request
    , indexingDatasourcesDeleteSchema
    , IndexingDatasourcesDeleteSchema

    -- * Request Lenses
    , iddsXgafv
    , iddsUploadProtocol
    , iddsAccessToken
    , iddsUploadType
    , iddsName
    , iddsDebugOptionsEnableDebugging
    , iddsCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.deleteSchema@ method which the
-- 'IndexingDatasourcesDeleteSchema' request conforms to.
type IndexingDatasourcesDeleteSchemaResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "schema" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "debugOptions.enableDebugging" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the schema of a data source.
--
-- /See:/ 'indexingDatasourcesDeleteSchema' smart constructor.
data IndexingDatasourcesDeleteSchema =
  IndexingDatasourcesDeleteSchema'
    { _iddsXgafv                       :: !(Maybe Xgafv)
    , _iddsUploadProtocol              :: !(Maybe Text)
    , _iddsAccessToken                 :: !(Maybe Text)
    , _iddsUploadType                  :: !(Maybe Text)
    , _iddsName                        :: !Text
    , _iddsDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _iddsCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesDeleteSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iddsXgafv'
--
-- * 'iddsUploadProtocol'
--
-- * 'iddsAccessToken'
--
-- * 'iddsUploadType'
--
-- * 'iddsName'
--
-- * 'iddsDebugOptionsEnableDebugging'
--
-- * 'iddsCallback'
indexingDatasourcesDeleteSchema
    :: Text -- ^ 'iddsName'
    -> IndexingDatasourcesDeleteSchema
indexingDatasourcesDeleteSchema pIddsName_ =
  IndexingDatasourcesDeleteSchema'
    { _iddsXgafv = Nothing
    , _iddsUploadProtocol = Nothing
    , _iddsAccessToken = Nothing
    , _iddsUploadType = Nothing
    , _iddsName = pIddsName_
    , _iddsDebugOptionsEnableDebugging = Nothing
    , _iddsCallback = Nothing
    }


-- | V1 error format.
iddsXgafv :: Lens' IndexingDatasourcesDeleteSchema (Maybe Xgafv)
iddsXgafv
  = lens _iddsXgafv (\ s a -> s{_iddsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iddsUploadProtocol :: Lens' IndexingDatasourcesDeleteSchema (Maybe Text)
iddsUploadProtocol
  = lens _iddsUploadProtocol
      (\ s a -> s{_iddsUploadProtocol = a})

-- | OAuth access token.
iddsAccessToken :: Lens' IndexingDatasourcesDeleteSchema (Maybe Text)
iddsAccessToken
  = lens _iddsAccessToken
      (\ s a -> s{_iddsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iddsUploadType :: Lens' IndexingDatasourcesDeleteSchema (Maybe Text)
iddsUploadType
  = lens _iddsUploadType
      (\ s a -> s{_iddsUploadType = a})

-- | Name of the data source to delete Schema. Format:
-- datasources\/{source_id}
iddsName :: Lens' IndexingDatasourcesDeleteSchema Text
iddsName = lens _iddsName (\ s a -> s{_iddsName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
iddsDebugOptionsEnableDebugging :: Lens' IndexingDatasourcesDeleteSchema (Maybe Bool)
iddsDebugOptionsEnableDebugging
  = lens _iddsDebugOptionsEnableDebugging
      (\ s a -> s{_iddsDebugOptionsEnableDebugging = a})

-- | JSONP
iddsCallback :: Lens' IndexingDatasourcesDeleteSchema (Maybe Text)
iddsCallback
  = lens _iddsCallback (\ s a -> s{_iddsCallback = a})

instance GoogleRequest
           IndexingDatasourcesDeleteSchema
         where
        type Rs IndexingDatasourcesDeleteSchema = Operation
        type Scopes IndexingDatasourcesDeleteSchema =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient IndexingDatasourcesDeleteSchema'{..}
          = go _iddsName _iddsXgafv _iddsUploadProtocol
              _iddsAccessToken
              _iddsUploadType
              _iddsDebugOptionsEnableDebugging
              _iddsCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesDeleteSchemaResource)
                      mempty
