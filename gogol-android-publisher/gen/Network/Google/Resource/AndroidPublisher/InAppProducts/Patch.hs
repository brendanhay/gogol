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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsPatch@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
    (
    -- * REST Resource
      InAppProductsPatchResource

    -- * Creating a Request
    , inAppProductsPatch'
    , InAppProductsPatch'

    -- * Request Lenses
    , iAppQuotaUser
    , iAppPrettyPrint
    , iAppAutoConvertMissingPrices
    , iAppPackageName
    , iAppUserIP
    , iAppPayload
    , iAppKey
    , iAppSKU
    , iAppOAuthToken
    , iAppFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsPatch@ which the
-- 'InAppProductsPatch'' request conforms to.
type InAppProductsPatchResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "autoConvertMissingPrices" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InAppProduct :>
                             Patch '[JSON] InAppProduct

-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ 'inAppProductsPatch'' smart constructor.
data InAppProductsPatch' = InAppProductsPatch'
    { _iAppQuotaUser                :: !(Maybe Text)
    , _iAppPrettyPrint              :: !Bool
    , _iAppAutoConvertMissingPrices :: !(Maybe Bool)
    , _iAppPackageName              :: !Text
    , _iAppUserIP                   :: !(Maybe Text)
    , _iAppPayload                  :: !InAppProduct
    , _iAppKey                      :: !(Maybe AuthKey)
    , _iAppSKU                      :: !Text
    , _iAppOAuthToken               :: !(Maybe OAuthToken)
    , _iAppFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAppQuotaUser'
--
-- * 'iAppPrettyPrint'
--
-- * 'iAppAutoConvertMissingPrices'
--
-- * 'iAppPackageName'
--
-- * 'iAppUserIP'
--
-- * 'iAppPayload'
--
-- * 'iAppKey'
--
-- * 'iAppSKU'
--
-- * 'iAppOAuthToken'
--
-- * 'iAppFields'
inAppProductsPatch'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'payload'
    -> Text -- ^ 'sku'
    -> InAppProductsPatch'
inAppProductsPatch' pIAppPackageName_ pIAppPayload_ pIAppSKU_ =
    InAppProductsPatch'
    { _iAppQuotaUser = Nothing
    , _iAppPrettyPrint = True
    , _iAppAutoConvertMissingPrices = Nothing
    , _iAppPackageName = pIAppPackageName_
    , _iAppUserIP = Nothing
    , _iAppPayload = pIAppPayload_
    , _iAppKey = Nothing
    , _iAppSKU = pIAppSKU_
    , _iAppOAuthToken = Nothing
    , _iAppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iAppQuotaUser :: Lens' InAppProductsPatch' (Maybe Text)
iAppQuotaUser
  = lens _iAppQuotaUser
      (\ s a -> s{_iAppQuotaUser = a})

-- | Returns response with indentations and line breaks.
iAppPrettyPrint :: Lens' InAppProductsPatch' Bool
iAppPrettyPrint
  = lens _iAppPrettyPrint
      (\ s a -> s{_iAppPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iAppAutoConvertMissingPrices :: Lens' InAppProductsPatch' (Maybe Bool)
iAppAutoConvertMissingPrices
  = lens _iAppAutoConvertMissingPrices
      (\ s a -> s{_iAppAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iAppPackageName :: Lens' InAppProductsPatch' Text
iAppPackageName
  = lens _iAppPackageName
      (\ s a -> s{_iAppPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iAppUserIP :: Lens' InAppProductsPatch' (Maybe Text)
iAppUserIP
  = lens _iAppUserIP (\ s a -> s{_iAppUserIP = a})

-- | Multipart request metadata.
iAppPayload :: Lens' InAppProductsPatch' InAppProduct
iAppPayload
  = lens _iAppPayload (\ s a -> s{_iAppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iAppKey :: Lens' InAppProductsPatch' (Maybe AuthKey)
iAppKey = lens _iAppKey (\ s a -> s{_iAppKey = a})

-- | Unique identifier for the in-app product.
iAppSKU :: Lens' InAppProductsPatch' Text
iAppSKU = lens _iAppSKU (\ s a -> s{_iAppSKU = a})

-- | OAuth 2.0 token for the current user.
iAppOAuthToken :: Lens' InAppProductsPatch' (Maybe OAuthToken)
iAppOAuthToken
  = lens _iAppOAuthToken
      (\ s a -> s{_iAppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iAppFields :: Lens' InAppProductsPatch' (Maybe Text)
iAppFields
  = lens _iAppFields (\ s a -> s{_iAppFields = a})

instance GoogleAuth InAppProductsPatch' where
        _AuthKey = iAppKey . _Just
        _AuthToken = iAppOAuthToken . _Just

instance GoogleRequest InAppProductsPatch' where
        type Rs InAppProductsPatch' = InAppProduct
        request = requestWith androidPublisherRequest
        requestWith rq InAppProductsPatch'{..}
          = go _iAppPackageName _iAppSKU
              _iAppAutoConvertMissingPrices
              _iAppQuotaUser
              (Just _iAppPrettyPrint)
              _iAppUserIP
              _iAppFields
              _iAppKey
              _iAppOAuthToken
              (Just AltJSON)
              _iAppPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InAppProductsPatchResource)
                      rq
