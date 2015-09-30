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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesUpdate@.
module Network.Google.Resource.DFAReporting.Sites.Update
    (
    -- * REST Resource
      SitesUpdateResource

    -- * Creating a Request
    , sitesUpdate'
    , SitesUpdate'

    -- * Request Lenses
    , sitQuotaUser
    , sitPrettyPrint
    , sitUserIp
    , sitProfileId
    , sitKey
    , sitOauthToken
    , sitFields
    , sitAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesUpdate@ which the
-- 'SitesUpdate'' request conforms to.
type SitesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Site

-- | Updates an existing site.
--
-- /See:/ 'sitesUpdate'' smart constructor.
data SitesUpdate' = SitesUpdate'
    { _sitQuotaUser   :: !(Maybe Text)
    , _sitPrettyPrint :: !Bool
    , _sitUserIp      :: !(Maybe Text)
    , _sitProfileId   :: !Int64
    , _sitKey         :: !(Maybe Text)
    , _sitOauthToken  :: !(Maybe Text)
    , _sitFields      :: !(Maybe Text)
    , _sitAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitQuotaUser'
--
-- * 'sitPrettyPrint'
--
-- * 'sitUserIp'
--
-- * 'sitProfileId'
--
-- * 'sitKey'
--
-- * 'sitOauthToken'
--
-- * 'sitFields'
--
-- * 'sitAlt'
sitesUpdate'
    :: Int64 -- ^ 'profileId'
    -> SitesUpdate'
sitesUpdate' pSitProfileId_ =
    SitesUpdate'
    { _sitQuotaUser = Nothing
    , _sitPrettyPrint = True
    , _sitUserIp = Nothing
    , _sitProfileId = pSitProfileId_
    , _sitKey = Nothing
    , _sitOauthToken = Nothing
    , _sitFields = Nothing
    , _sitAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sitQuotaUser :: Lens' SitesUpdate' (Maybe Text)
sitQuotaUser
  = lens _sitQuotaUser (\ s a -> s{_sitQuotaUser = a})

-- | Returns response with indentations and line breaks.
sitPrettyPrint :: Lens' SitesUpdate' Bool
sitPrettyPrint
  = lens _sitPrettyPrint
      (\ s a -> s{_sitPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sitUserIp :: Lens' SitesUpdate' (Maybe Text)
sitUserIp
  = lens _sitUserIp (\ s a -> s{_sitUserIp = a})

-- | User profile ID associated with this request.
sitProfileId :: Lens' SitesUpdate' Int64
sitProfileId
  = lens _sitProfileId (\ s a -> s{_sitProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sitKey :: Lens' SitesUpdate' (Maybe Text)
sitKey = lens _sitKey (\ s a -> s{_sitKey = a})

-- | OAuth 2.0 token for the current user.
sitOauthToken :: Lens' SitesUpdate' (Maybe Text)
sitOauthToken
  = lens _sitOauthToken
      (\ s a -> s{_sitOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sitFields :: Lens' SitesUpdate' (Maybe Text)
sitFields
  = lens _sitFields (\ s a -> s{_sitFields = a})

-- | Data format for the response.
sitAlt :: Lens' SitesUpdate' Alt
sitAlt = lens _sitAlt (\ s a -> s{_sitAlt = a})

instance GoogleRequest SitesUpdate' where
        type Rs SitesUpdate' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesUpdate'{..}
          = go _sitQuotaUser (Just _sitPrettyPrint) _sitUserIp
              _sitProfileId
              _sitKey
              _sitOauthToken
              _sitFields
              (Just _sitAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitesUpdateResource)
                      r
                      u
