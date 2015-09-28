{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.get@.
module Network.Google.API.DFAReporting.Sites.Get
    (
    -- * REST Resource
      SitesGetAPI

    -- * Creating a Request
    , sitesGet'
    , SitesGet'

    -- * Request Lenses
    , sggQuotaUser
    , sggPrettyPrint
    , sggUserIp
    , sggProfileId
    , sggKey
    , sggId
    , sggOauthToken
    , sggFields
    , sggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.sites.get which the
-- 'SitesGet'' request conforms to.
type SitesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Site

-- | Gets one site by ID.
--
-- /See:/ 'sitesGet'' smart constructor.
data SitesGet' = SitesGet'
    { _sggQuotaUser   :: !(Maybe Text)
    , _sggPrettyPrint :: !Bool
    , _sggUserIp      :: !(Maybe Text)
    , _sggProfileId   :: !Int64
    , _sggKey         :: !(Maybe Text)
    , _sggId          :: !Int64
    , _sggOauthToken  :: !(Maybe Text)
    , _sggFields      :: !(Maybe Text)
    , _sggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggQuotaUser'
--
-- * 'sggPrettyPrint'
--
-- * 'sggUserIp'
--
-- * 'sggProfileId'
--
-- * 'sggKey'
--
-- * 'sggId'
--
-- * 'sggOauthToken'
--
-- * 'sggFields'
--
-- * 'sggAlt'
sitesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SitesGet'
sitesGet' pSggProfileId_ pSggId_ =
    SitesGet'
    { _sggQuotaUser = Nothing
    , _sggPrettyPrint = True
    , _sggUserIp = Nothing
    , _sggProfileId = pSggProfileId_
    , _sggKey = Nothing
    , _sggId = pSggId_
    , _sggOauthToken = Nothing
    , _sggFields = Nothing
    , _sggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sggQuotaUser :: Lens' SitesGet' (Maybe Text)
sggQuotaUser
  = lens _sggQuotaUser (\ s a -> s{_sggQuotaUser = a})

-- | Returns response with indentations and line breaks.
sggPrettyPrint :: Lens' SitesGet' Bool
sggPrettyPrint
  = lens _sggPrettyPrint
      (\ s a -> s{_sggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sggUserIp :: Lens' SitesGet' (Maybe Text)
sggUserIp
  = lens _sggUserIp (\ s a -> s{_sggUserIp = a})

-- | User profile ID associated with this request.
sggProfileId :: Lens' SitesGet' Int64
sggProfileId
  = lens _sggProfileId (\ s a -> s{_sggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sggKey :: Lens' SitesGet' (Maybe Text)
sggKey = lens _sggKey (\ s a -> s{_sggKey = a})

-- | Site ID.
sggId :: Lens' SitesGet' Int64
sggId = lens _sggId (\ s a -> s{_sggId = a})

-- | OAuth 2.0 token for the current user.
sggOauthToken :: Lens' SitesGet' (Maybe Text)
sggOauthToken
  = lens _sggOauthToken
      (\ s a -> s{_sggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sggFields :: Lens' SitesGet' (Maybe Text)
sggFields
  = lens _sggFields (\ s a -> s{_sggFields = a})

-- | Data format for the response.
sggAlt :: Lens' SitesGet' Alt
sggAlt = lens _sggAlt (\ s a -> s{_sggAlt = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = Site
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SitesGet'{..}
          = go _sggQuotaUser (Just _sggPrettyPrint) _sggUserIp
              _sggProfileId
              _sggKey
              _sggId
              _sggOauthToken
              _sggFields
              (Just _sggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesGetAPI) r u
