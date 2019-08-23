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
-- Module      : Network.Google.Resource.FactCheckTools.Claims.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search through fact-checked claims.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.claims.search@.
module Network.Google.Resource.FactCheckTools.Claims.Search
    (
    -- * REST Resource
      ClaimsSearchResource

    -- * Creating a Request
    , claimsSearch
    , ClaimsSearch

    -- * Request Lenses
    , csXgafv
    , csLanguageCode
    , csUploadProtocol
    , csOffSet
    , csMaxAgeDays
    , csAccessToken
    , csUploadType
    , csReviewPublisherSiteFilter
    , csQuery
    , csPageToken
    , csPageSize
    , csCallback
    ) where

import           Network.Google.FactCheckTools.Types
import           Network.Google.Prelude

-- | A resource alias for @factchecktools.claims.search@ method which the
-- 'ClaimsSearch' request conforms to.
type ClaimsSearchResource =
     "v1alpha1" :>
       "claims:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "offset" (Textual Int32) :>
                 QueryParam "maxAgeDays" (Textual Int32) :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "reviewPublisherSiteFilter" Text :>
                         QueryParam "query" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse

-- | Search through fact-checked claims.
--
-- /See:/ 'claimsSearch' smart constructor.
data ClaimsSearch =
  ClaimsSearch'
    { _csXgafv                     :: !(Maybe Xgafv)
    , _csLanguageCode              :: !(Maybe Text)
    , _csUploadProtocol            :: !(Maybe Text)
    , _csOffSet                    :: !(Maybe (Textual Int32))
    , _csMaxAgeDays                :: !(Maybe (Textual Int32))
    , _csAccessToken               :: !(Maybe Text)
    , _csUploadType                :: !(Maybe Text)
    , _csReviewPublisherSiteFilter :: !(Maybe Text)
    , _csQuery                     :: !(Maybe Text)
    , _csPageToken                 :: !(Maybe Text)
    , _csPageSize                  :: !(Maybe (Textual Int32))
    , _csCallback                  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClaimsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csXgafv'
--
-- * 'csLanguageCode'
--
-- * 'csUploadProtocol'
--
-- * 'csOffSet'
--
-- * 'csMaxAgeDays'
--
-- * 'csAccessToken'
--
-- * 'csUploadType'
--
-- * 'csReviewPublisherSiteFilter'
--
-- * 'csQuery'
--
-- * 'csPageToken'
--
-- * 'csPageSize'
--
-- * 'csCallback'
claimsSearch
    :: ClaimsSearch
claimsSearch =
  ClaimsSearch'
    { _csXgafv = Nothing
    , _csLanguageCode = Nothing
    , _csUploadProtocol = Nothing
    , _csOffSet = Nothing
    , _csMaxAgeDays = Nothing
    , _csAccessToken = Nothing
    , _csUploadType = Nothing
    , _csReviewPublisherSiteFilter = Nothing
    , _csQuery = Nothing
    , _csPageToken = Nothing
    , _csPageSize = Nothing
    , _csCallback = Nothing
    }


-- | V1 error format.
csXgafv :: Lens' ClaimsSearch (Maybe Xgafv)
csXgafv = lens _csXgafv (\ s a -> s{_csXgafv = a})

-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". Can be used
-- to restrict results by language, though we do not currently consider the
-- region.
csLanguageCode :: Lens' ClaimsSearch (Maybe Text)
csLanguageCode
  = lens _csLanguageCode
      (\ s a -> s{_csLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csUploadProtocol :: Lens' ClaimsSearch (Maybe Text)
csUploadProtocol
  = lens _csUploadProtocol
      (\ s a -> s{_csUploadProtocol = a})

-- | An integer that specifies the current offset (that is, starting result
-- location) in search results. This field is only considered if
-- \`page_token\` is unset. For example, 0 means to return results starting
-- from the first matching result, and 10 means to return from the 11th
-- result.
csOffSet :: Lens' ClaimsSearch (Maybe Int32)
csOffSet
  = lens _csOffSet (\ s a -> s{_csOffSet = a}) .
      mapping _Coerce

-- | The maximum age of the returned search results, in days. Age is
-- determined by either claim date or review date, whichever is newer.
csMaxAgeDays :: Lens' ClaimsSearch (Maybe Int32)
csMaxAgeDays
  = lens _csMaxAgeDays (\ s a -> s{_csMaxAgeDays = a})
      . mapping _Coerce

-- | OAuth access token.
csAccessToken :: Lens' ClaimsSearch (Maybe Text)
csAccessToken
  = lens _csAccessToken
      (\ s a -> s{_csAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csUploadType :: Lens' ClaimsSearch (Maybe Text)
csUploadType
  = lens _csUploadType (\ s a -> s{_csUploadType = a})

-- | The review publisher site to filter results by, e.g. nytimes.com.
csReviewPublisherSiteFilter :: Lens' ClaimsSearch (Maybe Text)
csReviewPublisherSiteFilter
  = lens _csReviewPublisherSiteFilter
      (\ s a -> s{_csReviewPublisherSiteFilter = a})

-- | Textual query string. Required unless \`review_publisher_site_filter\`
-- is specified.
csQuery :: Lens' ClaimsSearch (Maybe Text)
csQuery = lens _csQuery (\ s a -> s{_csQuery = a})

-- | The pagination token. You may provide the \`next_page_token\` returned
-- from a previous List request, if any, in order to get the next page. All
-- other fields must have the same values as in the previous request.
csPageToken :: Lens' ClaimsSearch (Maybe Text)
csPageToken
  = lens _csPageToken (\ s a -> s{_csPageToken = a})

-- | The pagination size. We will return up to that many results. Defaults to
-- 10 if not set.
csPageSize :: Lens' ClaimsSearch (Maybe Int32)
csPageSize
  = lens _csPageSize (\ s a -> s{_csPageSize = a}) .
      mapping _Coerce

-- | JSONP
csCallback :: Lens' ClaimsSearch (Maybe Text)
csCallback
  = lens _csCallback (\ s a -> s{_csCallback = a})

instance GoogleRequest ClaimsSearch where
        type Rs ClaimsSearch =
             GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
        type Scopes ClaimsSearch = '[]
        requestClient ClaimsSearch'{..}
          = go _csXgafv _csLanguageCode _csUploadProtocol
              _csOffSet
              _csMaxAgeDays
              _csAccessToken
              _csUploadType
              _csReviewPublisherSiteFilter
              _csQuery
              _csPageToken
              _csPageSize
              _csCallback
              (Just AltJSON)
              factCheckToolsService
          where go
                  = buildClient (Proxy :: Proxy ClaimsSearchResource)
                      mempty
