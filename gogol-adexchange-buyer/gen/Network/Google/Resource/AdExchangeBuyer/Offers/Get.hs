{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested offer.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersGet@.
module AdExchangeBuyer.Offers.Get
    (
    -- * REST Resource
      OffersGetAPI

    -- * Creating a Request
    , offersGet
    , OffersGet

    -- * Request Lenses
    , ogQuotaUser
    , ogPrettyPrint
    , ogUserIp
    , ogKey
    , ogOfferId
    , ogOauthToken
    , ogFields
    , ogAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersGet@ which the
-- 'OffersGet' request conforms to.
type OffersGetAPI =
     "offers" :>
       Capture "offerId" Int64 :> Get '[JSON] OfferDto

-- | Gets the requested offer.
--
-- /See:/ 'offersGet' smart constructor.
data OffersGet = OffersGet
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogUserIp      :: !(Maybe Text)
    , _ogKey         :: !(Maybe Text)
    , _ogOfferId     :: !Int64
    , _ogOauthToken  :: !(Maybe Text)
    , _ogFields      :: !(Maybe Text)
    , _ogAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIp'
--
-- * 'ogKey'
--
-- * 'ogOfferId'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
offersGet
    :: Int64 -- ^ 'offerId'
    -> OffersGet
offersGet pOgOfferId_ =
    OffersGet
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUserIp = Nothing
    , _ogKey = Nothing
    , _ogOfferId = pOgOfferId_
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OffersGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OffersGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIp :: Lens' OffersGet' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OffersGet' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

ogOfferId :: Lens' OffersGet' Int64
ogOfferId
  = lens _ogOfferId (\ s a -> s{_ogOfferId = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OffersGet' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OffersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OffersGet' Text
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OffersGet' where
        type Rs OffersGet' = OfferDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersGet{..}
          = go _ogQuotaUser _ogPrettyPrint _ogUserIp _ogKey
              _ogOfferId
              _ogOauthToken
              _ogFields
              _ogAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OffersGetAPI) r u
