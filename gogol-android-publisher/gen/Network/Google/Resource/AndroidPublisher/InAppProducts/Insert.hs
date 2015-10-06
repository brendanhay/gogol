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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsInsert@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
    (
    -- * REST Resource
      InAppProductsInsertResource

    -- * Creating a Request
    , inAppProductsInsert'
    , InAppProductsInsert'

    -- * Request Lenses
    , iapiQuotaUser
    , iapiPrettyPrint
    , iapiAutoConvertMissingPrices
    , iapiPackageName
    , iapiUserIP
    , iapiPayload
    , iapiKey
    , iapiOAuthToken
    , iapiFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsInsert@ which the
-- 'InAppProductsInsert'' request conforms to.
type InAppProductsInsertResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "autoConvertMissingPrices" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InAppProduct :>
                           Post '[JSON] InAppProduct

-- | Creates a new in-app product for an app.
--
-- /See:/ 'inAppProductsInsert'' smart constructor.
data InAppProductsInsert' = InAppProductsInsert'
    { _iapiQuotaUser                :: !(Maybe Text)
    , _iapiPrettyPrint              :: !Bool
    , _iapiAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapiPackageName              :: !Text
    , _iapiUserIP                   :: !(Maybe Text)
    , _iapiPayload                  :: !InAppProduct
    , _iapiKey                      :: !(Maybe AuthKey)
    , _iapiOAuthToken               :: !(Maybe OAuthToken)
    , _iapiFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapiQuotaUser'
--
-- * 'iapiPrettyPrint'
--
-- * 'iapiAutoConvertMissingPrices'
--
-- * 'iapiPackageName'
--
-- * 'iapiUserIP'
--
-- * 'iapiPayload'
--
-- * 'iapiKey'
--
-- * 'iapiOAuthToken'
--
-- * 'iapiFields'
inAppProductsInsert'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'payload'
    -> InAppProductsInsert'
inAppProductsInsert' pIapiPackageName_ pIapiPayload_ =
    InAppProductsInsert'
    { _iapiQuotaUser = Nothing
    , _iapiPrettyPrint = True
    , _iapiAutoConvertMissingPrices = Nothing
    , _iapiPackageName = pIapiPackageName_
    , _iapiUserIP = Nothing
    , _iapiPayload = pIapiPayload_
    , _iapiKey = Nothing
    , _iapiOAuthToken = Nothing
    , _iapiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iapiQuotaUser :: Lens' InAppProductsInsert' (Maybe Text)
iapiQuotaUser
  = lens _iapiQuotaUser
      (\ s a -> s{_iapiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iapiPrettyPrint :: Lens' InAppProductsInsert' Bool
iapiPrettyPrint
  = lens _iapiPrettyPrint
      (\ s a -> s{_iapiPrettyPrint = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapiAutoConvertMissingPrices :: Lens' InAppProductsInsert' (Maybe Bool)
iapiAutoConvertMissingPrices
  = lens _iapiAutoConvertMissingPrices
      (\ s a -> s{_iapiAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app; for example, \"com.spiffygame\".
iapiPackageName :: Lens' InAppProductsInsert' Text
iapiPackageName
  = lens _iapiPackageName
      (\ s a -> s{_iapiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iapiUserIP :: Lens' InAppProductsInsert' (Maybe Text)
iapiUserIP
  = lens _iapiUserIP (\ s a -> s{_iapiUserIP = a})

-- | Multipart request metadata.
iapiPayload :: Lens' InAppProductsInsert' InAppProduct
iapiPayload
  = lens _iapiPayload (\ s a -> s{_iapiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iapiKey :: Lens' InAppProductsInsert' (Maybe AuthKey)
iapiKey = lens _iapiKey (\ s a -> s{_iapiKey = a})

-- | OAuth 2.0 token for the current user.
iapiOAuthToken :: Lens' InAppProductsInsert' (Maybe OAuthToken)
iapiOAuthToken
  = lens _iapiOAuthToken
      (\ s a -> s{_iapiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iapiFields :: Lens' InAppProductsInsert' (Maybe Text)
iapiFields
  = lens _iapiFields (\ s a -> s{_iapiFields = a})

instance GoogleAuth InAppProductsInsert' where
        authKey = iapiKey . _Just
        authToken = iapiOAuthToken . _Just

instance GoogleRequest InAppProductsInsert' where
        type Rs InAppProductsInsert' = InAppProduct
        request = requestWith androidPublisherRequest
        requestWith rq InAppProductsInsert'{..}
          = go _iapiPackageName _iapiAutoConvertMissingPrices
              _iapiQuotaUser
              (Just _iapiPrettyPrint)
              _iapiUserIP
              _iapiFields
              _iapiKey
              _iapiOAuthToken
              (Just AltJSON)
              _iapiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InAppProductsInsertResource)
                      rq
