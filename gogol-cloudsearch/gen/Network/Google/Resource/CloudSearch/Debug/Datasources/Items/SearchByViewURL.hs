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
-- Module      : Network.Google.Resource.CloudSearch.Debug.Datasources.Items.SearchByViewURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the item whose viewUrl exactly matches that of the URL provided
-- in the request.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.debug.datasources.items.searchByViewUrl@.
module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.SearchByViewURL
    (
    -- * REST Resource
      DebugDatasourcesItemsSearchByViewURLResource

    -- * Creating a Request
    , debugDatasourcesItemsSearchByViewURL
    , DebugDatasourcesItemsSearchByViewURL

    -- * Request Lenses
    , ddisbvuXgafv
    , ddisbvuUploadProtocol
    , ddisbvuAccessToken
    , ddisbvuUploadType
    , ddisbvuPayload
    , ddisbvuName
    , ddisbvuCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.debug.datasources.items.searchByViewUrl@ method which the
-- 'DebugDatasourcesItemsSearchByViewURL' request conforms to.
type DebugDatasourcesItemsSearchByViewURLResource =
     "v1" :>
       "debug" :>
         Capture "name" Text :>
           "items:searchByViewUrl" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SearchItemsByViewURLRequest :>
                           Post '[JSON] SearchItemsByViewURLResponse

-- | Fetches the item whose viewUrl exactly matches that of the URL provided
-- in the request.
--
-- /See:/ 'debugDatasourcesItemsSearchByViewURL' smart constructor.
data DebugDatasourcesItemsSearchByViewURL = DebugDatasourcesItemsSearchByViewURL'
    { _ddisbvuXgafv          :: !(Maybe Xgafv)
    , _ddisbvuUploadProtocol :: !(Maybe Text)
    , _ddisbvuAccessToken    :: !(Maybe Text)
    , _ddisbvuUploadType     :: !(Maybe Text)
    , _ddisbvuPayload        :: !SearchItemsByViewURLRequest
    , _ddisbvuName           :: !Text
    , _ddisbvuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugDatasourcesItemsSearchByViewURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddisbvuXgafv'
--
-- * 'ddisbvuUploadProtocol'
--
-- * 'ddisbvuAccessToken'
--
-- * 'ddisbvuUploadType'
--
-- * 'ddisbvuPayload'
--
-- * 'ddisbvuName'
--
-- * 'ddisbvuCallback'
debugDatasourcesItemsSearchByViewURL
    :: SearchItemsByViewURLRequest -- ^ 'ddisbvuPayload'
    -> Text -- ^ 'ddisbvuName'
    -> DebugDatasourcesItemsSearchByViewURL
debugDatasourcesItemsSearchByViewURL pDdisbvuPayload_ pDdisbvuName_ =
    DebugDatasourcesItemsSearchByViewURL'
    { _ddisbvuXgafv = Nothing
    , _ddisbvuUploadProtocol = Nothing
    , _ddisbvuAccessToken = Nothing
    , _ddisbvuUploadType = Nothing
    , _ddisbvuPayload = pDdisbvuPayload_
    , _ddisbvuName = pDdisbvuName_
    , _ddisbvuCallback = Nothing
    }

-- | V1 error format.
ddisbvuXgafv :: Lens' DebugDatasourcesItemsSearchByViewURL (Maybe Xgafv)
ddisbvuXgafv
  = lens _ddisbvuXgafv (\ s a -> s{_ddisbvuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddisbvuUploadProtocol :: Lens' DebugDatasourcesItemsSearchByViewURL (Maybe Text)
ddisbvuUploadProtocol
  = lens _ddisbvuUploadProtocol
      (\ s a -> s{_ddisbvuUploadProtocol = a})

-- | OAuth access token.
ddisbvuAccessToken :: Lens' DebugDatasourcesItemsSearchByViewURL (Maybe Text)
ddisbvuAccessToken
  = lens _ddisbvuAccessToken
      (\ s a -> s{_ddisbvuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddisbvuUploadType :: Lens' DebugDatasourcesItemsSearchByViewURL (Maybe Text)
ddisbvuUploadType
  = lens _ddisbvuUploadType
      (\ s a -> s{_ddisbvuUploadType = a})

-- | Multipart request metadata.
ddisbvuPayload :: Lens' DebugDatasourcesItemsSearchByViewURL SearchItemsByViewURLRequest
ddisbvuPayload
  = lens _ddisbvuPayload
      (\ s a -> s{_ddisbvuPayload = a})

-- | Source name, format: datasources\/{source_id}
ddisbvuName :: Lens' DebugDatasourcesItemsSearchByViewURL Text
ddisbvuName
  = lens _ddisbvuName (\ s a -> s{_ddisbvuName = a})

-- | JSONP
ddisbvuCallback :: Lens' DebugDatasourcesItemsSearchByViewURL (Maybe Text)
ddisbvuCallback
  = lens _ddisbvuCallback
      (\ s a -> s{_ddisbvuCallback = a})

instance GoogleRequest
         DebugDatasourcesItemsSearchByViewURL where
        type Rs DebugDatasourcesItemsSearchByViewURL =
             SearchItemsByViewURLResponse
        type Scopes DebugDatasourcesItemsSearchByViewURL =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.debug"]
        requestClient
          DebugDatasourcesItemsSearchByViewURL'{..}
          = go _ddisbvuName _ddisbvuXgafv
              _ddisbvuUploadProtocol
              _ddisbvuAccessToken
              _ddisbvuUploadType
              _ddisbvuCallback
              (Just AltJSON)
              _ddisbvuPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebugDatasourcesItemsSearchByViewURLResource)
                      mempty
