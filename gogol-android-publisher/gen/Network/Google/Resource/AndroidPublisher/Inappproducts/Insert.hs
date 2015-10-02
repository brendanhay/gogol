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
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsInsert@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Insert
    (
    -- * REST Resource
      InappproductsInsertResource

    -- * Creating a Request
    , inappproductsInsert'
    , InappproductsInsert'

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiAutoConvertMissingPrices
    , iiPackageName
    , iiUserIP
    , iiKey
    , iiInAppProduct
    , iiOAuthToken
    , iiFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsInsert@ which the
-- 'InappproductsInsert'' request conforms to.
type InappproductsInsertResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "autoConvertMissingPrices" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InAppProduct :>
                           Post '[JSON] InAppProduct

-- | Creates a new in-app product for an app.
--
-- /See:/ 'inappproductsInsert'' smart constructor.
data InappproductsInsert' = InappproductsInsert'
    { _iiQuotaUser                :: !(Maybe Text)
    , _iiPrettyPrint              :: !Bool
    , _iiAutoConvertMissingPrices :: !(Maybe Bool)
    , _iiPackageName              :: !Text
    , _iiUserIP                   :: !(Maybe Text)
    , _iiKey                      :: !(Maybe Key)
    , _iiInAppProduct             :: !InAppProduct
    , _iiOAuthToken               :: !(Maybe OAuthToken)
    , _iiFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiAutoConvertMissingPrices'
--
-- * 'iiPackageName'
--
-- * 'iiUserIP'
--
-- * 'iiKey'
--
-- * 'iiInAppProduct'
--
-- * 'iiOAuthToken'
--
-- * 'iiFields'
inappproductsInsert'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'InAppProduct'
    -> InappproductsInsert'
inappproductsInsert' pIiPackageName_ pIiInAppProduct_ =
    InappproductsInsert'
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiAutoConvertMissingPrices = Nothing
    , _iiPackageName = pIiPackageName_
    , _iiUserIP = Nothing
    , _iiKey = Nothing
    , _iiInAppProduct = pIiInAppProduct_
    , _iiOAuthToken = Nothing
    , _iiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' InappproductsInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' InappproductsInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iiAutoConvertMissingPrices :: Lens' InappproductsInsert' (Maybe Bool)
iiAutoConvertMissingPrices
  = lens _iiAutoConvertMissingPrices
      (\ s a -> s{_iiAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app; for example, \"com.spiffygame\".
iiPackageName :: Lens' InappproductsInsert' Text
iiPackageName
  = lens _iiPackageName
      (\ s a -> s{_iiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIP :: Lens' InappproductsInsert' (Maybe Text)
iiUserIP = lens _iiUserIP (\ s a -> s{_iiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' InappproductsInsert' (Maybe Key)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | Multipart request metadata.
iiInAppProduct :: Lens' InappproductsInsert' InAppProduct
iiInAppProduct
  = lens _iiInAppProduct
      (\ s a -> s{_iiInAppProduct = a})

-- | OAuth 2.0 token for the current user.
iiOAuthToken :: Lens' InappproductsInsert' (Maybe OAuthToken)
iiOAuthToken
  = lens _iiOAuthToken (\ s a -> s{_iiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' InappproductsInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

instance GoogleAuth InappproductsInsert' where
        authKey = iiKey . _Just
        authToken = iiOAuthToken . _Just

instance GoogleRequest InappproductsInsert' where
        type Rs InappproductsInsert' = InAppProduct
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsInsert'{..}
          = go _iiAutoConvertMissingPrices _iiPackageName
              _iiQuotaUser
              (Just _iiPrettyPrint)
              _iiUserIP
              _iiFields
              _iiKey
              _iiOAuthToken
              (Just AltJSON)
              _iiInAppProduct
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsInsertResource)
                      r
                      u
