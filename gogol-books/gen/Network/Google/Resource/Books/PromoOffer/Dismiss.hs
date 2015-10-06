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
-- Module      : Network.Google.Resource.Books.PromoOffer.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPromoOfferDismiss@.
module Network.Google.Resource.Books.PromoOffer.Dismiss
    (
    -- * REST Resource
      PromoOfferDismissResource

    -- * Creating a Request
    , promoOfferDismiss'
    , PromoOfferDismiss'

    -- * Request Lenses
    , podQuotaUser
    , podPrettyPrint
    , podManufacturer
    , podUserIP
    , podSerial
    , podDevice
    , podKey
    , podModel
    , podOfferId
    , podProduct
    , podOAuthToken
    , podAndroidId
    , podFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPromoOfferDismiss@ which the
-- 'PromoOfferDismiss'' request conforms to.
type PromoOfferDismissResource =
     "promooffer" :>
       "dismiss" :>
         QueryParam "manufacturer" Text :>
           QueryParam "serial" Text :>
             QueryParam "device" Text :>
               QueryParam "model" Text :>
                 QueryParam "offerId" Text :>
                   QueryParam "product" Text :>
                     QueryParam "androidId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoOfferDismiss'' smart constructor.
data PromoOfferDismiss' = PromoOfferDismiss'
    { _podQuotaUser    :: !(Maybe Text)
    , _podPrettyPrint  :: !Bool
    , _podManufacturer :: !(Maybe Text)
    , _podUserIP       :: !(Maybe Text)
    , _podSerial       :: !(Maybe Text)
    , _podDevice       :: !(Maybe Text)
    , _podKey          :: !(Maybe AuthKey)
    , _podModel        :: !(Maybe Text)
    , _podOfferId      :: !(Maybe Text)
    , _podProduct      :: !(Maybe Text)
    , _podOAuthToken   :: !(Maybe OAuthToken)
    , _podAndroidId    :: !(Maybe Text)
    , _podFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoOfferDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'podQuotaUser'
--
-- * 'podPrettyPrint'
--
-- * 'podManufacturer'
--
-- * 'podUserIP'
--
-- * 'podSerial'
--
-- * 'podDevice'
--
-- * 'podKey'
--
-- * 'podModel'
--
-- * 'podOfferId'
--
-- * 'podProduct'
--
-- * 'podOAuthToken'
--
-- * 'podAndroidId'
--
-- * 'podFields'
promoOfferDismiss'
    :: PromoOfferDismiss'
promoOfferDismiss' =
    PromoOfferDismiss'
    { _podQuotaUser = Nothing
    , _podPrettyPrint = True
    , _podManufacturer = Nothing
    , _podUserIP = Nothing
    , _podSerial = Nothing
    , _podDevice = Nothing
    , _podKey = Nothing
    , _podModel = Nothing
    , _podOfferId = Nothing
    , _podProduct = Nothing
    , _podOAuthToken = Nothing
    , _podAndroidId = Nothing
    , _podFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
podQuotaUser :: Lens' PromoOfferDismiss' (Maybe Text)
podQuotaUser
  = lens _podQuotaUser (\ s a -> s{_podQuotaUser = a})

-- | Returns response with indentations and line breaks.
podPrettyPrint :: Lens' PromoOfferDismiss' Bool
podPrettyPrint
  = lens _podPrettyPrint
      (\ s a -> s{_podPrettyPrint = a})

-- | device manufacturer
podManufacturer :: Lens' PromoOfferDismiss' (Maybe Text)
podManufacturer
  = lens _podManufacturer
      (\ s a -> s{_podManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
podUserIP :: Lens' PromoOfferDismiss' (Maybe Text)
podUserIP
  = lens _podUserIP (\ s a -> s{_podUserIP = a})

-- | device serial
podSerial :: Lens' PromoOfferDismiss' (Maybe Text)
podSerial
  = lens _podSerial (\ s a -> s{_podSerial = a})

-- | device device
podDevice :: Lens' PromoOfferDismiss' (Maybe Text)
podDevice
  = lens _podDevice (\ s a -> s{_podDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
podKey :: Lens' PromoOfferDismiss' (Maybe AuthKey)
podKey = lens _podKey (\ s a -> s{_podKey = a})

-- | device model
podModel :: Lens' PromoOfferDismiss' (Maybe Text)
podModel = lens _podModel (\ s a -> s{_podModel = a})

-- | Offer to dimiss
podOfferId :: Lens' PromoOfferDismiss' (Maybe Text)
podOfferId
  = lens _podOfferId (\ s a -> s{_podOfferId = a})

-- | device product
podProduct :: Lens' PromoOfferDismiss' (Maybe Text)
podProduct
  = lens _podProduct (\ s a -> s{_podProduct = a})

-- | OAuth 2.0 token for the current user.
podOAuthToken :: Lens' PromoOfferDismiss' (Maybe OAuthToken)
podOAuthToken
  = lens _podOAuthToken
      (\ s a -> s{_podOAuthToken = a})

-- | device android_id
podAndroidId :: Lens' PromoOfferDismiss' (Maybe Text)
podAndroidId
  = lens _podAndroidId (\ s a -> s{_podAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
podFields :: Lens' PromoOfferDismiss' (Maybe Text)
podFields
  = lens _podFields (\ s a -> s{_podFields = a})

instance GoogleAuth PromoOfferDismiss' where
        _AuthKey = podKey . _Just
        _AuthToken = podOAuthToken . _Just

instance GoogleRequest PromoOfferDismiss' where
        type Rs PromoOfferDismiss' = ()
        request = requestWith booksRequest
        requestWith rq PromoOfferDismiss'{..}
          = go _podManufacturer _podSerial _podDevice _podModel
              _podOfferId
              _podProduct
              _podAndroidId
              _podQuotaUser
              (Just _podPrettyPrint)
              _podUserIP
              _podFields
              _podKey
              _podOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PromoOfferDismissResource)
                      rq
