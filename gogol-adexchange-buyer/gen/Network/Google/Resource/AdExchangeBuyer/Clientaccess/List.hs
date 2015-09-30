{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Clientaccess.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientaccessList@.
module AdExchangeBuyer.Clientaccess.List
    (
    -- * REST Resource
      ClientaccessListAPI

    -- * Creating a Request
    , clientaccessList
    , ClientaccessList

    -- * Request Lenses
    , cliQuotaUser
    , cliPrettyPrint
    , cliUserIp
    , cliKey
    , cliOauthToken
    , cliFields
    , cliAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessList@ which the
-- 'ClientaccessList' request conforms to.
type ClientaccessListAPI =
     "clientAccess" :>
       Get '[JSON] ListClientAccessCapabilitiesResponse

--
-- /See:/ 'clientaccessList' smart constructor.
data ClientaccessList = ClientaccessList
    { _cliQuotaUser   :: !(Maybe Text)
    , _cliPrettyPrint :: !Bool
    , _cliUserIp      :: !(Maybe Text)
    , _cliKey         :: !(Maybe Text)
    , _cliOauthToken  :: !(Maybe Text)
    , _cliFields      :: !(Maybe Text)
    , _cliAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliQuotaUser'
--
-- * 'cliPrettyPrint'
--
-- * 'cliUserIp'
--
-- * 'cliKey'
--
-- * 'cliOauthToken'
--
-- * 'cliFields'
--
-- * 'cliAlt'
clientaccessList
    :: ClientaccessList
clientaccessList =
    ClientaccessList
    { _cliQuotaUser = Nothing
    , _cliPrettyPrint = True
    , _cliUserIp = Nothing
    , _cliKey = Nothing
    , _cliOauthToken = Nothing
    , _cliFields = Nothing
    , _cliAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cliQuotaUser :: Lens' ClientaccessList' (Maybe Text)
cliQuotaUser
  = lens _cliQuotaUser (\ s a -> s{_cliQuotaUser = a})

-- | Returns response with indentations and line breaks.
cliPrettyPrint :: Lens' ClientaccessList' Bool
cliPrettyPrint
  = lens _cliPrettyPrint
      (\ s a -> s{_cliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cliUserIp :: Lens' ClientaccessList' (Maybe Text)
cliUserIp
  = lens _cliUserIp (\ s a -> s{_cliUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cliKey :: Lens' ClientaccessList' (Maybe Text)
cliKey = lens _cliKey (\ s a -> s{_cliKey = a})

-- | OAuth 2.0 token for the current user.
cliOauthToken :: Lens' ClientaccessList' (Maybe Text)
cliOauthToken
  = lens _cliOauthToken
      (\ s a -> s{_cliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cliFields :: Lens' ClientaccessList' (Maybe Text)
cliFields
  = lens _cliFields (\ s a -> s{_cliFields = a})

-- | Data format for the response.
cliAlt :: Lens' ClientaccessList' Text
cliAlt = lens _cliAlt (\ s a -> s{_cliAlt = a})

instance GoogleRequest ClientaccessList' where
        type Rs ClientaccessList' =
             ListClientAccessCapabilitiesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessList{..}
          = go _cliQuotaUser _cliPrettyPrint _cliUserIp _cliKey
              _cliOauthToken
              _cliFields
              _cliAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessListAPI)
                      r
                      u
