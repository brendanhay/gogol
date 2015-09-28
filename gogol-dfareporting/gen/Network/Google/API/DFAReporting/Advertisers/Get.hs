{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.get@.
module Network.Google.API.DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetAPI

    -- * Creating a Request
    , advertisersGet'
    , AdvertisersGet'

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaUserIp
    , aaProfileId
    , aaKey
    , aaId
    , aaOauthToken
    , aaFields
    , aaAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertisers.get which the
-- 'AdvertisersGet'' request conforms to.
type AdvertisersGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet'' smart constructor.
data AdvertisersGet' = AdvertisersGet'
    { _aaQuotaUser   :: !(Maybe Text)
    , _aaPrettyPrint :: !Bool
    , _aaUserIp      :: !(Maybe Text)
    , _aaProfileId   :: !Int64
    , _aaKey         :: !(Maybe Text)
    , _aaId          :: !Int64
    , _aaOauthToken  :: !(Maybe Text)
    , _aaFields      :: !(Maybe Text)
    , _aaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaUserIp'
--
-- * 'aaProfileId'
--
-- * 'aaKey'
--
-- * 'aaId'
--
-- * 'aaOauthToken'
--
-- * 'aaFields'
--
-- * 'aaAlt'
advertisersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertisersGet'
advertisersGet' pAaProfileId_ pAaId_ =
    AdvertisersGet'
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaUserIp = Nothing
    , _aaProfileId = pAaProfileId_
    , _aaKey = Nothing
    , _aaId = pAaId_
    , _aaOauthToken = Nothing
    , _aaFields = Nothing
    , _aaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AdvertisersGet' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AdvertisersGet' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AdvertisersGet' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | User profile ID associated with this request.
aaProfileId :: Lens' AdvertisersGet' Int64
aaProfileId
  = lens _aaProfileId (\ s a -> s{_aaProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AdvertisersGet' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | Advertiser ID.
aaId :: Lens' AdvertisersGet' Int64
aaId = lens _aaId (\ s a -> s{_aaId = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AdvertisersGet' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AdvertisersGet' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AdvertisersGet' Alt
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersGet'{..}
          = go _aaQuotaUser (Just _aaPrettyPrint) _aaUserIp
              _aaProfileId
              _aaKey
              _aaId
              _aaOauthToken
              _aaFields
              (Just _aaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdvertisersGetAPI)
                      r
                      u
