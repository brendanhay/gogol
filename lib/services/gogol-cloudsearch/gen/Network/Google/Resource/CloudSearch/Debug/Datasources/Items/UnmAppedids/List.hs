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
-- Module      : Network.Google.Resource.CloudSearch.Debug.Datasources.Items.UnmAppedids.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all unmapped identities for a specific item. **Note:** This API
-- requires an admin account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.unmappedids.list@.
module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.UnmAppedids.List
    (
    -- * REST Resource
      DebugDatasourcesItemsUnmAppedidsListResource

    -- * Creating a Request
    , debugDatasourcesItemsUnmAppedidsList
    , DebugDatasourcesItemsUnmAppedidsList

    -- * Request Lenses
    , ddiualParent
    , ddiualXgafv
    , ddiualUploadProtocol
    , ddiualAccessToken
    , ddiualUploadType
    , ddiualDebugOptionsEnableDebugging
    , ddiualPageToken
    , ddiualPageSize
    , ddiualCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.debug.datasources.items.unmappedids.list@ method which the
-- 'DebugDatasourcesItemsUnmAppedidsList' request conforms to.
type DebugDatasourcesItemsUnmAppedidsListResource =
     "v1" :>
       "debug" :>
         Capture "parent" Text :>
           "unmappedids" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "debugOptions.enableDebugging" Bool :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListUnmAppedIdentitiesResponse

-- | List all unmapped identities for a specific item. **Note:** This API
-- requires an admin account to execute.
--
-- /See:/ 'debugDatasourcesItemsUnmAppedidsList' smart constructor.
data DebugDatasourcesItemsUnmAppedidsList =
  DebugDatasourcesItemsUnmAppedidsList'
    { _ddiualParent :: !Text
    , _ddiualXgafv :: !(Maybe Xgafv)
    , _ddiualUploadProtocol :: !(Maybe Text)
    , _ddiualAccessToken :: !(Maybe Text)
    , _ddiualUploadType :: !(Maybe Text)
    , _ddiualDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _ddiualPageToken :: !(Maybe Text)
    , _ddiualPageSize :: !(Maybe (Textual Int32))
    , _ddiualCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebugDatasourcesItemsUnmAppedidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddiualParent'
--
-- * 'ddiualXgafv'
--
-- * 'ddiualUploadProtocol'
--
-- * 'ddiualAccessToken'
--
-- * 'ddiualUploadType'
--
-- * 'ddiualDebugOptionsEnableDebugging'
--
-- * 'ddiualPageToken'
--
-- * 'ddiualPageSize'
--
-- * 'ddiualCallback'
debugDatasourcesItemsUnmAppedidsList
    :: Text -- ^ 'ddiualParent'
    -> DebugDatasourcesItemsUnmAppedidsList
debugDatasourcesItemsUnmAppedidsList pDdiualParent_ =
  DebugDatasourcesItemsUnmAppedidsList'
    { _ddiualParent = pDdiualParent_
    , _ddiualXgafv = Nothing
    , _ddiualUploadProtocol = Nothing
    , _ddiualAccessToken = Nothing
    , _ddiualUploadType = Nothing
    , _ddiualDebugOptionsEnableDebugging = Nothing
    , _ddiualPageToken = Nothing
    , _ddiualPageSize = Nothing
    , _ddiualCallback = Nothing
    }


-- | The name of the item, in the following format:
-- datasources\/{source_id}\/items\/{ID}
ddiualParent :: Lens' DebugDatasourcesItemsUnmAppedidsList Text
ddiualParent
  = lens _ddiualParent (\ s a -> s{_ddiualParent = a})

-- | V1 error format.
ddiualXgafv :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Xgafv)
ddiualXgafv
  = lens _ddiualXgafv (\ s a -> s{_ddiualXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddiualUploadProtocol :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Text)
ddiualUploadProtocol
  = lens _ddiualUploadProtocol
      (\ s a -> s{_ddiualUploadProtocol = a})

-- | OAuth access token.
ddiualAccessToken :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Text)
ddiualAccessToken
  = lens _ddiualAccessToken
      (\ s a -> s{_ddiualAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddiualUploadType :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Text)
ddiualUploadType
  = lens _ddiualUploadType
      (\ s a -> s{_ddiualUploadType = a})

-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
ddiualDebugOptionsEnableDebugging :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Bool)
ddiualDebugOptionsEnableDebugging
  = lens _ddiualDebugOptionsEnableDebugging
      (\ s a -> s{_ddiualDebugOptionsEnableDebugging = a})

-- | The next_page_token value returned from a previous List request, if any.
ddiualPageToken :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Text)
ddiualPageToken
  = lens _ddiualPageToken
      (\ s a -> s{_ddiualPageToken = a})

-- | Maximum number of items to fetch in a request. Defaults to 100.
ddiualPageSize :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Int32)
ddiualPageSize
  = lens _ddiualPageSize
      (\ s a -> s{_ddiualPageSize = a})
      . mapping _Coerce

-- | JSONP
ddiualCallback :: Lens' DebugDatasourcesItemsUnmAppedidsList (Maybe Text)
ddiualCallback
  = lens _ddiualCallback
      (\ s a -> s{_ddiualCallback = a})

instance GoogleRequest
           DebugDatasourcesItemsUnmAppedidsList
         where
        type Rs DebugDatasourcesItemsUnmAppedidsList =
             ListUnmAppedIdentitiesResponse
        type Scopes DebugDatasourcesItemsUnmAppedidsList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          DebugDatasourcesItemsUnmAppedidsList'{..}
          = go _ddiualParent _ddiualXgafv _ddiualUploadProtocol
              _ddiualAccessToken
              _ddiualUploadType
              _ddiualDebugOptionsEnableDebugging
              _ddiualPageToken
              _ddiualPageSize
              _ddiualCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebugDatasourcesItemsUnmAppedidsListResource)
                      mempty
