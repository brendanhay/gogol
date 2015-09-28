{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gan.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.advertisers.get@.
module Network.Google.API.Gan.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetAPI

    -- * Creating a Request
    , advertisersGet'
    , AdvertisersGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agAdvertiserId
    , agRoleId
    , agRole
    , agKey
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for gan.advertisers.get which the
-- 'AdvertisersGet'' request conforms to.
type AdvertisersGetAPI =
     Capture "role" AdvertisersGet'Role :>
       Capture "roleId" Text :>
         "advertiser" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "advertiserId" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Advertiser

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
--
-- /See:/ 'advertisersGet'' smart constructor.
data AdvertisersGet' = AdvertisersGet'
    { _agQuotaUser    :: !(Maybe Text)
    , _agPrettyPrint  :: !Bool
    , _agUserIp       :: !(Maybe Text)
    , _agAdvertiserId :: !(Maybe Text)
    , _agRoleId       :: !Text
    , _agRole         :: !AdvertisersGet'Role
    , _agKey          :: !(Maybe Text)
    , _agOauthToken   :: !(Maybe Text)
    , _agFields       :: !(Maybe Text)
    , _agAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agAdvertiserId'
--
-- * 'agRoleId'
--
-- * 'agRole'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
advertisersGet'
    :: Text -- ^ 'roleId'
    -> AdvertisersGet'Role -- ^ 'role'
    -> AdvertisersGet'
advertisersGet' pAgRoleId_ pAgRole_ =
    AdvertisersGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agAdvertiserId = Nothing
    , _agRoleId = pAgRoleId_
    , _agRole = pAgRole_
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AdvertisersGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AdvertisersGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AdvertisersGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | The ID of the advertiser to look up. Optional.
agAdvertiserId :: Lens' AdvertisersGet' (Maybe Text)
agAdvertiserId
  = lens _agAdvertiserId
      (\ s a -> s{_agAdvertiserId = a})

-- | The ID of the requesting advertiser or publisher.
agRoleId :: Lens' AdvertisersGet' Text
agRoleId = lens _agRoleId (\ s a -> s{_agRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
agRole :: Lens' AdvertisersGet' AdvertisersGet'Role
agRole = lens _agRole (\ s a -> s{_agRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AdvertisersGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AdvertisersGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AdvertisersGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AdvertisersGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u AdvertisersGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIp
              _agAdvertiserId
              _agRoleId
              _agRole
              _agKey
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdvertisersGetAPI)
                      r
                      u
