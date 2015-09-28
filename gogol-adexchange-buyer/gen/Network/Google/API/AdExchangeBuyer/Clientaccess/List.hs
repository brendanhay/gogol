{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Clientaccess.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.list@.
module Network.Google.API.AdExchangeBuyer.Clientaccess.List
    (
    -- * REST Resource
      ClientaccessListAPI

    -- * Creating a Request
    , clientaccessList'
    , ClientaccessList'

    -- * Request Lenses
    , cllQuotaUser
    , cllPrettyPrint
    , cllUserIp
    , cllKey
    , cllOauthToken
    , cllFields
    , cllAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.clientaccess.list which the
-- 'ClientaccessList'' request conforms to.
type ClientaccessListAPI =
     "clientAccess" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] ListClientAccessCapabilitiesResponse

--
-- /See:/ 'clientaccessList'' smart constructor.
data ClientaccessList' = ClientaccessList'
    { _cllQuotaUser   :: !(Maybe Text)
    , _cllPrettyPrint :: !Bool
    , _cllUserIp      :: !(Maybe Text)
    , _cllKey         :: !(Maybe Text)
    , _cllOauthToken  :: !(Maybe Text)
    , _cllFields      :: !(Maybe Text)
    , _cllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIp'
--
-- * 'cllKey'
--
-- * 'cllOauthToken'
--
-- * 'cllFields'
--
-- * 'cllAlt'
clientaccessList'
    :: ClientaccessList'
clientaccessList' =
    ClientaccessList'
    { _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllUserIp = Nothing
    , _cllKey = Nothing
    , _cllOauthToken = Nothing
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' ClientaccessList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' ClientaccessList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' ClientaccessList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' ClientaccessList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' ClientaccessList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' ClientaccessList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' ClientaccessList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest ClientaccessList' where
        type Rs ClientaccessList' =
             ListClientAccessCapabilitiesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessList'{..}
          = go _cllQuotaUser (Just _cllPrettyPrint) _cllUserIp
              _cllKey
              _cllOauthToken
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessListAPI)
                      r
                      u
