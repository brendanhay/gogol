{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Clientaccess.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.get@.
module Network.Google.API.AdExchangeBuyer.Clientaccess.Get
    (
    -- * REST Resource
      ClientaccessGetAPI

    -- * Creating a Request
    , clientaccessGet'
    , ClientaccessGet'

    -- * Request Lenses
    , cliQuotaUser
    , cliPrettyPrint
    , cliUserIp
    , cliSponsorAccountId
    , cliKey
    , cliClientAccountId
    , cliOauthToken
    , cliFields
    , cliAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.clientaccess.get which the
-- 'ClientaccessGet'' request conforms to.
type ClientaccessGetAPI =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "sponsorAccountId" Int32 :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessGet'' smart constructor.
data ClientaccessGet' = ClientaccessGet'
    { _cliQuotaUser        :: !(Maybe Text)
    , _cliPrettyPrint      :: !Bool
    , _cliUserIp           :: !(Maybe Text)
    , _cliSponsorAccountId :: !Int32
    , _cliKey              :: !(Maybe Text)
    , _cliClientAccountId  :: !Int64
    , _cliOauthToken       :: !(Maybe Text)
    , _cliFields           :: !(Maybe Text)
    , _cliAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliQuotaUser'
--
-- * 'cliPrettyPrint'
--
-- * 'cliUserIp'
--
-- * 'cliSponsorAccountId'
--
-- * 'cliKey'
--
-- * 'cliClientAccountId'
--
-- * 'cliOauthToken'
--
-- * 'cliFields'
--
-- * 'cliAlt'
clientaccessGet'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessGet'
clientaccessGet' pCliSponsorAccountId_ pCliClientAccountId_ =
    ClientaccessGet'
    { _cliQuotaUser = Nothing
    , _cliPrettyPrint = True
    , _cliUserIp = Nothing
    , _cliSponsorAccountId = pCliSponsorAccountId_
    , _cliKey = Nothing
    , _cliClientAccountId = pCliClientAccountId_
    , _cliOauthToken = Nothing
    , _cliFields = Nothing
    , _cliAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cliQuotaUser :: Lens' ClientaccessGet' (Maybe Text)
cliQuotaUser
  = lens _cliQuotaUser (\ s a -> s{_cliQuotaUser = a})

-- | Returns response with indentations and line breaks.
cliPrettyPrint :: Lens' ClientaccessGet' Bool
cliPrettyPrint
  = lens _cliPrettyPrint
      (\ s a -> s{_cliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cliUserIp :: Lens' ClientaccessGet' (Maybe Text)
cliUserIp
  = lens _cliUserIp (\ s a -> s{_cliUserIp = a})

cliSponsorAccountId :: Lens' ClientaccessGet' Int32
cliSponsorAccountId
  = lens _cliSponsorAccountId
      (\ s a -> s{_cliSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cliKey :: Lens' ClientaccessGet' (Maybe Text)
cliKey = lens _cliKey (\ s a -> s{_cliKey = a})

cliClientAccountId :: Lens' ClientaccessGet' Int64
cliClientAccountId
  = lens _cliClientAccountId
      (\ s a -> s{_cliClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cliOauthToken :: Lens' ClientaccessGet' (Maybe Text)
cliOauthToken
  = lens _cliOauthToken
      (\ s a -> s{_cliOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cliFields :: Lens' ClientaccessGet' (Maybe Text)
cliFields
  = lens _cliFields (\ s a -> s{_cliFields = a})

-- | Data format for the response.
cliAlt :: Lens' ClientaccessGet' Alt
cliAlt = lens _cliAlt (\ s a -> s{_cliAlt = a})

instance GoogleRequest ClientaccessGet' where
        type Rs ClientaccessGet' = ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessGet'{..}
          = go _cliQuotaUser (Just _cliPrettyPrint) _cliUserIp
              (Just _cliSponsorAccountId)
              _cliKey
              _cliClientAccountId
              _cliOauthToken
              _cliFields
              (Just _cliAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ClientaccessGetAPI)
                      r
                      u
