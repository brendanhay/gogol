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
-- Module      : Network.Google.Resource.Books.PromoOffer.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of promo offers available to the user
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPromoOfferGet@.
module Network.Google.Resource.Books.PromoOffer.Get
    (
    -- * REST Resource
      PromoOfferGetResource

    -- * Creating a Request
    , promoOfferGet'
    , PromoOfferGet'

    -- * Request Lenses
    , pogQuotaUser
    , pogPrettyPrint
    , pogManufacturer
    , pogUserIP
    , pogSerial
    , pogDevice
    , pogKey
    , pogModel
    , pogProduct
    , pogOAuthToken
    , pogAndroidId
    , pogFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPromoOfferGet@ which the
-- 'PromoOfferGet'' request conforms to.
type PromoOfferGetResource =
     "promooffer" :>
       "get" :>
         QueryParam "manufacturer" Text :>
           QueryParam "serial" Text :>
             QueryParam "device" Text :>
               QueryParam "model" Text :>
                 QueryParam "product" Text :>
                   QueryParam "androidId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Offers

-- | Returns a list of promo offers available to the user
--
-- /See:/ 'promoOfferGet'' smart constructor.
data PromoOfferGet' = PromoOfferGet'
    { _pogQuotaUser    :: !(Maybe Text)
    , _pogPrettyPrint  :: !Bool
    , _pogManufacturer :: !(Maybe Text)
    , _pogUserIP       :: !(Maybe Text)
    , _pogSerial       :: !(Maybe Text)
    , _pogDevice       :: !(Maybe Text)
    , _pogKey          :: !(Maybe AuthKey)
    , _pogModel        :: !(Maybe Text)
    , _pogProduct      :: !(Maybe Text)
    , _pogOAuthToken   :: !(Maybe OAuthToken)
    , _pogAndroidId    :: !(Maybe Text)
    , _pogFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoOfferGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pogQuotaUser'
--
-- * 'pogPrettyPrint'
--
-- * 'pogManufacturer'
--
-- * 'pogUserIP'
--
-- * 'pogSerial'
--
-- * 'pogDevice'
--
-- * 'pogKey'
--
-- * 'pogModel'
--
-- * 'pogProduct'
--
-- * 'pogOAuthToken'
--
-- * 'pogAndroidId'
--
-- * 'pogFields'
promoOfferGet'
    :: PromoOfferGet'
promoOfferGet' =
    PromoOfferGet'
    { _pogQuotaUser = Nothing
    , _pogPrettyPrint = True
    , _pogManufacturer = Nothing
    , _pogUserIP = Nothing
    , _pogSerial = Nothing
    , _pogDevice = Nothing
    , _pogKey = Nothing
    , _pogModel = Nothing
    , _pogProduct = Nothing
    , _pogOAuthToken = Nothing
    , _pogAndroidId = Nothing
    , _pogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pogQuotaUser :: Lens' PromoOfferGet' (Maybe Text)
pogQuotaUser
  = lens _pogQuotaUser (\ s a -> s{_pogQuotaUser = a})

-- | Returns response with indentations and line breaks.
pogPrettyPrint :: Lens' PromoOfferGet' Bool
pogPrettyPrint
  = lens _pogPrettyPrint
      (\ s a -> s{_pogPrettyPrint = a})

-- | device manufacturer
pogManufacturer :: Lens' PromoOfferGet' (Maybe Text)
pogManufacturer
  = lens _pogManufacturer
      (\ s a -> s{_pogManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pogUserIP :: Lens' PromoOfferGet' (Maybe Text)
pogUserIP
  = lens _pogUserIP (\ s a -> s{_pogUserIP = a})

-- | device serial
pogSerial :: Lens' PromoOfferGet' (Maybe Text)
pogSerial
  = lens _pogSerial (\ s a -> s{_pogSerial = a})

-- | device device
pogDevice :: Lens' PromoOfferGet' (Maybe Text)
pogDevice
  = lens _pogDevice (\ s a -> s{_pogDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pogKey :: Lens' PromoOfferGet' (Maybe AuthKey)
pogKey = lens _pogKey (\ s a -> s{_pogKey = a})

-- | device model
pogModel :: Lens' PromoOfferGet' (Maybe Text)
pogModel = lens _pogModel (\ s a -> s{_pogModel = a})

-- | device product
pogProduct :: Lens' PromoOfferGet' (Maybe Text)
pogProduct
  = lens _pogProduct (\ s a -> s{_pogProduct = a})

-- | OAuth 2.0 token for the current user.
pogOAuthToken :: Lens' PromoOfferGet' (Maybe OAuthToken)
pogOAuthToken
  = lens _pogOAuthToken
      (\ s a -> s{_pogOAuthToken = a})

-- | device android_id
pogAndroidId :: Lens' PromoOfferGet' (Maybe Text)
pogAndroidId
  = lens _pogAndroidId (\ s a -> s{_pogAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
pogFields :: Lens' PromoOfferGet' (Maybe Text)
pogFields
  = lens _pogFields (\ s a -> s{_pogFields = a})

instance GoogleAuth PromoOfferGet' where
        authKey = pogKey . _Just
        authToken = pogOAuthToken . _Just

instance GoogleRequest PromoOfferGet' where
        type Rs PromoOfferGet' = Offers
        request = requestWithRoute defReq booksURL
        requestWithRoute r u PromoOfferGet'{..}
          = go _pogManufacturer _pogSerial _pogDevice _pogModel
              _pogProduct
              _pogAndroidId
              _pogQuotaUser
              (Just _pogPrettyPrint)
              _pogUserIP
              _pogFields
              _pogKey
              _pogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PromoOfferGetResource)
                      r
                      u
