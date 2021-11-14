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
-- Module      : Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Push
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pushes an item onto a queue for later polling and updating. This API
-- requires an admin or service account to execute. The service account
-- used is the one whitelisted in the corresponding data source.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.indexing.datasources.items.push@.
module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Push
    (
    -- * REST Resource
      IndexingDatasourcesItemsPushResource

    -- * Creating a Request
    , indexingDatasourcesItemsPush
    , IndexingDatasourcesItemsPush

    -- * Request Lenses
    , idipXgafv
    , idipUploadProtocol
    , idipAccessToken
    , idipUploadType
    , idipPayload
    , idipName
    , idipCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.indexing.datasources.items.push@ method which the
-- 'IndexingDatasourcesItemsPush' request conforms to.
type IndexingDatasourcesItemsPushResource =
     "v1" :>
       "indexing" :>
         CaptureMode "name" "push" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PushItemRequest :> Post '[JSON] Item

-- | Pushes an item onto a queue for later polling and updating. This API
-- requires an admin or service account to execute. The service account
-- used is the one whitelisted in the corresponding data source.
--
-- /See:/ 'indexingDatasourcesItemsPush' smart constructor.
data IndexingDatasourcesItemsPush =
  IndexingDatasourcesItemsPush'
    { _idipXgafv :: !(Maybe Xgafv)
    , _idipUploadProtocol :: !(Maybe Text)
    , _idipAccessToken :: !(Maybe Text)
    , _idipUploadType :: !(Maybe Text)
    , _idipPayload :: !PushItemRequest
    , _idipName :: !Text
    , _idipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexingDatasourcesItemsPush' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idipXgafv'
--
-- * 'idipUploadProtocol'
--
-- * 'idipAccessToken'
--
-- * 'idipUploadType'
--
-- * 'idipPayload'
--
-- * 'idipName'
--
-- * 'idipCallback'
indexingDatasourcesItemsPush
    :: PushItemRequest -- ^ 'idipPayload'
    -> Text -- ^ 'idipName'
    -> IndexingDatasourcesItemsPush
indexingDatasourcesItemsPush pIdipPayload_ pIdipName_ =
  IndexingDatasourcesItemsPush'
    { _idipXgafv = Nothing
    , _idipUploadProtocol = Nothing
    , _idipAccessToken = Nothing
    , _idipUploadType = Nothing
    , _idipPayload = pIdipPayload_
    , _idipName = pIdipName_
    , _idipCallback = Nothing
    }


-- | V1 error format.
idipXgafv :: Lens' IndexingDatasourcesItemsPush (Maybe Xgafv)
idipXgafv
  = lens _idipXgafv (\ s a -> s{_idipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idipUploadProtocol :: Lens' IndexingDatasourcesItemsPush (Maybe Text)
idipUploadProtocol
  = lens _idipUploadProtocol
      (\ s a -> s{_idipUploadProtocol = a})

-- | OAuth access token.
idipAccessToken :: Lens' IndexingDatasourcesItemsPush (Maybe Text)
idipAccessToken
  = lens _idipAccessToken
      (\ s a -> s{_idipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idipUploadType :: Lens' IndexingDatasourcesItemsPush (Maybe Text)
idipUploadType
  = lens _idipUploadType
      (\ s a -> s{_idipUploadType = a})

-- | Multipart request metadata.
idipPayload :: Lens' IndexingDatasourcesItemsPush PushItemRequest
idipPayload
  = lens _idipPayload (\ s a -> s{_idipPayload = a})

-- | Name of the item to push into the indexing queue. Format:
-- datasources\/{source_id}\/items\/{ID} This is a required field. The
-- maximum length is 1536 characters.
idipName :: Lens' IndexingDatasourcesItemsPush Text
idipName = lens _idipName (\ s a -> s{_idipName = a})

-- | JSONP
idipCallback :: Lens' IndexingDatasourcesItemsPush (Maybe Text)
idipCallback
  = lens _idipCallback (\ s a -> s{_idipCallback = a})

instance GoogleRequest IndexingDatasourcesItemsPush
         where
        type Rs IndexingDatasourcesItemsPush = Item
        type Scopes IndexingDatasourcesItemsPush =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.indexing"]
        requestClient IndexingDatasourcesItemsPush'{..}
          = go _idipName _idipXgafv _idipUploadProtocol
              _idipAccessToken
              _idipUploadType
              _idipCallback
              (Just AltJSON)
              _idipPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy IndexingDatasourcesItemsPushResource)
                      mempty
