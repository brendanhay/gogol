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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsDelete@.
module Network.Google.Resource.DFAReporting.Reports.Delete
    (
    -- * REST Resource
      ReportsDeleteResource

    -- * Creating a Request
    , reportsDelete'
    , ReportsDelete'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIp
    , rdReportId
    , rdProfileId
    , rdKey
    , rdOauthToken
    , rdFields
    , rdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsDelete@ which the
-- 'ReportsDelete'' request conforms to.
type ReportsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a report by its ID.
--
-- /See:/ 'reportsDelete'' smart constructor.
data ReportsDelete' = ReportsDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIp      :: !(Maybe Text)
    , _rdReportId    :: !Int64
    , _rdProfileId   :: !Int64
    , _rdKey         :: !(Maybe Text)
    , _rdOauthToken  :: !(Maybe Text)
    , _rdFields      :: !(Maybe Text)
    , _rdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIp'
--
-- * 'rdReportId'
--
-- * 'rdProfileId'
--
-- * 'rdKey'
--
-- * 'rdOauthToken'
--
-- * 'rdFields'
--
-- * 'rdAlt'
reportsDelete'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsDelete'
reportsDelete' pRdReportId_ pRdProfileId_ =
    ReportsDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIp = Nothing
    , _rdReportId = pRdReportId_
    , _rdProfileId = pRdProfileId_
    , _rdKey = Nothing
    , _rdOauthToken = Nothing
    , _rdFields = Nothing
    , _rdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' ReportsDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' ReportsDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIp :: Lens' ReportsDelete' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | The ID of the report.
rdReportId :: Lens' ReportsDelete' Int64
rdReportId
  = lens _rdReportId (\ s a -> s{_rdReportId = a})

-- | The DFA user profile ID.
rdProfileId :: Lens' ReportsDelete' Int64
rdProfileId
  = lens _rdProfileId (\ s a -> s{_rdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' ReportsDelete' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' ReportsDelete' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' ReportsDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' ReportsDelete' Alt
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest ReportsDelete' where
        type Rs ReportsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsDelete'{..}
          = go _rdQuotaUser (Just _rdPrettyPrint) _rdUserIp
              _rdReportId
              _rdProfileId
              _rdKey
              _rdOauthToken
              _rdFields
              (Just _rdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ReportsDeleteResource)
                      r
                      u
