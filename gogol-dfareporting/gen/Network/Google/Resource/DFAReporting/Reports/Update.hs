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
module Network.Google.Resource.DFAReporting.Reports.Update
    (
    -- * REST Resource
      ReportsUpdateResource

    -- * Creating a Request
    , reportsUpdate'
    , ReportsUpdate'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIP
    , ruReportId
    , ruProFileId
    , ruPayload
    , ruKey
    , ruOAuthToken
    , ruFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsUpdate@ which the
-- 'ReportsUpdate'' request conforms to.
type ReportsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Report :> Put '[JSON] Report

-- | Updates a report.
--
-- /See:/ 'reportsUpdate'' smart constructor.
data ReportsUpdate' = ReportsUpdate'
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIP      :: !(Maybe Text)
    , _ruReportId    :: !Int64
    , _ruProFileId   :: !Int64
    , _ruPayload     :: !Report
    , _ruKey         :: !(Maybe AuthKey)
    , _ruOAuthToken  :: !(Maybe OAuthToken)
    , _ruFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIP'
--
-- * 'ruReportId'
--
-- * 'ruProFileId'
--
-- * 'ruPayload'
--
-- * 'ruKey'
--
-- * 'ruOAuthToken'
--
-- * 'ruFields'
reportsUpdate'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsUpdate'
reportsUpdate' pRuReportId_ pRuProFileId_ pRuPayload_ =
    ReportsUpdate'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIP = Nothing
    , _ruReportId = pRuReportId_
    , _ruProFileId = pRuProFileId_
    , _ruPayload = pRuPayload_
    , _ruKey = Nothing
    , _ruOAuthToken = Nothing
    , _ruFields = Nothing
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
ruUserIP :: Lens' ReportsUpdate' (Maybe Text)
ruUserIP = lens _ruUserIP (\ s a -> s{_ruUserIP = a})

-- | The ID of the report.
ruReportId :: Lens' ReportsUpdate' Int64
ruReportId
  = lens _ruReportId (\ s a -> s{_ruReportId = a})

-- | The DFA user profile ID.
ruProFileId :: Lens' ReportsUpdate' Int64
ruProFileId
  = lens _ruProFileId (\ s a -> s{_ruProFileId = a})

-- | Multipart request metadata.
ruPayload :: Lens' ReportsUpdate' Report
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' ReportsUpdate' (Maybe AuthKey)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | OAuth 2.0 token for the current user.
ruOAuthToken :: Lens' ReportsUpdate' (Maybe OAuthToken)
ruOAuthToken
  = lens _ruOAuthToken (\ s a -> s{_ruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' ReportsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

instance GoogleAuth ReportsUpdate' where
        authKey = ruKey . _Just
        authToken = ruOAuthToken . _Just

instance GoogleRequest ReportsUpdate' where
        type Rs ReportsUpdate' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsUpdate'{..}
          = go _ruProFileId _ruReportId _ruQuotaUser
              (Just _ruPrettyPrint)
              _ruUserIP
              _ruFields
              _ruKey
              _ruOAuthToken
              (Just AltJSON)
              _ruPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsUpdateResource)
                      r
                      u
