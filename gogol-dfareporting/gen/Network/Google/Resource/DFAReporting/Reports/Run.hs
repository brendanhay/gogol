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
module Network.Google.Resource.DFAReporting.Reports.Run
    (
    -- * REST Resource
      ReportsRunResource

    -- * Creating a Request
    , reportsRun'
    , ReportsRun'

    -- * Request Lenses
    , rrQuotaUser
    , rrPrettyPrint
    , rrSynchronous
    , rrUserIP
    , rrReportId
    , rrProFileId
    , rrKey
    , rrOAuthToken
    , rrFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsRun@ which the
-- 'ReportsRun'' request conforms to.
type ReportsRunResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             "run" :>
               QueryParam "synchronous" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Runs a report.
--
-- /See:/ 'reportsRun'' smart constructor.
data ReportsRun' = ReportsRun'
    { _rrQuotaUser   :: !(Maybe Text)
    , _rrPrettyPrint :: !Bool
    , _rrSynchronous :: !(Maybe Bool)
    , _rrUserIP      :: !(Maybe Text)
    , _rrReportId    :: !Int64
    , _rrProFileId   :: !Int64
    , _rrKey         :: !(Maybe AuthKey)
    , _rrOAuthToken  :: !(Maybe OAuthToken)
    , _rrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rrUserIP'
--
-- * 'rrReportId'
--
-- * 'rrProFileId'
--
-- * 'rrKey'
--
-- * 'rrOAuthToken'
--
-- * 'rrFields'
reportsRun'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsRun'
reportsRun' pRrReportId_ pRrProFileId_ =
    ReportsRun'
    { _rrQuotaUser = Nothing
    , _rrPrettyPrint = True
    , _rrSynchronous = Nothing
    , _rrUserIP = Nothing
    , _rrReportId = pRrReportId_
    , _rrProFileId = pRrProFileId_
    , _rrKey = Nothing
    , _rrOAuthToken = Nothing
    , _rrFields = Nothing
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
rrUserIP :: Lens' ReportsRun' (Maybe Text)
rrUserIP = lens _rrUserIP (\ s a -> s{_rrUserIP = a})

-- | The ID of the report.
rrReportId :: Lens' ReportsRun' Int64
rrReportId
  = lens _rrReportId (\ s a -> s{_rrReportId = a})

-- | The DFA profile ID.
rrProFileId :: Lens' ReportsRun' Int64
rrProFileId
  = lens _rrProFileId (\ s a -> s{_rrProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rrKey :: Lens' ReportsRun' (Maybe AuthKey)
rrKey = lens _rrKey (\ s a -> s{_rrKey = a})

-- | OAuth 2.0 token for the current user.
rrOAuthToken :: Lens' ReportsRun' (Maybe OAuthToken)
rrOAuthToken
  = lens _rrOAuthToken (\ s a -> s{_rrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rrFields :: Lens' ReportsRun' (Maybe Text)
rrFields = lens _rrFields (\ s a -> s{_rrFields = a})

instance GoogleAuth ReportsRun' where
        authKey = rrKey . _Just
        authToken = rrOAuthToken . _Just

instance GoogleRequest ReportsRun' where
        type Rs ReportsRun' = File
        request = requestWith dFAReportingRequest
        requestWith rq ReportsRun'{..}
          = go _rrProFileId _rrReportId _rrSynchronous
              _rrQuotaUser
              (Just _rrPrettyPrint)
              _rrUserIP
              _rrFields
              _rrKey
              _rrOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ReportsRunResource) rq
