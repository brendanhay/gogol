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
module Network.Google.Resource.DFAReporting.Reports.Patch
    (
    -- * REST Resource
      ReportsPatchResource

    -- * Creating a Request
    , reportsPatch'
    , ReportsPatch'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIP
    , rpReportId
    , rpProfileId
    , rpReport
    , rpKey
    , rpOAuthToken
    , rpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsPatch@ which the
-- 'ReportsPatch'' request conforms to.
type ReportsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Report :> Patch '[JSON] Report

-- | Updates a report. This method supports patch semantics.
--
-- /See:/ 'reportsPatch'' smart constructor.
data ReportsPatch' = ReportsPatch'
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIP      :: !(Maybe Text)
    , _rpReportId    :: !Int64
    , _rpProfileId   :: !Int64
    , _rpReport      :: !Report
    , _rpKey         :: !(Maybe Key)
    , _rpOAuthToken  :: !(Maybe OAuthToken)
    , _rpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIP'
--
-- * 'rpReportId'
--
-- * 'rpProfileId'
--
-- * 'rpReport'
--
-- * 'rpKey'
--
-- * 'rpOAuthToken'
--
-- * 'rpFields'
reportsPatch'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> Report -- ^ 'Report'
    -> ReportsPatch'
reportsPatch' pRpReportId_ pRpProfileId_ pRpReport_ =
    ReportsPatch'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIP = Nothing
    , _rpReportId = pRpReportId_
    , _rpProfileId = pRpProfileId_
    , _rpReport = pRpReport_
    , _rpKey = Nothing
    , _rpOAuthToken = Nothing
    , _rpFields = Nothing
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
rpUserIP :: Lens' ReportsPatch' (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | The ID of the report.
rpReportId :: Lens' ReportsPatch' Int64
rpReportId
  = lens _rpReportId (\ s a -> s{_rpReportId = a})

-- | The DFA user profile ID.
rpProfileId :: Lens' ReportsPatch' Int64
rpProfileId
  = lens _rpProfileId (\ s a -> s{_rpProfileId = a})

-- | Multipart request metadata.
rpReport :: Lens' ReportsPatch' Report
rpReport = lens _rpReport (\ s a -> s{_rpReport = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' ReportsPatch' (Maybe Key)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | OAuth 2.0 token for the current user.
rpOAuthToken :: Lens' ReportsPatch' (Maybe OAuthToken)
rpOAuthToken
  = lens _rpOAuthToken (\ s a -> s{_rpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' ReportsPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

instance GoogleAuth ReportsPatch' where
        authKey = rpKey . _Just
        authToken = rpOAuthToken . _Just

instance GoogleRequest ReportsPatch' where
        type Rs ReportsPatch' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsPatch'{..}
          = go _rpQuotaUser (Just _rpPrettyPrint) _rpUserIP
              _rpReportId
              _rpProfileId
              _rpKey
              _rpOAuthToken
              _rpFields
              (Just AltJSON)
              _rpReport
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsPatchResource)
                      r
                      u
