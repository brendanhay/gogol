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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the in-app product specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsGet@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Get
    (
    -- * REST Resource
      InAppProductsGetResource

    -- * Creating a Request
    , inAppProductsGet'
    , InAppProductsGet'

    -- * Request Lenses
    , iapgQuotaUser
    , iapgPrettyPrint
    , iapgPackageName
    , iapgUserIP
    , iapgKey
    , iapgSKU
    , iapgOAuthToken
    , iapgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsGet@ which the
-- 'InAppProductsGet'' request conforms to.
type InAppProductsGetResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] InAppProduct

-- | Returns information about the in-app product specified.
--
-- /See:/ 'inAppProductsGet'' smart constructor.
data InAppProductsGet' = InAppProductsGet'
    { _iapgQuotaUser   :: !(Maybe Text)
    , _iapgPrettyPrint :: !Bool
    , _iapgPackageName :: !Text
    , _iapgUserIP      :: !(Maybe Text)
    , _iapgKey         :: !(Maybe AuthKey)
    , _iapgSKU         :: !Text
    , _iapgOAuthToken  :: !(Maybe OAuthToken)
    , _iapgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapgQuotaUser'
--
-- * 'iapgPrettyPrint'
--
-- * 'iapgPackageName'
--
-- * 'iapgUserIP'
--
-- * 'iapgKey'
--
-- * 'iapgSKU'
--
-- * 'iapgOAuthToken'
--
-- * 'iapgFields'
inAppProductsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InAppProductsGet'
inAppProductsGet' pIapgPackageName_ pIapgSKU_ =
    InAppProductsGet'
    { _iapgQuotaUser = Nothing
    , _iapgPrettyPrint = True
    , _iapgPackageName = pIapgPackageName_
    , _iapgUserIP = Nothing
    , _iapgKey = Nothing
    , _iapgSKU = pIapgSKU_
    , _iapgOAuthToken = Nothing
    , _iapgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iapgQuotaUser :: Lens' InAppProductsGet' (Maybe Text)
iapgQuotaUser
  = lens _iapgQuotaUser
      (\ s a -> s{_iapgQuotaUser = a})

-- | Returns response with indentations and line breaks.
iapgPrettyPrint :: Lens' InAppProductsGet' Bool
iapgPrettyPrint
  = lens _iapgPrettyPrint
      (\ s a -> s{_iapgPrettyPrint = a})

iapgPackageName :: Lens' InAppProductsGet' Text
iapgPackageName
  = lens _iapgPackageName
      (\ s a -> s{_iapgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iapgUserIP :: Lens' InAppProductsGet' (Maybe Text)
iapgUserIP
  = lens _iapgUserIP (\ s a -> s{_iapgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iapgKey :: Lens' InAppProductsGet' (Maybe AuthKey)
iapgKey = lens _iapgKey (\ s a -> s{_iapgKey = a})

-- | Unique identifier for the in-app product.
iapgSKU :: Lens' InAppProductsGet' Text
iapgSKU = lens _iapgSKU (\ s a -> s{_iapgSKU = a})

-- | OAuth 2.0 token for the current user.
iapgOAuthToken :: Lens' InAppProductsGet' (Maybe OAuthToken)
iapgOAuthToken
  = lens _iapgOAuthToken
      (\ s a -> s{_iapgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iapgFields :: Lens' InAppProductsGet' (Maybe Text)
iapgFields
  = lens _iapgFields (\ s a -> s{_iapgFields = a})

instance GoogleAuth InAppProductsGet' where
        authKey = iapgKey . _Just
        authToken = iapgOAuthToken . _Just

instance GoogleRequest InAppProductsGet' where
        type Rs InAppProductsGet' = InAppProduct
        request = requestWith androidPublisherRequest
        requestWith rq InAppProductsGet'{..}
          = go _iapgPackageName _iapgSKU _iapgQuotaUser
              (Just _iapgPrettyPrint)
              _iapgUserIP
              _iapgFields
              _iapgKey
              _iapgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InAppProductsGetResource)
                      rq
