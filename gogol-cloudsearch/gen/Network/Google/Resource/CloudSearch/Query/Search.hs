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
-- Module      : Network.Google.Resource.CloudSearch.Query.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cloud Search Query API provides the search method, which returns the
-- most relevant results from a user query. The results can come from
-- Google Workspace apps, such as Gmail or Google Drive, or they can come
-- from data that you have indexed from a third party. **Note:** This API
-- requires a standard end user account to execute. A service account
-- can\'t perform Query API requests directly; to use a service account to
-- perform queries, set up [Google Workspace domain-wide delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.search@.
module Network.Google.Resource.CloudSearch.Query.Search
    (
    -- * REST Resource
      QuerySearchResource

    -- * Creating a Request
    , querySearch
    , QuerySearch

    -- * Request Lenses
    , qXgafv
    , qUploadProtocol
    , qAccessToken
    , qUploadType
    , qPayload
    , qCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.query.search@ method which the
-- 'QuerySearch' request conforms to.
type QuerySearchResource =
     "v1" :>
       "query" :>
         "search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchRequest :>
                         Post '[JSON] SearchResponse

-- | The Cloud Search Query API provides the search method, which returns the
-- most relevant results from a user query. The results can come from
-- Google Workspace apps, such as Gmail or Google Drive, or they can come
-- from data that you have indexed from a third party. **Note:** This API
-- requires a standard end user account to execute. A service account
-- can\'t perform Query API requests directly; to use a service account to
-- perform queries, set up [Google Workspace domain-wide delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ 'querySearch' smart constructor.
data QuerySearch =
  QuerySearch'
    { _qXgafv :: !(Maybe Xgafv)
    , _qUploadProtocol :: !(Maybe Text)
    , _qAccessToken :: !(Maybe Text)
    , _qUploadType :: !(Maybe Text)
    , _qPayload :: !SearchRequest
    , _qCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qXgafv'
--
-- * 'qUploadProtocol'
--
-- * 'qAccessToken'
--
-- * 'qUploadType'
--
-- * 'qPayload'
--
-- * 'qCallback'
querySearch
    :: SearchRequest -- ^ 'qPayload'
    -> QuerySearch
querySearch pQPayload_ =
  QuerySearch'
    { _qXgafv = Nothing
    , _qUploadProtocol = Nothing
    , _qAccessToken = Nothing
    , _qUploadType = Nothing
    , _qPayload = pQPayload_
    , _qCallback = Nothing
    }


-- | V1 error format.
qXgafv :: Lens' QuerySearch (Maybe Xgafv)
qXgafv = lens _qXgafv (\ s a -> s{_qXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qUploadProtocol :: Lens' QuerySearch (Maybe Text)
qUploadProtocol
  = lens _qUploadProtocol
      (\ s a -> s{_qUploadProtocol = a})

-- | OAuth access token.
qAccessToken :: Lens' QuerySearch (Maybe Text)
qAccessToken
  = lens _qAccessToken (\ s a -> s{_qAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qUploadType :: Lens' QuerySearch (Maybe Text)
qUploadType
  = lens _qUploadType (\ s a -> s{_qUploadType = a})

-- | Multipart request metadata.
qPayload :: Lens' QuerySearch SearchRequest
qPayload = lens _qPayload (\ s a -> s{_qPayload = a})

-- | JSONP
qCallback :: Lens' QuerySearch (Maybe Text)
qCallback
  = lens _qCallback (\ s a -> s{_qCallback = a})

instance GoogleRequest QuerySearch where
        type Rs QuerySearch = SearchResponse
        type Scopes QuerySearch =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.query"]
        requestClient QuerySearch'{..}
          = go _qXgafv _qUploadProtocol _qAccessToken
              _qUploadType
              _qCallback
              (Just AltJSON)
              _qPayload
              cloudSearchService
          where go
                  = buildClient (Proxy :: Proxy QuerySearchResource)
                      mempty
