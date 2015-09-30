{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Clientaccess.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientaccessUpdate@.
module AdExchangeBuyer.Clientaccess.Update
    (
    -- * REST Resource
      ClientaccessUpdateAPI

    -- * Creating a Request
    , clientaccessUpdate
    , ClientaccessUpdate

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIp
    , cuSponsorAccountId
    , cuKey
    , cuClientAccountId
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientaccessUpdate@ which the
-- 'ClientaccessUpdate' request conforms to.
type ClientaccessUpdateAPI =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           Put '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessUpdate' smart constructor.
data ClientaccessUpdate = ClientaccessUpdate
    { _cuQuotaUser        :: !(Maybe Text)
    , _cuPrettyPrint      :: !Bool
    , _cuUserIp           :: !(Maybe Text)
    , _cuSponsorAccountId :: !Int32
    , _cuKey              :: !(Maybe Text)
    , _cuClientAccountId  :: !Int64
    , _cuOauthToken       :: !(Maybe Text)
    , _cuFields           :: !(Maybe Text)
    , _cuAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuSponsorAccountId'
--
-- * 'cuKey'
--
-- * 'cuClientAccountId'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
clientaccessUpdate
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientaccessUpdate
clientaccessUpdate pCuSponsorAccountId_ pCuClientAccountId_ =
    ClientaccessUpdate
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuSponsorAccountId = pCuSponsorAccountId_
    , _cuKey = Nothing
    , _cuClientAccountId = pCuClientAccountId_
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ClientaccessUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ClientaccessUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' ClientaccessUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

cuSponsorAccountId :: Lens' ClientaccessUpdate' Int32
cuSponsorAccountId
  = lens _cuSponsorAccountId
      (\ s a -> s{_cuSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ClientaccessUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

cuClientAccountId :: Lens' ClientaccessUpdate' Int64
cuClientAccountId
  = lens _cuClientAccountId
      (\ s a -> s{_cuClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' ClientaccessUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ClientaccessUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' ClientaccessUpdate' Text
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest ClientaccessUpdate' where
        type Rs ClientaccessUpdate' =
             ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessUpdate{..}
          = go _cuQuotaUser _cuPrettyPrint _cuUserIp
              (Just _cuSponsorAccountId)
              _cuKey
              _cuClientAccountId
              _cuOauthToken
              _cuFields
              _cuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessUpdateAPI)
                      r
                      u
