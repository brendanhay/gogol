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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all offers the authenticated user has access to.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersList@.
module Network.Google.Resource.AdExchangeBuyer.Offers.List
    (
    -- * REST Resource
      OffersListResource

    -- * Creating a Request
    , offersList'
    , OffersList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olUserIP
    , olKey
    , olListOffersRequest
    , olOAuthToken
    , olFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersList@ which the
-- 'OffersList'' request conforms to.
type OffersListResource =
     "offers" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ListOffersRequest :>
                       Get '[JSON] ListOffersResponse

-- | Lists all offers the authenticated user has access to.
--
-- /See:/ 'offersList'' smart constructor.
data OffersList' = OffersList'
    { _olQuotaUser         :: !(Maybe Text)
    , _olPrettyPrint       :: !Bool
    , _olUserIP            :: !(Maybe Text)
    , _olKey               :: !(Maybe Key)
    , _olListOffersRequest :: !ListOffersRequest
    , _olOAuthToken        :: !(Maybe OAuthToken)
    , _olFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUserIP'
--
-- * 'olKey'
--
-- * 'olListOffersRequest'
--
-- * 'olOAuthToken'
--
-- * 'olFields'
offersList'
    :: ListOffersRequest -- ^ 'ListOffersRequest'
    -> OffersList'
offersList' pOlListOffersRequest_ =
    OffersList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUserIP = Nothing
    , _olKey = Nothing
    , _olListOffersRequest = pOlListOffersRequest_
    , _olOAuthToken = Nothing
    , _olFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OffersList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OffersList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIP :: Lens' OffersList' (Maybe Text)
olUserIP = lens _olUserIP (\ s a -> s{_olUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OffersList' (Maybe Key)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Multipart request metadata.
olListOffersRequest :: Lens' OffersList' ListOffersRequest
olListOffersRequest
  = lens _olListOffersRequest
      (\ s a -> s{_olListOffersRequest = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' OffersList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OffersList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

instance GoogleAuth OffersList' where
        authKey = olKey . _Just
        authToken = olOAuthToken . _Just

instance GoogleRequest OffersList' where
        type Rs OffersList' = ListOffersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olUserIP
              _olKey
              _olOAuthToken
              _olFields
              (Just AltJSON)
              _olListOffersRequest
          where go
                  = clientWithRoute (Proxy :: Proxy OffersListResource)
                      r
                      u
