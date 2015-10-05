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
-- Module      : Network.Google.Resource.Books.PromoOffer.Accept
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPromoOfferAccept@.
module Network.Google.Resource.Books.PromoOffer.Accept
    (
    -- * REST Resource
      PromoOfferAcceptResource

    -- * Creating a Request
    , promoOfferAccept'
    , PromoOfferAccept'

    -- * Request Lenses
    , poaQuotaUser
    , poaPrettyPrint
    , poaManufacturer
    , poaUserIP
    , poaSerial
    , poaDevice
    , poaKey
    , poaModel
    , poaVolumeId
    , poaOfferId
    , poaProduct
    , poaOAuthToken
    , poaAndroidId
    , poaFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPromoOfferAccept@ which the
-- 'PromoOfferAccept'' request conforms to.
type PromoOfferAcceptResource =
     "promooffer" :>
       "accept" :>
         QueryParam "manufacturer" Text :>
           QueryParam "serial" Text :>
             QueryParam "device" Text :>
               QueryParam "model" Text :>
                 QueryParam "volumeId" Text :>
                   QueryParam "offerId" Text :>
                     QueryParam "product" Text :>
                       QueryParam "androidId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoOfferAccept'' smart constructor.
data PromoOfferAccept' = PromoOfferAccept'
    { _poaQuotaUser    :: !(Maybe Text)
    , _poaPrettyPrint  :: !Bool
    , _poaManufacturer :: !(Maybe Text)
    , _poaUserIP       :: !(Maybe Text)
    , _poaSerial       :: !(Maybe Text)
    , _poaDevice       :: !(Maybe Text)
    , _poaKey          :: !(Maybe Key)
    , _poaModel        :: !(Maybe Text)
    , _poaVolumeId     :: !(Maybe Text)
    , _poaOfferId      :: !(Maybe Text)
    , _poaProduct      :: !(Maybe Text)
    , _poaOAuthToken   :: !(Maybe OAuthToken)
    , _poaAndroidId    :: !(Maybe Text)
    , _poaFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoOfferAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poaQuotaUser'
--
-- * 'poaPrettyPrint'
--
-- * 'poaManufacturer'
--
-- * 'poaUserIP'
--
-- * 'poaSerial'
--
-- * 'poaDevice'
--
-- * 'poaKey'
--
-- * 'poaModel'
--
-- * 'poaVolumeId'
--
-- * 'poaOfferId'
--
-- * 'poaProduct'
--
-- * 'poaOAuthToken'
--
-- * 'poaAndroidId'
--
-- * 'poaFields'
promoOfferAccept'
    :: PromoOfferAccept'
promoOfferAccept' =
    PromoOfferAccept'
    { _poaQuotaUser = Nothing
    , _poaPrettyPrint = True
    , _poaManufacturer = Nothing
    , _poaUserIP = Nothing
    , _poaSerial = Nothing
    , _poaDevice = Nothing
    , _poaKey = Nothing
    , _poaModel = Nothing
    , _poaVolumeId = Nothing
    , _poaOfferId = Nothing
    , _poaProduct = Nothing
    , _poaOAuthToken = Nothing
    , _poaAndroidId = Nothing
    , _poaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
poaQuotaUser :: Lens' PromoOfferAccept' (Maybe Text)
poaQuotaUser
  = lens _poaQuotaUser (\ s a -> s{_poaQuotaUser = a})

-- | Returns response with indentations and line breaks.
poaPrettyPrint :: Lens' PromoOfferAccept' Bool
poaPrettyPrint
  = lens _poaPrettyPrint
      (\ s a -> s{_poaPrettyPrint = a})

-- | device manufacturer
poaManufacturer :: Lens' PromoOfferAccept' (Maybe Text)
poaManufacturer
  = lens _poaManufacturer
      (\ s a -> s{_poaManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
poaUserIP :: Lens' PromoOfferAccept' (Maybe Text)
poaUserIP
  = lens _poaUserIP (\ s a -> s{_poaUserIP = a})

-- | device serial
poaSerial :: Lens' PromoOfferAccept' (Maybe Text)
poaSerial
  = lens _poaSerial (\ s a -> s{_poaSerial = a})

-- | device device
poaDevice :: Lens' PromoOfferAccept' (Maybe Text)
poaDevice
  = lens _poaDevice (\ s a -> s{_poaDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
poaKey :: Lens' PromoOfferAccept' (Maybe Key)
poaKey = lens _poaKey (\ s a -> s{_poaKey = a})

-- | device model
poaModel :: Lens' PromoOfferAccept' (Maybe Text)
poaModel = lens _poaModel (\ s a -> s{_poaModel = a})

-- | Volume id to exercise the offer
poaVolumeId :: Lens' PromoOfferAccept' (Maybe Text)
poaVolumeId
  = lens _poaVolumeId (\ s a -> s{_poaVolumeId = a})

poaOfferId :: Lens' PromoOfferAccept' (Maybe Text)
poaOfferId
  = lens _poaOfferId (\ s a -> s{_poaOfferId = a})

-- | device product
poaProduct :: Lens' PromoOfferAccept' (Maybe Text)
poaProduct
  = lens _poaProduct (\ s a -> s{_poaProduct = a})

-- | OAuth 2.0 token for the current user.
poaOAuthToken :: Lens' PromoOfferAccept' (Maybe OAuthToken)
poaOAuthToken
  = lens _poaOAuthToken
      (\ s a -> s{_poaOAuthToken = a})

-- | device android_id
poaAndroidId :: Lens' PromoOfferAccept' (Maybe Text)
poaAndroidId
  = lens _poaAndroidId (\ s a -> s{_poaAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
poaFields :: Lens' PromoOfferAccept' (Maybe Text)
poaFields
  = lens _poaFields (\ s a -> s{_poaFields = a})

instance GoogleAuth PromoOfferAccept' where
        authKey = poaKey . _Just
        authToken = poaOAuthToken . _Just

instance GoogleRequest PromoOfferAccept' where
        type Rs PromoOfferAccept' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u PromoOfferAccept'{..}
          = go _poaManufacturer _poaSerial _poaDevice _poaModel
              _poaVolumeId
              _poaOfferId
              _poaProduct
              _poaAndroidId
              _poaQuotaUser
              (Just _poaPrettyPrint)
              _poaUserIP
              _poaFields
              _poaKey
              _poaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PromoOfferAcceptResource)
                      r
                      u
