{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Promooffer.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.promooffer.dismiss@.
module Network.Google.API.Books.Promooffer.Dismiss
    (
    -- * REST Resource
      PromoofferDismissAPI

    -- * Creating a Request
    , promoofferDismiss'
    , PromoofferDismiss'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdManufacturer
    , pdUserIp
    , pdSerial
    , pdDevice
    , pdKey
    , pdModel
    , pdOfferId
    , pdProduct
    , pdOauthToken
    , pdAndroidId
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.promooffer.dismiss which the
-- 'PromoofferDismiss'' request conforms to.
type PromoofferDismissAPI =
     "promooffer" :>
       "dismiss" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "manufacturer" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "serial" Text :>
                   QueryParam "device" Text :>
                     QueryParam "key" Text :>
                       QueryParam "model" Text :>
                         QueryParam "offerId" Text :>
                           QueryParam "product" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "androidId" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoofferDismiss'' smart constructor.
data PromoofferDismiss' = PromoofferDismiss'
    { _pdQuotaUser    :: !(Maybe Text)
    , _pdPrettyPrint  :: !Bool
    , _pdManufacturer :: !(Maybe Text)
    , _pdUserIp       :: !(Maybe Text)
    , _pdSerial       :: !(Maybe Text)
    , _pdDevice       :: !(Maybe Text)
    , _pdKey          :: !(Maybe Text)
    , _pdModel        :: !(Maybe Text)
    , _pdOfferId      :: !(Maybe Text)
    , _pdProduct      :: !(Maybe Text)
    , _pdOauthToken   :: !(Maybe Text)
    , _pdAndroidId    :: !(Maybe Text)
    , _pdFields       :: !(Maybe Text)
    , _pdAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoofferDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdManufacturer'
--
-- * 'pdUserIp'
--
-- * 'pdSerial'
--
-- * 'pdDevice'
--
-- * 'pdKey'
--
-- * 'pdModel'
--
-- * 'pdOfferId'
--
-- * 'pdProduct'
--
-- * 'pdOauthToken'
--
-- * 'pdAndroidId'
--
-- * 'pdFields'
--
-- * 'pdAlt'
promoofferDismiss'
    :: PromoofferDismiss'
promoofferDismiss' =
    PromoofferDismiss'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdManufacturer = Nothing
    , _pdUserIp = Nothing
    , _pdSerial = Nothing
    , _pdDevice = Nothing
    , _pdKey = Nothing
    , _pdModel = Nothing
    , _pdOfferId = Nothing
    , _pdProduct = Nothing
    , _pdOauthToken = Nothing
    , _pdAndroidId = Nothing
    , _pdFields = Nothing
    , _pdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PromoofferDismiss' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PromoofferDismiss' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | device manufacturer
pdManufacturer :: Lens' PromoofferDismiss' (Maybe Text)
pdManufacturer
  = lens _pdManufacturer
      (\ s a -> s{_pdManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' PromoofferDismiss' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

-- | device serial
pdSerial :: Lens' PromoofferDismiss' (Maybe Text)
pdSerial = lens _pdSerial (\ s a -> s{_pdSerial = a})

-- | device device
pdDevice :: Lens' PromoofferDismiss' (Maybe Text)
pdDevice = lens _pdDevice (\ s a -> s{_pdDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PromoofferDismiss' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | device model
pdModel :: Lens' PromoofferDismiss' (Maybe Text)
pdModel = lens _pdModel (\ s a -> s{_pdModel = a})

-- | Offer to dimiss
pdOfferId :: Lens' PromoofferDismiss' (Maybe Text)
pdOfferId
  = lens _pdOfferId (\ s a -> s{_pdOfferId = a})

-- | device product
pdProduct :: Lens' PromoofferDismiss' (Maybe Text)
pdProduct
  = lens _pdProduct (\ s a -> s{_pdProduct = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' PromoofferDismiss' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | device android_id
pdAndroidId :: Lens' PromoofferDismiss' (Maybe Text)
pdAndroidId
  = lens _pdAndroidId (\ s a -> s{_pdAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PromoofferDismiss' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' PromoofferDismiss' Alt
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest PromoofferDismiss' where
        type Rs PromoofferDismiss' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u PromoofferDismiss'{..}
          = go _pdQuotaUser (Just _pdPrettyPrint)
              _pdManufacturer
              _pdUserIp
              _pdSerial
              _pdDevice
              _pdKey
              _pdModel
              _pdOfferId
              _pdProduct
              _pdOauthToken
              _pdAndroidId
              _pdFields
              (Just _pdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PromoofferDismissAPI)
                      r
                      u
