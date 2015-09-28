{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.update@.
module Network.Google.API.DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateAPI

    -- * Creating a Request
    , advertisersUpdate'
    , AdvertisersUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIp
    , auProfileId
    , auKey
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertisers.update which the
-- 'AdvertisersUpdate'' request conforms to.
type AdvertisersUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate'' smart constructor.
data AdvertisersUpdate' = AdvertisersUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auUserIp      :: !(Maybe Text)
    , _auProfileId   :: !Int64
    , _auKey         :: !(Maybe Text)
    , _auOauthToken  :: !(Maybe Text)
    , _auFields      :: !(Maybe Text)
    , _auAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIp'
--
-- * 'auProfileId'
--
-- * 'auKey'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
advertisersUpdate'
    :: Int64 -- ^ 'profileId'
    -> AdvertisersUpdate'
advertisersUpdate' pAuProfileId_ =
    AdvertisersUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIp = Nothing
    , _auProfileId = pAuProfileId_
    , _auKey = Nothing
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AdvertisersUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AdvertisersUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' AdvertisersUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | User profile ID associated with this request.
auProfileId :: Lens' AdvertisersUpdate' Int64
auProfileId
  = lens _auProfileId (\ s a -> s{_auProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AdvertisersUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AdvertisersUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AdvertisersUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AdvertisersUpdate' Alt
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AdvertisersUpdate' where
        type Rs AdvertisersUpdate' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersUpdate'{..}
          = go _auQuotaUser (Just _auPrettyPrint) _auUserIp
              _auProfileId
              _auKey
              _auOauthToken
              _auFields
              (Just _auAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersUpdateAPI)
                      r
                      u
