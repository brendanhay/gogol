{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdExchangeBuyer.Clientaccess.Get
    (
    -- * REST Resource
      ClientaccessGetAPI

    -- * Creating a Request
    , clientaccessGet
    , ClientaccessGet

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIp
    , cggSponsorAccountId
    , cggKey
    , cggClientAccountId
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessGet@ which the
-- 'ClientaccessGet' request conforms to.
type ClientaccessGetAPI =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           Get '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessGet' smart constructor.
data ClientaccessGet = ClientaccessGet
    { _cggQuotaUser        :: !(Maybe Text)
    , _cggPrettyPrint      :: !Bool
    , _cggUserIp           :: !(Maybe Text)
    , _cggSponsorAccountId :: !Int32
    , _cggKey              :: !(Maybe Text)
    , _cggClientAccountId  :: !Int64
    , _cggOauthToken       :: !(Maybe Text)
    , _cggFields           :: !(Maybe Text)
    , _cggAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIp'
--
-- * 'cggSponsorAccountId'
--
-- * 'cggKey'
--
-- * 'cggClientAccountId'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
clientaccessGet
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessGet
clientaccessGet pCggSponsorAccountId_ pCggClientAccountId_ =
    ClientaccessGet
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIp = Nothing
    , _cggSponsorAccountId = pCggSponsorAccountId_
    , _cggKey = Nothing
    , _cggClientAccountId = pCggClientAccountId_
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' ClientaccessGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' ClientaccessGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' ClientaccessGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

cggSponsorAccountId :: Lens' ClientaccessGet' Int32
cggSponsorAccountId
  = lens _cggSponsorAccountId
      (\ s a -> s{_cggSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' ClientaccessGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

cggClientAccountId :: Lens' ClientaccessGet' Int64
cggClientAccountId
  = lens _cggClientAccountId
      (\ s a -> s{_cggClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' ClientaccessGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' ClientaccessGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' ClientaccessGet' Text
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest ClientaccessGet' where
        type Rs ClientaccessGet' = ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessGet{..}
          = go _cggQuotaUser _cggPrettyPrint _cggUserIp
              (Just _cggSponsorAccountId)
              _cggKey
              _cggClientAccountId
              _cggOauthToken
              _cggFields
              _cggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ClientaccessGetAPI)
                      r
                      u
