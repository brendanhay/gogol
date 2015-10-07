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
-- Module      : Network.Google.Resource.DFAReporting.ContentCategories.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of content categories, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingContentCategoriesList@.
module Network.Google.Resource.DFAReporting.ContentCategories.List
    (
    -- * REST Resource
      ContentCategoriesListResource

    -- * Creating a Request
    , contentCategoriesList'
    , ContentCategoriesList'

    -- * Request Lenses
    , cclQuotaUser
    , cclPrettyPrint
    , cclUserIP
    , cclSearchString
    , cclIds
    , cclProFileId
    , cclSortOrder
    , cclKey
    , cclPageToken
    , cclSortField
    , cclOAuthToken
    , cclMaxResults
    , cclFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesList@ method which the
-- 'ContentCategoriesList'' request conforms to.
type ContentCategoriesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" ContentCategoriesListSortOrder
                 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" ContentCategoriesListSortField
                     :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ContentCategoriesListResponse

-- | Retrieves a list of content categories, possibly filtered.
--
-- /See:/ 'contentCategoriesList'' smart constructor.
data ContentCategoriesList' = ContentCategoriesList'
    { _cclQuotaUser    :: !(Maybe Text)
    , _cclPrettyPrint  :: !Bool
    , _cclUserIP       :: !(Maybe Text)
    , _cclSearchString :: !(Maybe Text)
    , _cclIds          :: !(Maybe [Int64])
    , _cclProFileId    :: !Int64
    , _cclSortOrder    :: !(Maybe ContentCategoriesListSortOrder)
    , _cclKey          :: !(Maybe AuthKey)
    , _cclPageToken    :: !(Maybe Text)
    , _cclSortField    :: !(Maybe ContentCategoriesListSortField)
    , _cclOAuthToken   :: !(Maybe OAuthToken)
    , _cclMaxResults   :: !(Maybe Int32)
    , _cclFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclQuotaUser'
--
-- * 'cclPrettyPrint'
--
-- * 'cclUserIP'
--
-- * 'cclSearchString'
--
-- * 'cclIds'
--
-- * 'cclProFileId'
--
-- * 'cclSortOrder'
--
-- * 'cclKey'
--
-- * 'cclPageToken'
--
-- * 'cclSortField'
--
-- * 'cclOAuthToken'
--
-- * 'cclMaxResults'
--
-- * 'cclFields'
contentCategoriesList'
    :: Int64 -- ^ 'profileId'
    -> ContentCategoriesList'
contentCategoriesList' pCclProFileId_ =
    ContentCategoriesList'
    { _cclQuotaUser = Nothing
    , _cclPrettyPrint = True
    , _cclUserIP = Nothing
    , _cclSearchString = Nothing
    , _cclIds = Nothing
    , _cclProFileId = pCclProFileId_
    , _cclSortOrder = Nothing
    , _cclKey = Nothing
    , _cclPageToken = Nothing
    , _cclSortField = Nothing
    , _cclOAuthToken = Nothing
    , _cclMaxResults = Nothing
    , _cclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cclQuotaUser :: Lens' ContentCategoriesList' (Maybe Text)
cclQuotaUser
  = lens _cclQuotaUser (\ s a -> s{_cclQuotaUser = a})

-- | Returns response with indentations and line breaks.
cclPrettyPrint :: Lens' ContentCategoriesList' Bool
cclPrettyPrint
  = lens _cclPrettyPrint
      (\ s a -> s{_cclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cclUserIP :: Lens' ContentCategoriesList' (Maybe Text)
cclUserIP
  = lens _cclUserIP (\ s a -> s{_cclUserIP = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"contentcategory*2015\" will return objects with names
-- like \"contentcategory June 2015\", \"contentcategory April 2015\", or
-- simply \"contentcategory 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"contentcategory\" will match objects with name \"my
-- contentcategory\", \"contentcategory 2015\", or simply
-- \"contentcategory\".
cclSearchString :: Lens' ContentCategoriesList' (Maybe Text)
cclSearchString
  = lens _cclSearchString
      (\ s a -> s{_cclSearchString = a})

-- | Select only content categories with these IDs.
cclIds :: Lens' ContentCategoriesList' [Int64]
cclIds
  = lens _cclIds (\ s a -> s{_cclIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cclProFileId :: Lens' ContentCategoriesList' Int64
cclProFileId
  = lens _cclProFileId (\ s a -> s{_cclProFileId = a})

-- | Order of sorted results, default is ASCENDING.
cclSortOrder :: Lens' ContentCategoriesList' (Maybe ContentCategoriesListSortOrder)
cclSortOrder
  = lens _cclSortOrder (\ s a -> s{_cclSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cclKey :: Lens' ContentCategoriesList' (Maybe AuthKey)
cclKey = lens _cclKey (\ s a -> s{_cclKey = a})

-- | Value of the nextPageToken from the previous result page.
cclPageToken :: Lens' ContentCategoriesList' (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | Field by which to sort the list.
cclSortField :: Lens' ContentCategoriesList' (Maybe ContentCategoriesListSortField)
cclSortField
  = lens _cclSortField (\ s a -> s{_cclSortField = a})

-- | OAuth 2.0 token for the current user.
cclOAuthToken :: Lens' ContentCategoriesList' (Maybe OAuthToken)
cclOAuthToken
  = lens _cclOAuthToken
      (\ s a -> s{_cclOAuthToken = a})

-- | Maximum number of results to return.
cclMaxResults :: Lens' ContentCategoriesList' (Maybe Int32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cclFields :: Lens' ContentCategoriesList' (Maybe Text)
cclFields
  = lens _cclFields (\ s a -> s{_cclFields = a})

instance GoogleAuth ContentCategoriesList' where
        _AuthKey = cclKey . _Just
        _AuthToken = cclOAuthToken . _Just

instance GoogleRequest ContentCategoriesList' where
        type Rs ContentCategoriesList' =
             ContentCategoriesListResponse
        request = requestWith dFAReportingRequest
        requestWith rq ContentCategoriesList'{..}
          = go _cclProFileId _cclSearchString
              (_cclIds ^. _Default)
              _cclSortOrder
              _cclPageToken
              _cclSortField
              _cclMaxResults
              _cclQuotaUser
              (Just _cclPrettyPrint)
              _cclUserIP
              _cclFields
              _cclKey
              _cclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ContentCategoriesListResource)
                      rq
