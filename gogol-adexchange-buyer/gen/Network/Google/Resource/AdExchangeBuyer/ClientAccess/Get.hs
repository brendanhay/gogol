{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessGet@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
    (
    -- * REST Resource
      ClientAccessGetResource

    -- * Creating a Request
    , clientAccessGet'
    , ClientAccessGet'

    -- * Request Lenses
    , cagQuotaUser
    , cagPrettyPrint
    , cagUserIP
    , cagSponsorAccountId
    , cagKey
    , cagClientAccountId
    , cagOAuthToken
    , cagFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessGet@ method which the
-- 'ClientAccessGet'' request conforms to.
type ClientAccessGetResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessGet'' smart constructor.
data ClientAccessGet' = ClientAccessGet'
    { _cagQuotaUser        :: !(Maybe Text)
    , _cagPrettyPrint      :: !Bool
    , _cagUserIP           :: !(Maybe Text)
    , _cagSponsorAccountId :: !Int32
    , _cagKey              :: !(Maybe AuthKey)
    , _cagClientAccountId  :: !Int64
    , _cagOAuthToken       :: !(Maybe OAuthToken)
    , _cagFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cagQuotaUser'
--
-- * 'cagPrettyPrint'
--
-- * 'cagUserIP'
--
-- * 'cagSponsorAccountId'
--
-- * 'cagKey'
--
-- * 'cagClientAccountId'
--
-- * 'cagOAuthToken'
--
-- * 'cagFields'
clientAccessGet'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessGet'
clientAccessGet' pCagSponsorAccountId_ pCagClientAccountId_ =
    ClientAccessGet'
    { _cagQuotaUser = Nothing
    , _cagPrettyPrint = True
    , _cagUserIP = Nothing
    , _cagSponsorAccountId = pCagSponsorAccountId_
    , _cagKey = Nothing
    , _cagClientAccountId = pCagClientAccountId_
    , _cagOAuthToken = Nothing
    , _cagFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cagQuotaUser :: Lens' ClientAccessGet' (Maybe Text)
cagQuotaUser
  = lens _cagQuotaUser (\ s a -> s{_cagQuotaUser = a})

-- | Returns response with indentations and line breaks.
cagPrettyPrint :: Lens' ClientAccessGet' Bool
cagPrettyPrint
  = lens _cagPrettyPrint
      (\ s a -> s{_cagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cagUserIP :: Lens' ClientAccessGet' (Maybe Text)
cagUserIP
  = lens _cagUserIP (\ s a -> s{_cagUserIP = a})

cagSponsorAccountId :: Lens' ClientAccessGet' Int32
cagSponsorAccountId
  = lens _cagSponsorAccountId
      (\ s a -> s{_cagSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cagKey :: Lens' ClientAccessGet' (Maybe AuthKey)
cagKey = lens _cagKey (\ s a -> s{_cagKey = a})

cagClientAccountId :: Lens' ClientAccessGet' Int64
cagClientAccountId
  = lens _cagClientAccountId
      (\ s a -> s{_cagClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cagOAuthToken :: Lens' ClientAccessGet' (Maybe OAuthToken)
cagOAuthToken
  = lens _cagOAuthToken
      (\ s a -> s{_cagOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cagFields :: Lens' ClientAccessGet' (Maybe Text)
cagFields
  = lens _cagFields (\ s a -> s{_cagFields = a})

instance GoogleAuth ClientAccessGet' where
        _AuthKey = cagKey . _Just
        _AuthToken = cagOAuthToken . _Just

instance GoogleRequest ClientAccessGet' where
        type Rs ClientAccessGet' = ClientAccessCapabilities
        request = requestWith adExchangeBuyerRequest
        requestWith rq ClientAccessGet'{..}
          = go _cagClientAccountId (Just _cagSponsorAccountId)
              _cagQuotaUser
              (Just _cagPrettyPrint)
              _cagUserIP
              _cagFields
              _cagKey
              _cagOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ClientAccessGetResource)
                      rq
