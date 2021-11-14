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
-- Module      : Network.Google.Resource.CloudSearch.Query.Suggest
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides suggestions for autocompleting the query. **Note:** This API
-- requires a standard end user account to execute. A service account
-- can\'t perform Query API requests directly; to use a service account to
-- perform queries, set up [Google Workspace domain-wide delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.suggest@.
module Network.Google.Resource.CloudSearch.Query.Suggest
    (
    -- * REST Resource
      QuerySuggestResource

    -- * Creating a Request
    , querySuggest
    , QuerySuggest

    -- * Request Lenses
    , qsXgafv
    , qsUploadProtocol
    , qsAccessToken
    , qsUploadType
    , qsPayload
    , qsCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.query.suggest@ method which the
-- 'QuerySuggest' request conforms to.
type QuerySuggestResource =
     "v1" :>
       "query" :>
         "suggest" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SuggestRequest :>
                         Post '[JSON] SuggestResponse

-- | Provides suggestions for autocompleting the query. **Note:** This API
-- requires a standard end user account to execute. A service account
-- can\'t perform Query API requests directly; to use a service account to
-- perform queries, set up [Google Workspace domain-wide delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ 'querySuggest' smart constructor.
data QuerySuggest =
  QuerySuggest'
    { _qsXgafv :: !(Maybe Xgafv)
    , _qsUploadProtocol :: !(Maybe Text)
    , _qsAccessToken :: !(Maybe Text)
    , _qsUploadType :: !(Maybe Text)
    , _qsPayload :: !SuggestRequest
    , _qsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySuggest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsXgafv'
--
-- * 'qsUploadProtocol'
--
-- * 'qsAccessToken'
--
-- * 'qsUploadType'
--
-- * 'qsPayload'
--
-- * 'qsCallback'
querySuggest
    :: SuggestRequest -- ^ 'qsPayload'
    -> QuerySuggest
querySuggest pQsPayload_ =
  QuerySuggest'
    { _qsXgafv = Nothing
    , _qsUploadProtocol = Nothing
    , _qsAccessToken = Nothing
    , _qsUploadType = Nothing
    , _qsPayload = pQsPayload_
    , _qsCallback = Nothing
    }


-- | V1 error format.
qsXgafv :: Lens' QuerySuggest (Maybe Xgafv)
qsXgafv = lens _qsXgafv (\ s a -> s{_qsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qsUploadProtocol :: Lens' QuerySuggest (Maybe Text)
qsUploadProtocol
  = lens _qsUploadProtocol
      (\ s a -> s{_qsUploadProtocol = a})

-- | OAuth access token.
qsAccessToken :: Lens' QuerySuggest (Maybe Text)
qsAccessToken
  = lens _qsAccessToken
      (\ s a -> s{_qsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qsUploadType :: Lens' QuerySuggest (Maybe Text)
qsUploadType
  = lens _qsUploadType (\ s a -> s{_qsUploadType = a})

-- | Multipart request metadata.
qsPayload :: Lens' QuerySuggest SuggestRequest
qsPayload
  = lens _qsPayload (\ s a -> s{_qsPayload = a})

-- | JSONP
qsCallback :: Lens' QuerySuggest (Maybe Text)
qsCallback
  = lens _qsCallback (\ s a -> s{_qsCallback = a})

instance GoogleRequest QuerySuggest where
        type Rs QuerySuggest = SuggestResponse
        type Scopes QuerySuggest =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.query"]
        requestClient QuerySuggest'{..}
          = go _qsXgafv _qsUploadProtocol _qsAccessToken
              _qsUploadType
              _qsCallback
              (Just AltJSON)
              _qsPayload
              cloudSearchService
          where go
                  = buildClient (Proxy :: Proxy QuerySuggestResource)
                      mempty
