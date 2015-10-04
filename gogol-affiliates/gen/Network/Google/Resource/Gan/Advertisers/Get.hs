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
-- Module      : Network.Google.Resource.Gan.Advertisers.Get
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
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanAdvertisersGet@.
module Network.Google.Resource.Gan.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet'
    , AdvertisersGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIP
    , agAdvertiserId
    , agRoleId
    , agRole
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanAdvertisersGet@ which the
-- 'AdvertisersGet'' request conforms to.
type AdvertisersGetResource =
     Capture "role" GanAdvertisersGetRole :>
       Capture "roleId" Text :>
         "advertiser" :>
           QueryParam "advertiserId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Advertiser

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only publishers can lookup
-- advertisers. Advertisers can request information about themselves by
-- omitting the advertiserId query parameter.
--
-- /See:/ 'advertisersGet'' smart constructor.
data AdvertisersGet' = AdvertisersGet'
    { _agQuotaUser    :: !(Maybe Text)
    , _agPrettyPrint  :: !Bool
    , _agUserIP       :: !(Maybe Text)
    , _agAdvertiserId :: !(Maybe Text)
    , _agRoleId       :: !Text
    , _agRole         :: !GanAdvertisersGetRole
    , _agKey          :: !(Maybe Key)
    , _agOAuthToken   :: !(Maybe OAuthToken)
    , _agFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agAdvertiserId'
--
-- * 'agRoleId'
--
-- * 'agRole'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
advertisersGet'
    :: Text -- ^ 'roleId'
    -> GanAdvertisersGetRole -- ^ 'role'
    -> AdvertisersGet'
advertisersGet' pAgRoleId_ pAgRole_ =
    AdvertisersGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agAdvertiserId = Nothing
    , _agRoleId = pAgRoleId_
    , _agRole = pAgRole_
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
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
agUserIP :: Lens' AdvertisersGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

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
agRole :: Lens' AdvertisersGet' GanAdvertisersGetRole
agRole = lens _agRole (\ s a -> s{_agRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AdvertisersGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AdvertisersGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AdvertisersGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AdvertisersGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u AdvertisersGet'{..}
          = go _agRole _agRoleId _agAdvertiserId _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersGetResource)
                      r
                      u
