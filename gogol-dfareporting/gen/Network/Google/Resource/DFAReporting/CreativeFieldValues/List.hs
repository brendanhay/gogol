{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of creative field values, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeFieldValuesList@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.List
    (
    -- * REST Resource
      CreativeFieldValuesListResource

    -- * Creating a Request
    , creativeFieldValuesList'
    , CreativeFieldValuesList'

    -- * Request Lenses
    , cfvlCreativeFieldId
    , cfvlQuotaUser
    , cfvlPrettyPrint
    , cfvlUserIp
    , cfvlSearchString
    , cfvlIds
    , cfvlProfileId
    , cfvlSortOrder
    , cfvlKey
    , cfvlPageToken
    , cfvlSortField
    , cfvlOauthToken
    , cfvlMaxResults
    , cfvlFields
    , cfvlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeFieldValuesList@ which the
-- 'CreativeFieldValuesList'' request conforms to.
type CreativeFieldValuesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeFields" :>
           Capture "creativeFieldId" Int64 :>
             "creativeFieldValues" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "searchString" Text :>
                       QueryParams "ids" Int64 :>
                         QueryParam "sortOrder"
                           DfareportingCreativeFieldValuesListSortOrder
                           :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField"
                                 DfareportingCreativeFieldValuesListSortField
                                 :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "maxResults" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Alt :>
                                         Get '[JSON]
                                           CreativeFieldValuesListResponse

-- | Retrieves a list of creative field values, possibly filtered.
--
-- /See:/ 'creativeFieldValuesList'' smart constructor.
data CreativeFieldValuesList' = CreativeFieldValuesList'
    { _cfvlCreativeFieldId :: !Int64
    , _cfvlQuotaUser       :: !(Maybe Text)
    , _cfvlPrettyPrint     :: !Bool
    , _cfvlUserIp          :: !(Maybe Text)
    , _cfvlSearchString    :: !(Maybe Text)
    , _cfvlIds             :: !(Maybe Int64)
    , _cfvlProfileId       :: !Int64
    , _cfvlSortOrder       :: !(Maybe DfareportingCreativeFieldValuesListSortOrder)
    , _cfvlKey             :: !(Maybe Text)
    , _cfvlPageToken       :: !(Maybe Text)
    , _cfvlSortField       :: !(Maybe DfareportingCreativeFieldValuesListSortField)
    , _cfvlOauthToken      :: !(Maybe Text)
    , _cfvlMaxResults      :: !(Maybe Int32)
    , _cfvlFields          :: !(Maybe Text)
    , _cfvlAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldValuesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvlCreativeFieldId'
--
-- * 'cfvlQuotaUser'
--
-- * 'cfvlPrettyPrint'
--
-- * 'cfvlUserIp'
--
-- * 'cfvlSearchString'
--
-- * 'cfvlIds'
--
-- * 'cfvlProfileId'
--
-- * 'cfvlSortOrder'
--
-- * 'cfvlKey'
--
-- * 'cfvlPageToken'
--
-- * 'cfvlSortField'
--
-- * 'cfvlOauthToken'
--
-- * 'cfvlMaxResults'
--
-- * 'cfvlFields'
--
-- * 'cfvlAlt'
creativeFieldValuesList'
    :: Int64 -- ^ 'creativeFieldId'
    -> Int64 -- ^ 'profileId'
    -> CreativeFieldValuesList'
creativeFieldValuesList' pCfvlCreativeFieldId_ pCfvlProfileId_ =
    CreativeFieldValuesList'
    { _cfvlCreativeFieldId = pCfvlCreativeFieldId_
    , _cfvlQuotaUser = Nothing
    , _cfvlPrettyPrint = True
    , _cfvlUserIp = Nothing
    , _cfvlSearchString = Nothing
    , _cfvlIds = Nothing
    , _cfvlProfileId = pCfvlProfileId_
    , _cfvlSortOrder = Nothing
    , _cfvlKey = Nothing
    , _cfvlPageToken = Nothing
    , _cfvlSortField = Nothing
    , _cfvlOauthToken = Nothing
    , _cfvlMaxResults = Nothing
    , _cfvlFields = Nothing
    , _cfvlAlt = JSON
    }

-- | Creative field ID for this creative field value.
cfvlCreativeFieldId :: Lens' CreativeFieldValuesList' Int64
cfvlCreativeFieldId
  = lens _cfvlCreativeFieldId
      (\ s a -> s{_cfvlCreativeFieldId = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cfvlQuotaUser :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlQuotaUser
  = lens _cfvlQuotaUser
      (\ s a -> s{_cfvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
cfvlPrettyPrint :: Lens' CreativeFieldValuesList' Bool
cfvlPrettyPrint
  = lens _cfvlPrettyPrint
      (\ s a -> s{_cfvlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cfvlUserIp :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlUserIp
  = lens _cfvlUserIp (\ s a -> s{_cfvlUserIp = a})

-- | Allows searching for creative field values by their values. Wildcards
-- (e.g. *) are not allowed.
cfvlSearchString :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlSearchString
  = lens _cfvlSearchString
      (\ s a -> s{_cfvlSearchString = a})

-- | Select only creative field values with these IDs.
cfvlIds :: Lens' CreativeFieldValuesList' (Maybe Int64)
cfvlIds = lens _cfvlIds (\ s a -> s{_cfvlIds = a})

-- | User profile ID associated with this request.
cfvlProfileId :: Lens' CreativeFieldValuesList' Int64
cfvlProfileId
  = lens _cfvlProfileId
      (\ s a -> s{_cfvlProfileId = a})

-- | Order of sorted results, default is ASCENDING.
cfvlSortOrder :: Lens' CreativeFieldValuesList' (Maybe DfareportingCreativeFieldValuesListSortOrder)
cfvlSortOrder
  = lens _cfvlSortOrder
      (\ s a -> s{_cfvlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cfvlKey :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlKey = lens _cfvlKey (\ s a -> s{_cfvlKey = a})

-- | Value of the nextPageToken from the previous result page.
cfvlPageToken :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlPageToken
  = lens _cfvlPageToken
      (\ s a -> s{_cfvlPageToken = a})

-- | Field by which to sort the list.
cfvlSortField :: Lens' CreativeFieldValuesList' (Maybe DfareportingCreativeFieldValuesListSortField)
cfvlSortField
  = lens _cfvlSortField
      (\ s a -> s{_cfvlSortField = a})

-- | OAuth 2.0 token for the current user.
cfvlOauthToken :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlOauthToken
  = lens _cfvlOauthToken
      (\ s a -> s{_cfvlOauthToken = a})

-- | Maximum number of results to return.
cfvlMaxResults :: Lens' CreativeFieldValuesList' (Maybe Int32)
cfvlMaxResults
  = lens _cfvlMaxResults
      (\ s a -> s{_cfvlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cfvlFields :: Lens' CreativeFieldValuesList' (Maybe Text)
cfvlFields
  = lens _cfvlFields (\ s a -> s{_cfvlFields = a})

-- | Data format for the response.
cfvlAlt :: Lens' CreativeFieldValuesList' Alt
cfvlAlt = lens _cfvlAlt (\ s a -> s{_cfvlAlt = a})

instance GoogleRequest CreativeFieldValuesList' where
        type Rs CreativeFieldValuesList' =
             CreativeFieldValuesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeFieldValuesList'{..}
          = go _cfvlCreativeFieldId _cfvlQuotaUser
              (Just _cfvlPrettyPrint)
              _cfvlUserIp
              _cfvlSearchString
              _cfvlIds
              _cfvlProfileId
              _cfvlSortOrder
              _cfvlKey
              _cfvlPageToken
              _cfvlSortField
              _cfvlOauthToken
              _cfvlMaxResults
              _cfvlFields
              (Just _cfvlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeFieldValuesListResource)
                      r
                      u
