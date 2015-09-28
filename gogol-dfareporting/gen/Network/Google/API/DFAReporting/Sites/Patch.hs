{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Sites.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.patch@.
module Network.Google.API.DFAReporting.Sites.Patch
    (
    -- * REST Resource
      SitesPatchAPI

    -- * Creating a Request
    , sitesPatch'
    , SitesPatch'

    -- * Request Lenses
    , sppQuotaUser
    , sppPrettyPrint
    , sppUserIp
    , sppProfileId
    , sppKey
    , sppId
    , sppOauthToken
    , sppFields
    , sppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.sites.patch which the
-- 'SitesPatch'' request conforms to.
type SitesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Site

-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ 'sitesPatch'' smart constructor.
data SitesPatch' = SitesPatch'
    { _sppQuotaUser   :: !(Maybe Text)
    , _sppPrettyPrint :: !Bool
    , _sppUserIp      :: !(Maybe Text)
    , _sppProfileId   :: !Int64
    , _sppKey         :: !(Maybe Text)
    , _sppId          :: !Int64
    , _sppOauthToken  :: !(Maybe Text)
    , _sppFields      :: !(Maybe Text)
    , _sppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sppQuotaUser'
--
-- * 'sppPrettyPrint'
--
-- * 'sppUserIp'
--
-- * 'sppProfileId'
--
-- * 'sppKey'
--
-- * 'sppId'
--
-- * 'sppOauthToken'
--
-- * 'sppFields'
--
-- * 'sppAlt'
sitesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesPatch'
sitesPatch' pSppProfileId_ pSppId_ =
    SitesPatch'
    { _sppQuotaUser = Nothing
    , _sppPrettyPrint = True
    , _sppUserIp = Nothing
    , _sppProfileId = pSppProfileId_
    , _sppKey = Nothing
    , _sppId = pSppId_
    , _sppOauthToken = Nothing
    , _sppFields = Nothing
    , _sppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sppQuotaUser :: Lens' SitesPatch' (Maybe Text)
sppQuotaUser
  = lens _sppQuotaUser (\ s a -> s{_sppQuotaUser = a})

-- | Returns response with indentations and line breaks.
sppPrettyPrint :: Lens' SitesPatch' Bool
sppPrettyPrint
  = lens _sppPrettyPrint
      (\ s a -> s{_sppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sppUserIp :: Lens' SitesPatch' (Maybe Text)
sppUserIp
  = lens _sppUserIp (\ s a -> s{_sppUserIp = a})

-- | User profile ID associated with this request.
sppProfileId :: Lens' SitesPatch' Int64
sppProfileId
  = lens _sppProfileId (\ s a -> s{_sppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sppKey :: Lens' SitesPatch' (Maybe Text)
sppKey = lens _sppKey (\ s a -> s{_sppKey = a})

-- | Site ID.
sppId :: Lens' SitesPatch' Int64
sppId = lens _sppId (\ s a -> s{_sppId = a})

-- | OAuth 2.0 token for the current user.
sppOauthToken :: Lens' SitesPatch' (Maybe Text)
sppOauthToken
  = lens _sppOauthToken
      (\ s a -> s{_sppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sppFields :: Lens' SitesPatch' (Maybe Text)
sppFields
  = lens _sppFields (\ s a -> s{_sppFields = a})

-- | Data format for the response.
sppAlt :: Lens' SitesPatch' Alt
sppAlt = lens _sppAlt (\ s a -> s{_sppAlt = a})

instance GoogleRequest SitesPatch' where
        type Rs SitesPatch' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesPatch'{..}
          = go _sppQuotaUser (Just _sppPrettyPrint) _sppUserIp
              _sppProfileId
              _sppKey
              (Just _sppId)
              _sppOauthToken
              _sppFields
              (Just _sppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesPatchAPI) r u
