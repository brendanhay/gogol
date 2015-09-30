{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.Run
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Runs a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsRun@.
module DFAReporting.Reports.Run
    (
    -- * REST Resource
      ReportsRunAPI

    -- * Creating a Request
    , reportsRun
    , ReportsRun

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrSynchronous
    , rrUserIp
    , rrReportId
    , rrProfileId
    , rrKey
    , rrOauthToken
    , rrFields
    , rrAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsRun@ which the
-- 'ReportsRun' request conforms to.
type ReportsRunAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             "run" :>
               QueryParam "synchronous" Bool :> Post '[JSON] File

-- | Runs a report.
--
-- /See:/ 'reportsRun' smart constructor.
data ReportsRun = ReportsRun
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrSynchronous :: !(Maybe Bool)
    , _rrUserIp      :: !(Maybe Text)
    , _rrReportId    :: !Int64
    , _rrProfileId   :: !Int64
    , _rrKey         :: !(Maybe Text)
    , _rrOauthToken  :: !(Maybe Text)
    , _rrFields      :: !(Maybe Text)
    , _rrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsRun'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrQuotaUser'
--
-- * 'rrPrettyPrint'
--
-- * 'rrSynchronous'
--
-- * 'rrUserIp'
--
-- * 'rrReportId'
--
-- * 'rrProfileId'
--
-- * 'rrKey'
--
-- * 'rrOauthToken'
--
-- * 'rrFields'
--
-- * 'rrAlt'
reportsRun
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsRun
reportsRun pRrReportId_ pRrProfileId_ =
    ReportsRun
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrSynchronous = Nothing
    , _rrUserIp = Nothing
    , _rrReportId = pRrReportId_
    , _rrProfileId = pRrProfileId_
    , _rrKey = Nothing
    , _rrOauthToken = Nothing
    , _rrFields = Nothing
    , _rrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rrQuotaUser :: Lens' ReportsRun' (Maybe Text)
rrQuotaUser
  = lens _rrQuotaUser (\ s a -> s{_rrQuotaUser = a})

-- | Returns response with indentations and line breaks.
rrPrettyPrint :: Lens' ReportsRun' Bool
rrPrettyPrint
  = lens _rrPrettyPrint
      (\ s a -> s{_rrPrettyPrint = a})

-- | If set and true, tries to run the report synchronously.
rrSynchronous :: Lens' ReportsRun' (Maybe Bool)
rrSynchronous
  = lens _rrSynchronous
      (\ s a -> s{_rrSynchronous = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rrUserIp :: Lens' ReportsRun' (Maybe Text)
rrUserIp = lens _rrUserIp (\ s a -> s{_rrUserIp = a})

-- | The ID of the report.
rrReportId :: Lens' ReportsRun' Int64
rrReportId
  = lens _rrReportId (\ s a -> s{_rrReportId = a})

-- | The DFA profile ID.
rrProfileId :: Lens' ReportsRun' Int64
rrProfileId
  = lens _rrProfileId (\ s a -> s{_rrProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' ReportsRun' (Maybe Text)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOauthToken :: Lens' ReportsRun' (Maybe Text)
rrOauthToken
  = lens _rrOauthToken (\ s a -> s{_rrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' ReportsRun' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

-- | Data format for the response.
rrAlt :: Lens' ReportsRun' Text
rrAlt = lens _rrAlt (\ s a -> s{_rrAlt = a})

instance GoogleRequest ReportsRun' where
        type Rs ReportsRun' = File
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsRun{..}
          = go _rrQuotaUser _rrPrettyPrint _rrSynchronous
              _rrUserIp
              _rrReportId
              _rrProfileId
              _rrKey
              _rrOauthToken
              _rrFields
              _rrAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsRunAPI) r u
