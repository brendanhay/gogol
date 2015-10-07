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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherPurchasesProductsGet@.
module Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
    (
    -- * REST Resource
      PurchasesProductsGetResource

    -- * Creating a Request
    , purchasesProductsGet'
    , PurchasesProductsGet'

    -- * Request Lenses
    , ppgQuotaUser
    , ppgPrettyPrint
    , ppgPackageName
    , ppgUserIP
    , ppgToken
    , ppgKey
    , ppgOAuthToken
    , ppgProductId
    , ppgFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherPurchasesProductsGet@ method which the
-- 'PurchasesProductsGet'' request conforms to.
type PurchasesProductsGetResource =
     Capture "packageName" Text :>
       "purchases" :>
         "products" :>
           Capture "productId" Text :>
             "tokens" :>
               Capture "token" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ProductPurchase

-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ 'purchasesProductsGet'' smart constructor.
data PurchasesProductsGet' = PurchasesProductsGet'
    { _ppgQuotaUser   :: !(Maybe Text)
    , _ppgPrettyPrint :: !Bool
    , _ppgPackageName :: !Text
    , _ppgUserIP      :: !(Maybe Text)
    , _ppgToken       :: !Text
    , _ppgKey         :: !(Maybe AuthKey)
    , _ppgOAuthToken  :: !(Maybe OAuthToken)
    , _ppgProductId   :: !Text
    , _ppgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppgQuotaUser'
--
-- * 'ppgPrettyPrint'
--
-- * 'ppgPackageName'
--
-- * 'ppgUserIP'
--
-- * 'ppgToken'
--
-- * 'ppgKey'
--
-- * 'ppgOAuthToken'
--
-- * 'ppgProductId'
--
-- * 'ppgFields'
purchasesProductsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'productId'
    -> PurchasesProductsGet'
purchasesProductsGet' pPpgPackageName_ pPpgToken_ pPpgProductId_ =
    PurchasesProductsGet'
    { _ppgQuotaUser = Nothing
    , _ppgPrettyPrint = True
    , _ppgPackageName = pPpgPackageName_
    , _ppgUserIP = Nothing
    , _ppgToken = pPpgToken_
    , _ppgKey = Nothing
    , _ppgOAuthToken = Nothing
    , _ppgProductId = pPpgProductId_
    , _ppgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ppgQuotaUser :: Lens' PurchasesProductsGet' (Maybe Text)
ppgQuotaUser
  = lens _ppgQuotaUser (\ s a -> s{_ppgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ppgPrettyPrint :: Lens' PurchasesProductsGet' Bool
ppgPrettyPrint
  = lens _ppgPrettyPrint
      (\ s a -> s{_ppgPrettyPrint = a})

-- | The package name of the application the inapp product was sold in (for
-- example, \'com.some.thing\').
ppgPackageName :: Lens' PurchasesProductsGet' Text
ppgPackageName
  = lens _ppgPackageName
      (\ s a -> s{_ppgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ppgUserIP :: Lens' PurchasesProductsGet' (Maybe Text)
ppgUserIP
  = lens _ppgUserIP (\ s a -> s{_ppgUserIP = a})

-- | The token provided to the user\'s device when the inapp product was
-- purchased.
ppgToken :: Lens' PurchasesProductsGet' Text
ppgToken = lens _ppgToken (\ s a -> s{_ppgToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppgKey :: Lens' PurchasesProductsGet' (Maybe AuthKey)
ppgKey = lens _ppgKey (\ s a -> s{_ppgKey = a})

-- | OAuth 2.0 token for the current user.
ppgOAuthToken :: Lens' PurchasesProductsGet' (Maybe OAuthToken)
ppgOAuthToken
  = lens _ppgOAuthToken
      (\ s a -> s{_ppgOAuthToken = a})

-- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
ppgProductId :: Lens' PurchasesProductsGet' Text
ppgProductId
  = lens _ppgProductId (\ s a -> s{_ppgProductId = a})

-- | Selector specifying which fields to include in a partial response.
ppgFields :: Lens' PurchasesProductsGet' (Maybe Text)
ppgFields
  = lens _ppgFields (\ s a -> s{_ppgFields = a})

instance GoogleAuth PurchasesProductsGet' where
        _AuthKey = ppgKey . _Just
        _AuthToken = ppgOAuthToken . _Just

instance GoogleRequest PurchasesProductsGet' where
        type Rs PurchasesProductsGet' = ProductPurchase
        request = requestWith androidPublisherRequest
        requestWith rq PurchasesProductsGet'{..}
          = go _ppgPackageName _ppgProductId _ppgToken
              _ppgQuotaUser
              (Just _ppgPrettyPrint)
              _ppgUserIP
              _ppgFields
              _ppgKey
              _ppgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PurchasesProductsGetResource)
                      rq
