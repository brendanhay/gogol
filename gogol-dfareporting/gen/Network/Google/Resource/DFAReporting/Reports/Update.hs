{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsUpdate@.
module DFAReporting.Reports.Update
    (
    -- * REST Resource
      ReportsUpdateAPI

    -- * Creating a Request
    , reportsUpdate
    , ReportsUpdate

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIp
    , ruReportId
    , ruProfileId
    , ruKey
    , ruOauthToken
    , ruFields
    , ruAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsUpdate@ which the
-- 'ReportsUpdate' request conforms to.
type ReportsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :> Put '[JSON] Report

-- | Updates a report.
--
-- /See:/ 'reportsUpdate' smart constructor.
data ReportsUpdate = ReportsUpdate
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIp      :: !(Maybe Text)
    , _ruReportId    :: !Int64
    , _ruProfileId   :: !Int64
    , _ruKey         :: !(Maybe Text)
    , _ruOauthToken  :: !(Maybe Text)
    , _ruFields      :: !(Maybe Text)
    , _ruAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIp'
--
-- * 'ruReportId'
--
-- * 'ruProfileId'
--
-- * 'ruKey'
--
-- * 'ruOauthToken'
--
-- * 'ruFields'
--
-- * 'ruAlt'
reportsUpdate
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsUpdate
reportsUpdate pRuReportId_ pRuProfileId_ =
    ReportsUpdate
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIp = Nothing
    , _ruReportId = pRuReportId_
    , _ruProfileId = pRuProfileId_
    , _ruKey = Nothing
    , _ruOauthToken = Nothing
    , _ruFields = Nothing
    , _ruAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' ReportsUpdate' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' ReportsUpdate' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIp :: Lens' ReportsUpdate' (Maybe Text)
ruUserIp = lens _ruUserIp (\ s a -> s{_ruUserIp = a})

-- | The ID of the report.
ruReportId :: Lens' ReportsUpdate' Int64
ruReportId
  = lens _ruReportId (\ s a -> s{_ruReportId = a})

-- | The DFA user profile ID.
ruProfileId :: Lens' ReportsUpdate' Int64
ruProfileId
  = lens _ruProfileId (\ s a -> s{_ruProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' ReportsUpdate' (Maybe Text)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOauthToken :: Lens' ReportsUpdate' (Maybe Text)
ruOauthToken
  = lens _ruOauthToken (\ s a -> s{_ruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' ReportsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

-- | Data format for the response.
ruAlt :: Lens' ReportsUpdate' Text
ruAlt = lens _ruAlt (\ s a -> s{_ruAlt = a})

instance GoogleRequest ReportsUpdate' where
        type Rs ReportsUpdate' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsUpdate{..}
          = go _ruQuotaUser _ruPrettyPrint _ruUserIp
              _ruReportId
              _ruProfileId
              _ruKey
              _ruOauthToken
              _ruFields
              _ruAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsUpdateAPI) r
                      u
