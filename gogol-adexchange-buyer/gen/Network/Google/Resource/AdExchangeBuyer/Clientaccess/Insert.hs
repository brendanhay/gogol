{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Clientaccess.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientaccessInsert@.
module AdExchangeBuyer.Clientaccess.Insert
    (
    -- * REST Resource
      ClientaccessInsertAPI

    -- * Creating a Request
    , clientaccessInsert
    , ClientaccessInsert

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIp
    , cSponsorAccountId
    , cKey
    , cClientAccountId
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessInsert@ which the
-- 'ClientaccessInsert' request conforms to.
type ClientaccessInsertAPI =
     "clientAccess" :>
       QueryParam "sponsorAccountId" Int32 :>
         QueryParam "clientAccountId" Int64 :>
           Post '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessInsert' smart constructor.
data ClientaccessInsert = ClientaccessInsert
    { _cQuotaUser        :: !(Maybe Text)
    , _cPrettyPrint      :: !Bool
    , _cUserIp           :: !(Maybe Text)
    , _cSponsorAccountId :: !(Maybe Int32)
    , _cKey              :: !(Maybe Text)
    , _cClientAccountId  :: !(Maybe Int64)
    , _cOauthToken       :: !(Maybe Text)
    , _cFields           :: !(Maybe Text)
    , _cAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cSponsorAccountId'
--
-- * 'cKey'
--
-- * 'cClientAccountId'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
clientaccessInsert
    :: ClientaccessInsert
clientaccessInsert =
    ClientaccessInsert
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cSponsorAccountId = Nothing
    , _cKey = Nothing
    , _cClientAccountId = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ClientaccessInsert' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ClientaccessInsert' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' ClientaccessInsert' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

cSponsorAccountId :: Lens' ClientaccessInsert' (Maybe Int32)
cSponsorAccountId
  = lens _cSponsorAccountId
      (\ s a -> s{_cSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ClientaccessInsert' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

cClientAccountId :: Lens' ClientaccessInsert' (Maybe Int64)
cClientAccountId
  = lens _cClientAccountId
      (\ s a -> s{_cClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' ClientaccessInsert' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ClientaccessInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' ClientaccessInsert' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest ClientaccessInsert' where
        type Rs ClientaccessInsert' =
             ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessInsert{..}
          = go _cQuotaUser _cPrettyPrint _cUserIp
              _cSponsorAccountId
              _cKey
              _cClientAccountId
              _cOauthToken
              _cFields
              _cAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessInsertAPI)
                      r
                      u
