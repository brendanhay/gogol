{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.ContentCategories.List
    (
    -- * REST Resource
      ContentCategoriesListAPI

    -- * Creating a Request
    , contentCategoriesList
    , ContentCategoriesList

    -- * Request Lenses
    , cclQuotaUser
    , cclPrettyPrint
    , cclUserIp
    , cclSearchString
    , cclIds
    , cclProfileId
    , cclSortOrder
    , cclKey
    , cclPageToken
    , cclSortField
    , cclOauthToken
    , cclMaxResults
    , cclFields
    , cclAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingContentCategoriesList@ which the
-- 'ContentCategoriesList' request conforms to.
type ContentCategoriesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "contentCategories" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "sortField" Text :>
                     QueryParam "maxResults" Int32 :>
                       Get '[JSON] ContentCategoriesListResponse

-- | Retrieves a list of content categories, possibly filtered.
--
-- /See:/ 'contentCategoriesList' smart constructor.
data ContentCategoriesList = ContentCategoriesList
    { _cclQuotaUser    :: !(Maybe Text)
    , _cclPrettyPrint  :: !Bool
    , _cclUserIp       :: !(Maybe Text)
    , _cclSearchString :: !(Maybe Text)
    , _cclIds          :: !(Maybe Int64)
    , _cclProfileId    :: !Int64
    , _cclSortOrder    :: !(Maybe Text)
    , _cclKey          :: !(Maybe Text)
    , _cclPageToken    :: !(Maybe Text)
    , _cclSortField    :: !(Maybe Text)
    , _cclOauthToken   :: !(Maybe Text)
    , _cclMaxResults   :: !(Maybe Int32)
    , _cclFields       :: !(Maybe Text)
    , _cclAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentCategoriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclQuotaUser'
--
-- * 'cclPrettyPrint'
--
-- * 'cclUserIp'
--
-- * 'cclSearchString'
--
-- * 'cclIds'
--
-- * 'cclProfileId'
--
-- * 'cclSortOrder'
--
-- * 'cclKey'
--
-- * 'cclPageToken'
--
-- * 'cclSortField'
--
-- * 'cclOauthToken'
--
-- * 'cclMaxResults'
--
-- * 'cclFields'
--
-- * 'cclAlt'
contentCategoriesList
    :: Int64 -- ^ 'profileId'
    -> ContentCategoriesList
contentCategoriesList pCclProfileId_ =
    ContentCategoriesList
    { _cclQuotaUser = Nothing
    , _cclPrettyPrint = True
    , _cclUserIp = Nothing
    , _cclSearchString = Nothing
    , _cclIds = Nothing
    , _cclProfileId = pCclProfileId_
    , _cclSortOrder = Nothing
    , _cclKey = Nothing
    , _cclPageToken = Nothing
    , _cclSortField = Nothing
    , _cclOauthToken = Nothing
    , _cclMaxResults = Nothing
    , _cclFields = Nothing
    , _cclAlt = "json"
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
cclUserIp :: Lens' ContentCategoriesList' (Maybe Text)
cclUserIp
  = lens _cclUserIp (\ s a -> s{_cclUserIp = a})

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
cclIds :: Lens' ContentCategoriesList' (Maybe Int64)
cclIds = lens _cclIds (\ s a -> s{_cclIds = a})

-- | User profile ID associated with this request.
cclProfileId :: Lens' ContentCategoriesList' Int64
cclProfileId
  = lens _cclProfileId (\ s a -> s{_cclProfileId = a})

-- | Order of sorted results, default is ASCENDING.
cclSortOrder :: Lens' ContentCategoriesList' (Maybe Text)
cclSortOrder
  = lens _cclSortOrder (\ s a -> s{_cclSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cclKey :: Lens' ContentCategoriesList' (Maybe Text)
cclKey = lens _cclKey (\ s a -> s{_cclKey = a})

-- | Value of the nextPageToken from the previous result page.
cclPageToken :: Lens' ContentCategoriesList' (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | Field by which to sort the list.
cclSortField :: Lens' ContentCategoriesList' (Maybe Text)
cclSortField
  = lens _cclSortField (\ s a -> s{_cclSortField = a})

-- | OAuth 2.0 token for the current user.
cclOauthToken :: Lens' ContentCategoriesList' (Maybe Text)
cclOauthToken
  = lens _cclOauthToken
      (\ s a -> s{_cclOauthToken = a})

-- | Maximum number of results to return.
cclMaxResults :: Lens' ContentCategoriesList' (Maybe Int32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cclFields :: Lens' ContentCategoriesList' (Maybe Text)
cclFields
  = lens _cclFields (\ s a -> s{_cclFields = a})

-- | Data format for the response.
cclAlt :: Lens' ContentCategoriesList' Text
cclAlt = lens _cclAlt (\ s a -> s{_cclAlt = a})

instance GoogleRequest ContentCategoriesList' where
        type Rs ContentCategoriesList' =
             ContentCategoriesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ContentCategoriesList{..}
          = go _cclQuotaUser _cclPrettyPrint _cclUserIp
              _cclSearchString
              _cclIds
              _cclProfileId
              _cclSortOrder
              _cclKey
              _cclPageToken
              _cclSortField
              _cclOauthToken
              _cclMaxResults
              _cclFields
              _cclAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ContentCategoriesListAPI)
                      r
                      u
