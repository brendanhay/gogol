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
    , rdUserIP
    , rdReportId
    , rdProFileId
    , rdKey
    , rdOAuthToken
    , rdFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a report by its ID.
--
-- /See:/ 'reportsDelete'' smart constructor.
data ReportsDelete' = ReportsDelete'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIP      :: !(Maybe Text)
    , _rdReportId    :: !Int64
    , _rdProFileId   :: !Int64
    , _rdKey         :: !(Maybe AuthKey)
    , _rdOAuthToken  :: !(Maybe OAuthToken)
    , _rdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIP'
--
-- * 'rdReportId'
--
-- * 'rdProFileId'
--
-- * 'rdKey'
--
-- * 'rdOAuthToken'
--
-- * 'rdFields'
reportsDelete'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> ReportsDelete'
reportsDelete' pRdReportId_ pRdProFileId_ =
    ReportsDelete'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIP = Nothing
    , _rdReportId = pRdReportId_
    , _rdProFileId = pRdProFileId_
    , _rdKey = Nothing
    , _rdOAuthToken = Nothing
    , _rdFields = Nothing
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
rdUserIP :: Lens' ReportsDelete' (Maybe Text)
rdUserIP = lens _rdUserIP (\ s a -> s{_rdUserIP = a})

-- | The ID of the report.
rdReportId :: Lens' ReportsDelete' Int64
rdReportId
  = lens _rdReportId (\ s a -> s{_rdReportId = a})

-- | The DFA user profile ID.
rdProFileId :: Lens' ReportsDelete' Int64
rdProFileId
  = lens _rdProFileId (\ s a -> s{_rdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' ReportsDelete' (Maybe AuthKey)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | OAuth 2.0 token for the current user.
rdOAuthToken :: Lens' ReportsDelete' (Maybe OAuthToken)
rdOAuthToken
  = lens _rdOAuthToken (\ s a -> s{_rdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' ReportsDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

instance GoogleAuth ReportsDelete' where
        _AuthKey = rdKey . _Just
        _AuthToken = rdOAuthToken . _Just

instance GoogleRequest ReportsDelete' where
        type Rs ReportsDelete' = ()
        request = requestWith dFAReportingRequest
        requestWith rq ReportsDelete'{..}
          = go _rdProFileId _rdReportId _rdQuotaUser
              (Just _rdPrettyPrint)
              _rdUserIP
              _rdFields
              _rdKey
              _rdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ReportsDeleteResource)
                      rq
