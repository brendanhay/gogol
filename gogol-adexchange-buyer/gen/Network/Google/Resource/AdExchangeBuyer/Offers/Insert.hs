{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.AdExchangeBuyer.Offers.Insert
    (
    -- * REST Resource
      OffersInsertResource

    -- * Creating a Request
    , offersInsert'
    , OffersInsert'

    -- * Request Lenses
    , oiQuotaUser
    , oiPrettyPrint
    , oiUserIP
    , oiPayload
    , oiKey
    , oiOAuthToken
    , oiFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersInsert@ which the
-- 'OffersInsert'' request conforms to.
type OffersInsertResource =
     "offers" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] OfferDTO :> Post '[JSON] OfferDTO

-- | Creates or updates the requested offer.
--
-- /See:/ 'offersInsert'' smart constructor.
data OffersInsert' = OffersInsert'
    { _oiQuotaUser   :: !(Maybe Text)
    , _oiPrettyPrint :: !Bool
    , _oiUserIP      :: !(Maybe Text)
    , _oiPayload     :: !OfferDTO
    , _oiKey         :: !(Maybe Key)
    , _oiOAuthToken  :: !(Maybe OAuthToken)
    , _oiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiQuotaUser'
--
-- * 'oiPrettyPrint'
--
-- * 'oiUserIP'
--
-- * 'oiPayload'
--
-- * 'oiKey'
--
-- * 'oiOAuthToken'
--
-- * 'oiFields'
offersInsert'
    :: OfferDTO -- ^ 'payload'
    -> OffersInsert'
offersInsert' pOiPayload_ =
    OffersInsert'
    { _oiQuotaUser = Nothing
    , _oiPrettyPrint = True
    , _oiUserIP = Nothing
    , _oiPayload = pOiPayload_
    , _oiKey = Nothing
    , _oiOAuthToken = Nothing
    , _oiFields = Nothing
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
oiUserIP :: Lens' OffersInsert' (Maybe Text)
oiUserIP = lens _oiUserIP (\ s a -> s{_oiUserIP = a})

-- | Multipart request metadata.
oiPayload :: Lens' OffersInsert' OfferDTO
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oiKey :: Lens' OffersInsert' (Maybe Key)
oiKey = lens _oiKey (\ s a -> s{_oiKey = a})

-- | OAuth 2.0 token for the current user.
oiOAuthToken :: Lens' OffersInsert' (Maybe OAuthToken)
oiOAuthToken
  = lens _oiOAuthToken (\ s a -> s{_oiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
oiFields :: Lens' OffersInsert' (Maybe Text)
oiFields = lens _oiFields (\ s a -> s{_oiFields = a})

instance GoogleAuth OffersInsert' where
        authKey = oiKey . _Just
        authToken = oiOAuthToken . _Just

instance GoogleRequest OffersInsert' where
        type Rs OffersInsert' = OfferDTO
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersInsert'{..}
          = go _oiQuotaUser (Just _oiPrettyPrint) _oiUserIP
              _oiFields
              _oiKey
              _oiOAuthToken
              (Just AltJSON)
              _oiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OffersInsertResource)
                      r
                      u
