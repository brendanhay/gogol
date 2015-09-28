{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Promooffer.Accept
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.promooffer.accept@.
module Network.Google.API.Books.Promooffer.Accept
    (
    -- * REST Resource
      PromoofferAcceptAPI

    -- * Creating a Request
    , promoofferAccept'
    , PromoofferAccept'

    -- * Request Lenses
    , paQuotaUser
    , paPrettyPrint
    , paManufacturer
    , paUserIp
    , paSerial
    , paDevice
    , paKey
    , paModel
    , paVolumeId
    , paOfferId
    , paProduct
    , paOauthToken
    , paAndroidId
    , paFields
    , paAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.promooffer.accept which the
-- 'PromoofferAccept'' request conforms to.
type PromoofferAcceptAPI =
     "promooffer" :>
       "accept" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "manufacturer" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "serial" Text :>
                   QueryParam "device" Text :>
                     QueryParam "key" Text :>
                       QueryParam "model" Text :>
                         QueryParam "volumeId" Text :>
                           QueryParam "offerId" Text :>
                             QueryParam "product" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "androidId" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :> Post '[JSON] ()

-- |
--
-- /See:/ 'promoofferAccept'' smart constructor.
data PromoofferAccept' = PromoofferAccept'
    { _paQuotaUser    :: !(Maybe Text)
    , _paPrettyPrint  :: !Bool
    , _paManufacturer :: !(Maybe Text)
    , _paUserIp       :: !(Maybe Text)
    , _paSerial       :: !(Maybe Text)
    , _paDevice       :: !(Maybe Text)
    , _paKey          :: !(Maybe Text)
    , _paModel        :: !(Maybe Text)
    , _paVolumeId     :: !(Maybe Text)
    , _paOfferId      :: !(Maybe Text)
    , _paProduct      :: !(Maybe Text)
    , _paOauthToken   :: !(Maybe Text)
    , _paAndroidId    :: !(Maybe Text)
    , _paFields       :: !(Maybe Text)
    , _paAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromoofferAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paQuotaUser'
--
-- * 'paPrettyPrint'
--
-- * 'paManufacturer'
--
-- * 'paUserIp'
--
-- * 'paSerial'
--
-- * 'paDevice'
--
-- * 'paKey'
--
-- * 'paModel'
--
-- * 'paVolumeId'
--
-- * 'paOfferId'
--
-- * 'paProduct'
--
-- * 'paOauthToken'
--
-- * 'paAndroidId'
--
-- * 'paFields'
--
-- * 'paAlt'
promoofferAccept'
    :: PromoofferAccept'
promoofferAccept' =
    PromoofferAccept'
    { _paQuotaUser = Nothing
    , _paPrettyPrint = True
    , _paManufacturer = Nothing
    , _paUserIp = Nothing
    , _paSerial = Nothing
    , _paDevice = Nothing
    , _paKey = Nothing
    , _paModel = Nothing
    , _paVolumeId = Nothing
    , _paOfferId = Nothing
    , _paProduct = Nothing
    , _paOauthToken = Nothing
    , _paAndroidId = Nothing
    , _paFields = Nothing
    , _paAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
paQuotaUser :: Lens' PromoofferAccept' (Maybe Text)
paQuotaUser
  = lens _paQuotaUser (\ s a -> s{_paQuotaUser = a})

-- | Returns response with indentations and line breaks.
paPrettyPrint :: Lens' PromoofferAccept' Bool
paPrettyPrint
  = lens _paPrettyPrint
      (\ s a -> s{_paPrettyPrint = a})

-- | device manufacturer
paManufacturer :: Lens' PromoofferAccept' (Maybe Text)
paManufacturer
  = lens _paManufacturer
      (\ s a -> s{_paManufacturer = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
paUserIp :: Lens' PromoofferAccept' (Maybe Text)
paUserIp = lens _paUserIp (\ s a -> s{_paUserIp = a})

-- | device serial
paSerial :: Lens' PromoofferAccept' (Maybe Text)
paSerial = lens _paSerial (\ s a -> s{_paSerial = a})

-- | device device
paDevice :: Lens' PromoofferAccept' (Maybe Text)
paDevice = lens _paDevice (\ s a -> s{_paDevice = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
paKey :: Lens' PromoofferAccept' (Maybe Text)
paKey = lens _paKey (\ s a -> s{_paKey = a})

-- | device model
paModel :: Lens' PromoofferAccept' (Maybe Text)
paModel = lens _paModel (\ s a -> s{_paModel = a})

-- | Volume id to exercise the offer
paVolumeId :: Lens' PromoofferAccept' (Maybe Text)
paVolumeId
  = lens _paVolumeId (\ s a -> s{_paVolumeId = a})

paOfferId :: Lens' PromoofferAccept' (Maybe Text)
paOfferId
  = lens _paOfferId (\ s a -> s{_paOfferId = a})

-- | device product
paProduct :: Lens' PromoofferAccept' (Maybe Text)
paProduct
  = lens _paProduct (\ s a -> s{_paProduct = a})

-- | OAuth 2.0 token for the current user.
paOauthToken :: Lens' PromoofferAccept' (Maybe Text)
paOauthToken
  = lens _paOauthToken (\ s a -> s{_paOauthToken = a})

-- | device android_id
paAndroidId :: Lens' PromoofferAccept' (Maybe Text)
paAndroidId
  = lens _paAndroidId (\ s a -> s{_paAndroidId = a})

-- | Selector specifying which fields to include in a partial response.
paFields :: Lens' PromoofferAccept' (Maybe Text)
paFields = lens _paFields (\ s a -> s{_paFields = a})

-- | Data format for the response.
paAlt :: Lens' PromoofferAccept' Alt
paAlt = lens _paAlt (\ s a -> s{_paAlt = a})

instance GoogleRequest PromoofferAccept' where
        type Rs PromoofferAccept' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u PromoofferAccept'{..}
          = go _paQuotaUser (Just _paPrettyPrint)
              _paManufacturer
              _paUserIp
              _paSerial
              _paDevice
              _paKey
              _paModel
              _paVolumeId
              _paOfferId
              _paProduct
              _paOauthToken
              _paAndroidId
              _paFields
              (Just _paAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PromoofferAcceptAPI)
                      r
                      u
