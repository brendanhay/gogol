{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of reports.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsList@.
module DFAReporting.Reports.List
    (
    -- * REST Resource
      ReportsListAPI

    -- * Creating a Request
    , reportsList
    , ReportsList

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIp
    , rlProfileId
    , rlSortOrder
    , rlKey
    , rlScope
    , rlPageToken
    , rlSortField
    , rlOauthToken
    , rlMaxResults
    , rlFields
    , rlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsList@ which the
-- 'ReportsList' request conforms to.
type ReportsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "sortOrder" Text :>
             QueryParam "scope" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "sortField" Text :>
                   QueryParam "maxResults" Int32 :>
                     Get '[JSON] ReportList

-- | Retrieves list of reports.
--
-- /See:/ 'reportsList' smart constructor.
data ReportsList = ReportsList
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlProfileId   :: !Int64
    , _rlSortOrder   :: !Text
    , _rlKey         :: !(Maybe Text)
    , _rlScope       :: !Text
    , _rlPageToken   :: !(Maybe Text)
    , _rlSortField   :: !Text
    , _rlOauthToken  :: !(Maybe Text)
    , _rlMaxResults  :: !(Maybe Int32)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlProfileId'
--
-- * 'rlSortOrder'
--
-- * 'rlKey'
--
-- * 'rlScope'
--
-- * 'rlPageToken'
--
-- * 'rlSortField'
--
-- * 'rlOauthToken'
--
-- * 'rlMaxResults'
--
-- * 'rlFields'
--
-- * 'rlAlt'
reportsList
    :: Int64 -- ^ 'profileId'
    -> ReportsList
reportsList pRlProfileId_ =
    ReportsList
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlProfileId = pRlProfileId_
    , _rlSortOrder = "DESCENDING"
    , _rlKey = Nothing
    , _rlScope = "MINE"
    , _rlPageToken = Nothing
    , _rlSortField = "LAST_MODIFIED_TIME"
    , _rlOauthToken = Nothing
    , _rlMaxResults = Nothing
    , _rlFields = Nothing
    , _rlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' ReportsList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' ReportsList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' ReportsList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | The DFA user profile ID.
rlProfileId :: Lens' ReportsList' Int64
rlProfileId
  = lens _rlProfileId (\ s a -> s{_rlProfileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
rlSortOrder :: Lens' ReportsList' Text
rlSortOrder
  = lens _rlSortOrder (\ s a -> s{_rlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' ReportsList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
rlScope :: Lens' ReportsList' Text
rlScope = lens _rlScope (\ s a -> s{_rlScope = a})

-- | The value of the nextToken from the previous result page.
rlPageToken :: Lens' ReportsList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The field by which to sort the list.
rlSortField :: Lens' ReportsList' Text
rlSortField
  = lens _rlSortField (\ s a -> s{_rlSortField = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' ReportsList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Maximum number of results to return.
rlMaxResults :: Lens' ReportsList' (Maybe Int32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' ReportsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' ReportsList' Text
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest ReportsList' where
        type Rs ReportsList' = ReportList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsList{..}
          = go _rlQuotaUser _rlPrettyPrint _rlUserIp
              _rlProfileId
              (Just _rlSortOrder)
              _rlKey
              (Just _rlScope)
              _rlPageToken
              (Just _rlSortField)
              _rlOauthToken
              _rlMaxResults
              _rlFields
              _rlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsListAPI) r u
