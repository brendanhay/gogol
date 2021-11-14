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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.UpdateSchema
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the schema of a data source. This method does not perform
-- incremental updates to the schema. Instead, this method updates the
-- schema by overwriting the entire schema. **Note:** This API requires an
-- admin or service account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.updateSchema@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.UpdateSchema
    (
    -- * REST Resource
      IndexingDatasourcesUpdateSchemaResource

    -- * Creating a Request
    , indexingDatasourcesUpdateSchema
    , IndexingDatasourcesUpdateSchema

    -- * Request Lenses
    , idusXgafv
    , idusUploadProtocol
    , idusAccessToken
    , idusUploadType
    , idusPayload
    , idusName
    , idusCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.updateSchema@ method which the
-- 'IndexingDatasourcesUpdateSchema' request conforms to.
type IndexingDatasourcesUpdateSchemaResource =
     "v1" :>
       "indexing" :>
         Capture "name" Text :>
           "schema" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UpdateSchemaRequest :>
                           Put '[JSON] Operation

-- | Updates the schema of a data source. This method does not perform
-- incremental updates to the schema. Instead, this method updates the
-- schema by overwriting the entire schema. **Note:** This API requires an
-- admin or service account to execute.
--
-- /See:/ 'indexingDatasourcesUpdateSchema' smart constructor.
data IndexingDatasourcesUpdateSchema =
  IndexingDatasourcesUpdateSchema'
    { _idusXgafv :: !(Maybe Xgafv)
    , _idusUploadProtocol :: !(Maybe Text)
    , _idusAccessToken :: !(Maybe Text)
    , _idusUploadType :: !(Maybe Text)
    , _idusPayload :: !UpdateSchemaRequest
    , _idusName :: !Text
    , _idusCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesUpdateSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idusXgafv'
--
-- * 'idusUploadProtocol'
--
-- * 'idusAccessToken'
--
-- * 'idusUploadType'
--
-- * 'idusPayload'
--
-- * 'idusName'
--
-- * 'idusCallback'
indexingDatasourcesUpdateSchema
    :: UpdateSchemaRequest -- ^ 'idusPayload'
    -> Text -- ^ 'idusName'
    -> IndexingDatasourcesUpdateSchema
indexingDatasourcesUpdateSchema pIdusPayload_ pIdusName_ =
  IndexingDatasourcesUpdateSchema'
    { _idusXgafv = Nothing
    , _idusUploadProtocol = Nothing
    , _idusAccessToken = Nothing
    , _idusUploadType = Nothing
    , _idusPayload = pIdusPayload_
    , _idusName = pIdusName_
    , _idusCallback = Nothing
    }


-- | V1 error format.
idusXgafv :: Lens' IndexingDatasourcesUpdateSchema (Maybe Xgafv)
idusXgafv
  = lens _idusXgafv (\ s a -> s{_idusXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idusUploadProtocol :: Lens' IndexingDatasourcesUpdateSchema (Maybe Text)
idusUploadProtocol
  = lens _idusUploadProtocol
      (\ s a -> s{_idusUploadProtocol = a})

-- | OAuth access token.
idusAccessToken :: Lens' IndexingDatasourcesUpdateSchema (Maybe Text)
idusAccessToken
  = lens _idusAccessToken
      (\ s a -> s{_idusAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idusUploadType :: Lens' IndexingDatasourcesUpdateSchema (Maybe Text)
idusUploadType
  = lens _idusUploadType
      (\ s a -> s{_idusUploadType = a})

-- | Multipart request metadata.
idusPayload :: Lens' IndexingDatasourcesUpdateSchema UpdateSchemaRequest
idusPayload
  = lens _idusPayload (\ s a -> s{_idusPayload = a})

-- | Name of the data source to update Schema. Format:
-- datasources\/{source_id}
idusName :: Lens' IndexingDatasourcesUpdateSchema Text
idusName = lens _idusName (\ s a -> s{_idusName = a})

-- | JSONP
idusCallback :: Lens' IndexingDatasourcesUpdateSchema (Maybe Text)
idusCallback
  = lens _idusCallback (\ s a -> s{_idusCallback = a})

instance GoogleRequest
           IndexingDatasourcesUpdateSchema
         where
        type Rs IndexingDatasourcesUpdateSchema = Operation
        type Scopes IndexingDatasourcesUpdateSchema =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient IndexingDatasourcesUpdateSchema'{..}
          = go _idusName _idusXgafv _idusUploadProtocol
              _idusAccessToken
              _idusUploadType
              _idusCallback
              (Just AltJSON)
              _idusPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy IndexingDatasourcesUpdateSchemaResource)
                      mempty
