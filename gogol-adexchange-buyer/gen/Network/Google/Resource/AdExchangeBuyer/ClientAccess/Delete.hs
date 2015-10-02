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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessDelete@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
    (
    -- * REST Resource
      ClientAccessDeleteResource

    -- * Creating a Request
    , clientAccessDelete'
    , ClientAccessDelete'

    -- * Request Lenses
    , cadQuotaUser
    , cadPrettyPrint
    , cadUserIP
    , cadSponsorAccountId
    , cadKey
    , cadClientAccountId
    , cadOAuthToken
    , cadFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessDelete@ which the
-- 'ClientAccessDelete'' request conforms to.
type ClientAccessDeleteResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

--
-- /See:/ 'clientAccessDelete'' smart constructor.
data ClientAccessDelete' = ClientAccessDelete'
    { _cadQuotaUser        :: !(Maybe Text)
    , _cadPrettyPrint      :: !Bool
    , _cadUserIP           :: !(Maybe Text)
    , _cadSponsorAccountId :: !Int32
    , _cadKey              :: !(Maybe Key)
    , _cadClientAccountId  :: !Int64
    , _cadOAuthToken       :: !(Maybe OAuthToken)
    , _cadFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadQuotaUser'
--
-- * 'cadPrettyPrint'
--
-- * 'cadUserIP'
--
-- * 'cadSponsorAccountId'
--
-- * 'cadKey'
--
-- * 'cadClientAccountId'
--
-- * 'cadOAuthToken'
--
-- * 'cadFields'
clientAccessDelete'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessDelete'
clientAccessDelete' pCadSponsorAccountId_ pCadClientAccountId_ =
    ClientAccessDelete'
    { _cadQuotaUser = Nothing
    , _cadPrettyPrint = True
    , _cadUserIP = Nothing
    , _cadSponsorAccountId = pCadSponsorAccountId_
    , _cadKey = Nothing
    , _cadClientAccountId = pCadClientAccountId_
    , _cadOAuthToken = Nothing
    , _cadFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cadQuotaUser :: Lens' ClientAccessDelete' (Maybe Text)
cadQuotaUser
  = lens _cadQuotaUser (\ s a -> s{_cadQuotaUser = a})

-- | Returns response with indentations and line breaks.
cadPrettyPrint :: Lens' ClientAccessDelete' Bool
cadPrettyPrint
  = lens _cadPrettyPrint
      (\ s a -> s{_cadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cadUserIP :: Lens' ClientAccessDelete' (Maybe Text)
cadUserIP
  = lens _cadUserIP (\ s a -> s{_cadUserIP = a})

cadSponsorAccountId :: Lens' ClientAccessDelete' Int32
cadSponsorAccountId
  = lens _cadSponsorAccountId
      (\ s a -> s{_cadSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cadKey :: Lens' ClientAccessDelete' (Maybe Key)
cadKey = lens _cadKey (\ s a -> s{_cadKey = a})

cadClientAccountId :: Lens' ClientAccessDelete' Int64
cadClientAccountId
  = lens _cadClientAccountId
      (\ s a -> s{_cadClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cadOAuthToken :: Lens' ClientAccessDelete' (Maybe OAuthToken)
cadOAuthToken
  = lens _cadOAuthToken
      (\ s a -> s{_cadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cadFields :: Lens' ClientAccessDelete' (Maybe Text)
cadFields
  = lens _cadFields (\ s a -> s{_cadFields = a})

instance GoogleAuth ClientAccessDelete' where
        authKey = cadKey . _Just
        authToken = cadOAuthToken . _Just

instance GoogleRequest ClientAccessDelete' where
        type Rs ClientAccessDelete' = ()
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientAccessDelete'{..}
          = go _cadClientAccountId (Just _cadSponsorAccountId)
              _cadQuotaUser
              (Just _cadPrettyPrint)
              _cadUserIP
              _cadFields
              _cadKey
              _cadOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientAccessDeleteResource)
                      r
                      u
