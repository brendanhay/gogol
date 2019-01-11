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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.GetSchema
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the schema of a data source.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.getSchema@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.GetSchema
    (
    -- * REST Resource
      IndexingDatasourcesGetSchemaResource

    -- * Creating a Request
    , indexingDatasourcesGetSchema
    , IndexingDatasourcesGetSchema

    -- * Request Lenses
    , idgsXgafv
    , idgsUploadProtocol
    , idgsAccessToken
    , idgsUploadType
    , idgsName
    , idgsDebugOptionsEnableDebugging
    , idgsCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.getSchema@ method which the
-- 'IndexingDatasourcesGetSchema' request conforms to.
type IndexingDatasourcesGetSchemaResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Schema

-- | Gets the schema of a data source.
--
-- /See:/ 'indexingDatasourcesGetSchema' smart constructor.
data IndexingDatasourcesGetSchema = IndexingDatasourcesGetSchema'
    { _idgsXgafv                       :: !(Maybe Xgafv)
    , _idgsUploadProtocol              :: !(Maybe Text)
    , _idgsAccessToken                 :: !(Maybe Text)
    , _idgsUploadType                  :: !(Maybe Text)
    , _idgsName                        :: !Text
    , _idgsDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _idgsCallback                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IndexingDatasourcesGetSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idgsXgafv'
--
-- * 'idgsUploadProtocol'
--
-- * 'idgsAccessToken'
--
-- * 'idgsUploadType'
--
-- * 'idgsName'
--
-- * 'idgsDebugOptionsEnableDebugging'
--
-- * 'idgsCallback'
indexingDatasourcesGetSchema
    :: Text -- ^ 'idgsName'
    -> IndexingDatasourcesGetSchema
indexingDatasourcesGetSchema pIdgsName_ =
    IndexingDatasourcesGetSchema'
    { _idgsXgafv = Nothing
    , _idgsUploadProtocol = Nothing
    , _idgsAccessToken = Nothing
    , _idgsUploadType = Nothing
    , _idgsName = pIdgsName_
    , _idgsDebugOptionsEnableDebugging = Nothing
    , _idgsCallback = Nothing
    }

-- | V1 error format.
idgsXgafv :: Lens' IndexingDatasourcesGetSchema (Maybe Xgafv)
idgsXgafv
  = lens _idgsXgafv (\ s a -> s{_idgsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idgsUploadProtocol :: Lens' IndexingDatasourcesGetSchema (Maybe Text)
idgsUploadProtocol
  = lens _idgsUploadProtocol
      (\ s a -> s{_idgsUploadProtocol = a})

-- | OAuth access token.
idgsAccessToken :: Lens' IndexingDatasourcesGetSchema (Maybe Text)
idgsAccessToken
  = lens _idgsAccessToken
      (\ s a -> s{_idgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idgsUploadType :: Lens' IndexingDatasourcesGetSchema (Maybe Text)
idgsUploadType
  = lens _idgsUploadType
      (\ s a -> s{_idgsUploadType = a})

-- | Name of the data source to get Schema. Format: datasources\/{source_id}
idgsName :: Lens' IndexingDatasourcesGetSchema Text
idgsName = lens _idgsName (\ s a -> s{_idgsName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
idgsDebugOptionsEnableDebugging :: Lens' IndexingDatasourcesGetSchema (Maybe Bool)
idgsDebugOptionsEnableDebugging
  = lens _idgsDebugOptionsEnableDebugging
      (\ s a -> s{_idgsDebugOptionsEnableDebugging = a})

-- | JSONP
idgsCallback :: Lens' IndexingDatasourcesGetSchema (Maybe Text)
idgsCallback
  = lens _idgsCallback (\ s a -> s{_idgsCallback = a})

instance GoogleRequest IndexingDatasourcesGetSchema
         where
        type Rs IndexingDatasourcesGetSchema = Schema
        type Scopes IndexingDatasourcesGetSchema =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient IndexingDatasourcesGetSchema'{..}
          = go _idgsName _idgsXgafv _idgsUploadProtocol
              _idgsAccessToken
              _idgsUploadType
              _idgsDebugOptionsEnableDebugging
              _idgsCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy IndexingDatasourcesGetSchemaResource)
                      mempty
