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
    , rgUserIP
    , rgReportId
    , rgProFileId
    , rgKey
    , rgOAuthToken
    , rgFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Retrieves a report by its ID.
--
-- /See:/ 'reportsGet'' smart constructor.
data ReportsGet' = ReportsGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIP      :: !(Maybe Text)
    , _rgReportId    :: !Int64
    , _rgProFileId   :: !Int64
    , _rgKey         :: !(Maybe Key)
    , _rgOAuthToken  :: !(Maybe OAuthToken)
    , _rgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIP'
--
-- * 'rgReportId'
--
-- * 'rgProFileId'
--
-- * 'rgKey'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
reportsGet'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsGet'
reportsGet' pRgReportId_ pRgProFileId_ =
    ReportsGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIP = Nothing
    , _rgReportId = pRgReportId_
    , _rgProFileId = pRgProFileId_
    , _rgKey = Nothing
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
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
rgUserIP :: Lens' ReportsGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | The ID of the report.
rgReportId :: Lens' ReportsGet' Int64
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a})

-- | The DFA user profile ID.
rgProFileId :: Lens' ReportsGet' Int64
rgProFileId
  = lens _rgProFileId (\ s a -> s{_rgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReportsGet' (Maybe Key)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ReportsGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReportsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

instance GoogleAuth ReportsGet' where
        authKey = rgKey . _Just
        authToken = rgOAuthToken . _Just

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ReportsGet'{..}
          = go _rgProFileId _rgReportId _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsGetResource)
                      r
                      u
