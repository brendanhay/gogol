{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListsList@.
module Network.Google.Resource.DFAReporting.RemarketingLists.List
    (
    -- * REST Resource
      RemarketingListsListResource

    -- * Creating a Request
    , remarketingListsList'
    , RemarketingListsList'

    -- * Request Lenses
    , rllQuotaUser
    , rllPrettyPrint
    , rllUserIP
    , rllFloodlightActivityId
    , rllAdvertiserId
    , rllProFileId
    , rllSortOrder
    , rllActive
    , rllKey
    , rllName
    , rllPageToken
    , rllSortField
    , rllOAuthToken
    , rllMaxResults
    , rllFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListsList@ which the
-- 'RemarketingListsList'' request conforms to.
type RemarketingListsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "advertiserId" Int64 :>
             QueryParam "floodlightActivityId" Int64 :>
               QueryParam "sortOrder" RemarketingListsListSortOrder
                 :>
                 QueryParam "active" Bool :>
                   QueryParam "name" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" RemarketingListsListSortField
                         :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON]
                                           RemarketingListsListResponse

-- | Retrieves a list of remarketing lists, possibly filtered.
--
-- /See:/ 'remarketingListsList'' smart constructor.
data RemarketingListsList' = RemarketingListsList'
    { _rllQuotaUser            :: !(Maybe Text)
    , _rllPrettyPrint          :: !Bool
    , _rllUserIP               :: !(Maybe Text)
    , _rllFloodlightActivityId :: !(Maybe Int64)
    , _rllAdvertiserId         :: !Int64
    , _rllProFileId            :: !Int64
    , _rllSortOrder            :: !(Maybe RemarketingListsListSortOrder)
    , _rllActive               :: !(Maybe Bool)
    , _rllKey                  :: !(Maybe Key)
    , _rllName                 :: !(Maybe Text)
    , _rllPageToken            :: !(Maybe Text)
    , _rllSortField            :: !(Maybe RemarketingListsListSortField)
    , _rllOAuthToken           :: !(Maybe OAuthToken)
    , _rllMaxResults           :: !(Maybe Int32)
    , _rllFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllQuotaUser'
--
-- * 'rllPrettyPrint'
--
-- * 'rllUserIP'
--
-- * 'rllFloodlightActivityId'
--
-- * 'rllAdvertiserId'
--
-- * 'rllProFileId'
--
-- * 'rllSortOrder'
--
-- * 'rllActive'
--
-- * 'rllKey'
--
-- * 'rllName'
--
-- * 'rllPageToken'
--
-- * 'rllSortField'
--
-- * 'rllOAuthToken'
--
-- * 'rllMaxResults'
--
-- * 'rllFields'
remarketingListsList'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> RemarketingListsList'
remarketingListsList' pRllAdvertiserId_ pRllProFileId_ =
    RemarketingListsList'
    { _rllQuotaUser = Nothing
    , _rllPrettyPrint = True
    , _rllUserIP = Nothing
    , _rllFloodlightActivityId = Nothing
    , _rllAdvertiserId = pRllAdvertiserId_
    , _rllProFileId = pRllProFileId_
    , _rllSortOrder = Nothing
    , _rllActive = Nothing
    , _rllKey = Nothing
    , _rllName = Nothing
    , _rllPageToken = Nothing
    , _rllSortField = Nothing
    , _rllOAuthToken = Nothing
    , _rllMaxResults = Nothing
    , _rllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rllQuotaUser :: Lens' RemarketingListsList' (Maybe Text)
rllQuotaUser
  = lens _rllQuotaUser (\ s a -> s{_rllQuotaUser = a})

-- | Returns response with indentations and line breaks.
rllPrettyPrint :: Lens' RemarketingListsList' Bool
rllPrettyPrint
  = lens _rllPrettyPrint
      (\ s a -> s{_rllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rllUserIP :: Lens' RemarketingListsList' (Maybe Text)
rllUserIP
  = lens _rllUserIP (\ s a -> s{_rllUserIP = a})

-- | Select only remarketing lists that have this floodlight activity ID.
rllFloodlightActivityId :: Lens' RemarketingListsList' (Maybe Int64)
rllFloodlightActivityId
  = lens _rllFloodlightActivityId
      (\ s a -> s{_rllFloodlightActivityId = a})

-- | Select only remarketing lists owned by this advertiser.
rllAdvertiserId :: Lens' RemarketingListsList' Int64
rllAdvertiserId
  = lens _rllAdvertiserId
      (\ s a -> s{_rllAdvertiserId = a})

-- | User profile ID associated with this request.
rllProFileId :: Lens' RemarketingListsList' Int64
rllProFileId
  = lens _rllProFileId (\ s a -> s{_rllProFileId = a})

-- | Order of sorted results, default is ASCENDING.
rllSortOrder :: Lens' RemarketingListsList' (Maybe RemarketingListsListSortOrder)
rllSortOrder
  = lens _rllSortOrder (\ s a -> s{_rllSortOrder = a})

-- | Select only active or only inactive remarketing lists.
rllActive :: Lens' RemarketingListsList' (Maybe Bool)
rllActive
  = lens _rllActive (\ s a -> s{_rllActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rllKey :: Lens' RemarketingListsList' (Maybe Key)
rllKey = lens _rllKey (\ s a -> s{_rllKey = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
rllName :: Lens' RemarketingListsList' (Maybe Text)
rllName = lens _rllName (\ s a -> s{_rllName = a})

-- | Value of the nextPageToken from the previous result page.
rllPageToken :: Lens' RemarketingListsList' (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | Field by which to sort the list.
rllSortField :: Lens' RemarketingListsList' (Maybe RemarketingListsListSortField)
rllSortField
  = lens _rllSortField (\ s a -> s{_rllSortField = a})

-- | OAuth 2.0 token for the current user.
rllOAuthToken :: Lens' RemarketingListsList' (Maybe OAuthToken)
rllOAuthToken
  = lens _rllOAuthToken
      (\ s a -> s{_rllOAuthToken = a})

-- | Maximum number of results to return.
rllMaxResults :: Lens' RemarketingListsList' (Maybe Int32)
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rllFields :: Lens' RemarketingListsList' (Maybe Text)
rllFields
  = lens _rllFields (\ s a -> s{_rllFields = a})

instance GoogleAuth RemarketingListsList' where
        authKey = rllKey . _Just
        authToken = rllOAuthToken . _Just

instance GoogleRequest RemarketingListsList' where
        type Rs RemarketingListsList' =
             RemarketingListsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListsList'{..}
          = go _rllProFileId (Just _rllAdvertiserId)
              _rllFloodlightActivityId
              _rllSortOrder
              _rllActive
              _rllName
              _rllPageToken
              _rllSortField
              _rllMaxResults
              _rllQuotaUser
              (Just _rllPrettyPrint)
              _rllUserIP
              _rllFields
              _rllKey
              _rllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListsListResource)
                      r
                      u
