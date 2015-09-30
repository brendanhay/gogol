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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Clientaccess.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientaccessGet@.
module Network.Google.Resource.AdExchangeBuyer.Clientaccess.Get
    (
    -- * REST Resource
      ClientaccessGetResource

    -- * Creating a Request
    , clientaccessGet'
    , ClientaccessGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgSponsorAccountId
    , cgKey
    , cgClientAccountId
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessGet@ which the
-- 'ClientaccessGet'' request conforms to.
type ClientaccessGetResource =
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
    { _cgQuotaUser        :: !(Maybe Text)
    , _cgPrettyPrint      :: !Bool
    , _cgUserIp           :: !(Maybe Text)
    , _cgSponsorAccountId :: !Int32
    , _cgKey              :: !(Maybe Text)
    , _cgClientAccountId  :: !Int64
    , _cgOauthToken       :: !(Maybe Text)
    , _cgFields           :: !(Maybe Text)
    , _cgAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgSponsorAccountId'
--
-- * 'cgKey'
--
-- * 'cgClientAccountId'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
clientaccessGet'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessGet'
clientaccessGet' pCgSponsorAccountId_ pCgClientAccountId_ =
    ClientaccessGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgSponsorAccountId = pCgSponsorAccountId_
    , _cgKey = Nothing
    , _cgClientAccountId = pCgClientAccountId_
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ClientaccessGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ClientaccessGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' ClientaccessGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

cgSponsorAccountId :: Lens' ClientaccessGet' Int32
cgSponsorAccountId
  = lens _cgSponsorAccountId
      (\ s a -> s{_cgSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ClientaccessGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

cgClientAccountId :: Lens' ClientaccessGet' Int64
cgClientAccountId
  = lens _cgClientAccountId
      (\ s a -> s{_cgClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' ClientaccessGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ClientaccessGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' ClientaccessGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest ClientaccessGet' where
        type Rs ClientaccessGet' = ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              (Just _cgSponsorAccountId)
              _cgKey
              _cgClientAccountId
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessGetResource)
                      r
                      u
