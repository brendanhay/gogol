{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Promooffer.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of promo offers available to the user
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPromoofferGet@.
module Books.Promooffer.Get
    (
    -- * REST Resource
      PromoofferGetAPI

    -- * Creating a Request
    , promoofferGet
    , PromoofferGet

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgManufacturer
    , pgUserIp
    , pgSerial
    , pgDevice
    , pgKey
    , pgModel
    , pgProduct
    , pgOauthToken
    , pgAndroidId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPromoofferGet@ which the
-- 'PromoofferGet' request conforms to.
type PromoofferGetAPI =
     "promooffer" :>
       "get" :>
         QueryParam "manufacturer" Text :>
           QueryParam "serial" Text :>
             QueryParam "device" Text :>
               QueryParam "model" Text :>
                 QueryParam "product" Text :>
                   QueryParam "androidId" Text :> Get '[JSON] Offers

-- | Returns a list of promo offers available to the user
--
-- /See:/ 'promoofferGet' smart constructor.
data PromoofferGet = PromoofferGet
    { _pgQuotaUser    :: !(Maybe Text)
    , _pgPrettyPrint  :: !Bool
    , _pgManufacturer :: !(Maybe Text)
    , _pgUserIp       :: !(Maybe Text)
    , _pgSerial       :: !(Maybe Text)
    , _pgDevice       :: !(Maybe Text)
    , _pgKey          :: !(Maybe Text)
    , _pgModel        :: !(Maybe Text)
    , _pgProduct      :: !(Maybe Text)
    , _pgOauthToken   :: !(Maybe Text)
    , _pgAndroidId    :: !(Maybe Text)
    , _pgFields       :: !(Maybe Text)
    , _pgAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoofferGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgManufacturer'
--
-- * 'pgUserIp'
--
-- * 'pgSerial'
--
-- * 'pgDevice'
--
-- * 'pgKey'
--
-- * 'pgModel'
--
-- * 'pgProduct'
--
-- * 'pgOauthToken'
--
-- * 'pgAndroidId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
promoofferGet
    :: PromoofferGet
promoofferGet =
    PromoofferGet
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgManufacturer = Nothing
    , _pgUserIp = Nothing
    , _pgSerial = Nothing
    , _pgDevice = Nothing
    , _pgKey = Nothing
    , _pgModel = Nothing
    , _pgProduct = Nothing
    , _pgOauthToken = Nothing
    , _pgAndroidId = Nothing
    , _pgFields = Nothing
    , _pgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PromoofferGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PromoofferGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | device manufacturer
pgManufacturer :: Lens' PromoofferGet' (Maybe Text)
pgManufacturer
  = lens _pgManufacturer
      (\ s a -> s{_pgManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PromoofferGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | device serial
pgSerial :: Lens' PromoofferGet' (Maybe Text)
pgSerial = lens _pgSerial (\ s a -> s{_pgSerial = a})

-- | device device
pgDevice :: Lens' PromoofferGet' (Maybe Text)
pgDevice = lens _pgDevice (\ s a -> s{_pgDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PromoofferGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | device model
pgModel :: Lens' PromoofferGet' (Maybe Text)
pgModel = lens _pgModel (\ s a -> s{_pgModel = a})

-- | device product
pgProduct :: Lens' PromoofferGet' (Maybe Text)
pgProduct
  = lens _pgProduct (\ s a -> s{_pgProduct = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PromoofferGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | device android_id
pgAndroidId :: Lens' PromoofferGet' (Maybe Text)
pgAndroidId
  = lens _pgAndroidId (\ s a -> s{_pgAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PromoofferGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PromoofferGet' Text
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PromoofferGet' where
        type Rs PromoofferGet' = Offers
        request = requestWithRoute defReq booksURL
        requestWithRoute r u PromoofferGet{..}
          = go _pgQuotaUser _pgPrettyPrint _pgManufacturer
              _pgUserIp
              _pgSerial
              _pgDevice
              _pgKey
              _pgModel
              _pgProduct
              _pgOauthToken
              _pgAndroidId
              _pgFields
              _pgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PromoofferGetAPI) r
                      u
