{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Reports.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a report. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsPatch@.
module DFAReporting.Reports.Patch
    (
    -- * REST Resource
      ReportsPatchAPI

    -- * Creating a Request
    , reportsPatch
    , ReportsPatch

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIp
    , rpReportId
    , rpProfileId
    , rpKey
    , rpOauthToken
    , rpFields
    , rpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsPatch@ which the
-- 'ReportsPatch' request conforms to.
type ReportsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :> Patch '[JSON] Report

-- | Updates a report. This method supports patch semantics.
--
-- /See:/ 'reportsPatch' smart constructor.
data ReportsPatch = ReportsPatch
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIp      :: !(Maybe Text)
    , _rpReportId    :: !Int64
    , _rpProfileId   :: !Int64
    , _rpKey         :: !(Maybe Text)
    , _rpOauthToken  :: !(Maybe Text)
    , _rpFields      :: !(Maybe Text)
    , _rpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIp'
--
-- * 'rpReportId'
--
-- * 'rpProfileId'
--
-- * 'rpKey'
--
-- * 'rpOauthToken'
--
-- * 'rpFields'
--
-- * 'rpAlt'
reportsPatch
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsPatch
reportsPatch pRpReportId_ pRpProfileId_ =
    ReportsPatch
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIp = Nothing
    , _rpReportId = pRpReportId_
    , _rpProfileId = pRpProfileId_
    , _rpKey = Nothing
    , _rpOauthToken = Nothing
    , _rpFields = Nothing
    , _rpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' ReportsPatch' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' ReportsPatch' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIp :: Lens' ReportsPatch' (Maybe Text)
rpUserIp = lens _rpUserIp (\ s a -> s{_rpUserIp = a})

-- | The ID of the report.
rpReportId :: Lens' ReportsPatch' Int64
rpReportId
  = lens _rpReportId (\ s a -> s{_rpReportId = a})

-- | The DFA user profile ID.
rpProfileId :: Lens' ReportsPatch' Int64
rpProfileId
  = lens _rpProfileId (\ s a -> s{_rpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' ReportsPatch' (Maybe Text)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | OAuth 2.0 token for the current user.
rpOauthToken :: Lens' ReportsPatch' (Maybe Text)
rpOauthToken
  = lens _rpOauthToken (\ s a -> s{_rpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' ReportsPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

-- | Data format for the response.
rpAlt :: Lens' ReportsPatch' Text
rpAlt = lens _rpAlt (\ s a -> s{_rpAlt = a})

instance GoogleRequest ReportsPatch' where
        type Rs ReportsPatch' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsPatch{..}
          = go _rpQuotaUser _rpPrettyPrint _rpUserIp
              _rpReportId
              _rpProfileId
              _rpKey
              _rpOauthToken
              _rpFields
              _rpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsPatchAPI) r
                      u
