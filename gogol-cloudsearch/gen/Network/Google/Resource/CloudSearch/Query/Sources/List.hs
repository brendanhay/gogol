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
-- Module      : Network.Google.Resource.CloudSearch.Query.Sources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of sources that user can use for Search and Suggest APIs.
-- **Note:** This API requires a standard end user account to execute. A
-- service account can\'t perform Query API requests directly; to use a
-- service account to perform queries, set up [Google Workspace domain-wide
-- delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.sources.list@.
module Network.Google.Resource.CloudSearch.Query.Sources.List
    (
    -- * REST Resource
      QuerySourcesListResource

    -- * Creating a Request
    , querySourcesList
    , QuerySourcesList

    -- * Request Lenses
    , qslXgafv
    , qslRequestOptionsTimeZone
    , qslRequestOptionsDebugOptionsEnableDebugging
    , qslUploadProtocol
    , qslAccessToken
    , qslUploadType
    , qslRequestOptionsSearchApplicationId
    , qslRequestOptionsLanguageCode
    , qslPageToken
    , qslCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.query.sources.list@ method which the
-- 'QuerySourcesList' request conforms to.
type QuerySourcesListResource =
     "v1" :>
       "query" :>
         "sources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "requestOptions.timeZone" Text :>
               QueryParam
                 "requestOptions.debugOptions.enableDebugging"
                 Bool
                 :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "requestOptions.searchApplicationId" Text
                         :>
                         QueryParam "requestOptions.languageCode" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListQuerySourcesResponse

-- | Returns list of sources that user can use for Search and Suggest APIs.
-- **Note:** This API requires a standard end user account to execute. A
-- service account can\'t perform Query API requests directly; to use a
-- service account to perform queries, set up [Google Workspace domain-wide
-- delegation of
-- authority](https:\/\/developers.google.com\/cloud-search\/docs\/guides\/delegation\/).
--
-- /See:/ 'querySourcesList' smart constructor.
data QuerySourcesList =
  QuerySourcesList'
    { _qslXgafv :: !(Maybe Xgafv)
    , _qslRequestOptionsTimeZone :: !(Maybe Text)
    , _qslRequestOptionsDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _qslUploadProtocol :: !(Maybe Text)
    , _qslAccessToken :: !(Maybe Text)
    , _qslUploadType :: !(Maybe Text)
    , _qslRequestOptionsSearchApplicationId :: !(Maybe Text)
    , _qslRequestOptionsLanguageCode :: !(Maybe Text)
    , _qslPageToken :: !(Maybe Text)
    , _qslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qslXgafv'
--
-- * 'qslRequestOptionsTimeZone'
--
-- * 'qslRequestOptionsDebugOptionsEnableDebugging'
--
-- * 'qslUploadProtocol'
--
-- * 'qslAccessToken'
--
-- * 'qslUploadType'
--
-- * 'qslRequestOptionsSearchApplicationId'
--
-- * 'qslRequestOptionsLanguageCode'
--
-- * 'qslPageToken'
--
-- * 'qslCallback'
querySourcesList
    :: QuerySourcesList
querySourcesList =
  QuerySourcesList'
    { _qslXgafv = Nothing
    , _qslRequestOptionsTimeZone = Nothing
    , _qslRequestOptionsDebugOptionsEnableDebugging = Nothing
    , _qslUploadProtocol = Nothing
    , _qslAccessToken = Nothing
    , _qslUploadType = Nothing
    , _qslRequestOptionsSearchApplicationId = Nothing
    , _qslRequestOptionsLanguageCode = Nothing
    , _qslPageToken = Nothing
    , _qslCallback = Nothing
    }


-- | V1 error format.
qslXgafv :: Lens' QuerySourcesList (Maybe Xgafv)
qslXgafv = lens _qslXgafv (\ s a -> s{_qslXgafv = a})

-- | Current user\'s time zone id, such as \"America\/Los_Angeles\" or
-- \"Australia\/Sydney\". These IDs are defined by [Unicode Common Locale
-- Data Repository (CLDR)](http:\/\/cldr.unicode.org\/) project, and
-- currently available in the file
-- [timezone.xml](http:\/\/unicode.org\/repos\/cldr\/trunk\/common\/bcp47\/timezone.xml).
-- This field is used to correctly interpret date and time queries. If this
-- field is not specified, the default time zone (UTC) is used.
qslRequestOptionsTimeZone :: Lens' QuerySourcesList (Maybe Text)
qslRequestOptionsTimeZone
  = lens _qslRequestOptionsTimeZone
      (\ s a -> s{_qslRequestOptionsTimeZone = a})

-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
qslRequestOptionsDebugOptionsEnableDebugging :: Lens' QuerySourcesList (Maybe Bool)
qslRequestOptionsDebugOptionsEnableDebugging
  = lens _qslRequestOptionsDebugOptionsEnableDebugging
      (\ s a ->
         s{_qslRequestOptionsDebugOptionsEnableDebugging = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qslUploadProtocol :: Lens' QuerySourcesList (Maybe Text)
qslUploadProtocol
  = lens _qslUploadProtocol
      (\ s a -> s{_qslUploadProtocol = a})

-- | OAuth access token.
qslAccessToken :: Lens' QuerySourcesList (Maybe Text)
qslAccessToken
  = lens _qslAccessToken
      (\ s a -> s{_qslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qslUploadType :: Lens' QuerySourcesList (Maybe Text)
qslUploadType
  = lens _qslUploadType
      (\ s a -> s{_qslUploadType = a})

-- | The ID generated when you create a search application using the [admin
-- console](https:\/\/support.google.com\/a\/answer\/9043922).
qslRequestOptionsSearchApplicationId :: Lens' QuerySourcesList (Maybe Text)
qslRequestOptionsSearchApplicationId
  = lens _qslRequestOptionsSearchApplicationId
      (\ s a ->
         s{_qslRequestOptionsSearchApplicationId = a})

-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. For
-- translations. Set this field using the language set in browser or for
-- the page. In the event that the user\'s language preference is known,
-- set this field to the known user language. When specified, the documents
-- in search results are biased towards the specified language. The suggest
-- API does not use this parameter. Instead, suggest autocompletes only
-- based on characters in the query.
qslRequestOptionsLanguageCode :: Lens' QuerySourcesList (Maybe Text)
qslRequestOptionsLanguageCode
  = lens _qslRequestOptionsLanguageCode
      (\ s a -> s{_qslRequestOptionsLanguageCode = a})

-- | Number of sources to return in the response.
qslPageToken :: Lens' QuerySourcesList (Maybe Text)
qslPageToken
  = lens _qslPageToken (\ s a -> s{_qslPageToken = a})

-- | JSONP
qslCallback :: Lens' QuerySourcesList (Maybe Text)
qslCallback
  = lens _qslCallback (\ s a -> s{_qslCallback = a})

instance GoogleRequest QuerySourcesList where
        type Rs QuerySourcesList = ListQuerySourcesResponse
        type Scopes QuerySourcesList =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.query"]
        requestClient QuerySourcesList'{..}
          = go _qslXgafv _qslRequestOptionsTimeZone
              _qslRequestOptionsDebugOptionsEnableDebugging
              _qslUploadProtocol
              _qslAccessToken
              _qslUploadType
              _qslRequestOptionsSearchApplicationId
              _qslRequestOptionsLanguageCode
              _qslPageToken
              _qslCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy QuerySourcesListResource)
                      mempty
