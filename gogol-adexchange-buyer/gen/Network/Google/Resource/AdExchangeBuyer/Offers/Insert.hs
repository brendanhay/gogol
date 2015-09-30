{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates the requested offer.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersInsert@.
module AdExchangeBuyer.Offers.Insert
    (
    -- * REST Resource
      OffersInsertAPI

    -- * Creating a Request
    , offersInsert
    , OffersInsert

    -- * Request Lenses
    , oiQuotaUser
    , oiPrettyPrint
    , oiUserIp
    , oiKey
    , oiOauthToken
    , oiFields
    , oiAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersInsert@ which the
-- 'OffersInsert' request conforms to.
type OffersInsertAPI =
     "offers" :> Post '[JSON] OfferDto

-- | Creates or updates the requested offer.
--
-- /See:/ 'offersInsert' smart constructor.
data OffersInsert = OffersInsert
    { _oiQuotaUser   :: !(Maybe Text)
    , _oiPrettyPrint :: !Bool
    , _oiUserIp      :: !(Maybe Text)
    , _oiKey         :: !(Maybe Text)
    , _oiOauthToken  :: !(Maybe Text)
    , _oiFields      :: !(Maybe Text)
    , _oiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiQuotaUser'
--
-- * 'oiPrettyPrint'
--
-- * 'oiUserIp'
--
-- * 'oiKey'
--
-- * 'oiOauthToken'
--
-- * 'oiFields'
--
-- * 'oiAlt'
offersInsert
    :: OffersInsert
offersInsert =
    OffersInsert
    { _oiQuotaUser = Nothing
    , _oiPrettyPrint = True
    , _oiUserIp = Nothing
    , _oiKey = Nothing
    , _oiOauthToken = Nothing
    , _oiFields = Nothing
    , _oiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oiQuotaUser :: Lens' OffersInsert' (Maybe Text)
oiQuotaUser
  = lens _oiQuotaUser (\ s a -> s{_oiQuotaUser = a})

-- | Returns response with indentations and line breaks.
oiPrettyPrint :: Lens' OffersInsert' Bool
oiPrettyPrint
  = lens _oiPrettyPrint
      (\ s a -> s{_oiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oiUserIp :: Lens' OffersInsert' (Maybe Text)
oiUserIp = lens _oiUserIp (\ s a -> s{_oiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' OffersInsert' (Maybe Text)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | OAuth 2.0 token for the current user.
oiOauthToken :: Lens' OffersInsert' (Maybe Text)
oiOauthToken
  = lens _oiOauthToken (\ s a -> s{_oiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oiFields :: Lens' OffersInsert' (Maybe Text)
oiFields = lens _oiFields (\ s a -> s{_oiFields = a})

-- | Data format for the response.
oiAlt :: Lens' OffersInsert' Text
oiAlt = lens _oiAlt (\ s a -> s{_oiAlt = a})

instance GoogleRequest OffersInsert' where
        type Rs OffersInsert' = OfferDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersInsert{..}
          = go _oiQuotaUser _oiPrettyPrint _oiUserIp _oiKey
              _oiOauthToken
              _oiFields
              _oiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OffersInsertAPI) r
                      u
