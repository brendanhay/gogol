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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsGet@.
module Network.Google.Resource.DFAReporting.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet'
    , ReportsGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgReportId
    , rgProfileId
    , rgKey
    , rgOauthToken
    , rgFields
    , rgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsGet@ which the
-- 'ReportsGet'' request conforms to.
type ReportsGetResource =
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
                         QueryParam "alt" Alt :> Get '[JSON] Report

-- | Retrieves a report by its ID.
--
-- /See:/ 'reportsGet'' smart constructor.
data ReportsGet' = ReportsGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIp      :: !(Maybe Text)
    , _rgReportId    :: !Int64
    , _rgProfileId   :: !Int64
    , _rgKey         :: !(Maybe Text)
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgReportId'
--
-- * 'rgProfileId'
--
-- * 'rgKey'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
reportsGet'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsGet'
reportsGet' pRgReportId_ pRgProfileId_ =
    ReportsGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgReportId = pRgReportId_
    , _rgProfileId = pRgProfileId_
    , _rgKey = Nothing
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReportsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReportsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' ReportsGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | The ID of the report.
rgReportId :: Lens' ReportsGet' Int64
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a})

-- | The DFA user profile ID.
rgProfileId :: Lens' ReportsGet' Int64
rgProfileId
  = lens _rgProfileId (\ s a -> s{_rgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReportsGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' ReportsGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReportsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' ReportsGet' Alt
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsGet'{..}
          = go _rgQuotaUser (Just _rgPrettyPrint) _rgUserIp
              _rgReportId
              _rgProfileId
              _rgKey
              _rgOauthToken
              _rgFields
              (Just _rgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsGetResource)
                      r
                      u
