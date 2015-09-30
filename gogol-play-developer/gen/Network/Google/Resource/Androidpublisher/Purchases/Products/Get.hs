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
-- Module      : Network.Google.Resource.Androidpublisher.Purchases.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherPurchasesProductsGet@.
module Network.Google.Resource.Androidpublisher.Purchases.Products.Get
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
    , ppgUserIp
    , ppgToken
    , ppgKey
    , ppgOauthToken
    , ppgProductId
    , ppgFields
    , ppgAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherPurchasesProductsGet@ which the
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ProductPurchase

-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ 'purchasesProductsGet'' smart constructor.
data PurchasesProductsGet' = PurchasesProductsGet'
    { _ppgQuotaUser   :: !(Maybe Text)
    , _ppgPrettyPrint :: !Bool
    , _ppgPackageName :: !Text
    , _ppgUserIp      :: !(Maybe Text)
    , _ppgToken       :: !Text
    , _ppgKey         :: !(Maybe Text)
    , _ppgOauthToken  :: !(Maybe Text)
    , _ppgProductId   :: !Text
    , _ppgFields      :: !(Maybe Text)
    , _ppgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ppgUserIp'
--
-- * 'ppgToken'
--
-- * 'ppgKey'
--
-- * 'ppgOauthToken'
--
-- * 'ppgProductId'
--
-- * 'ppgFields'
--
-- * 'ppgAlt'
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
    , _ppgUserIp = Nothing
    , _ppgToken = pPpgToken_
    , _ppgKey = Nothing
    , _ppgOauthToken = Nothing
    , _ppgProductId = pPpgProductId_
    , _ppgFields = Nothing
    , _ppgAlt = JSON
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
ppgUserIp :: Lens' PurchasesProductsGet' (Maybe Text)
ppgUserIp
  = lens _ppgUserIp (\ s a -> s{_ppgUserIp = a})

-- | The token provided to the user\'s device when the inapp product was
-- purchased.
ppgToken :: Lens' PurchasesProductsGet' Text
ppgToken = lens _ppgToken (\ s a -> s{_ppgToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ppgKey :: Lens' PurchasesProductsGet' (Maybe Text)
ppgKey = lens _ppgKey (\ s a -> s{_ppgKey = a})

-- | OAuth 2.0 token for the current user.
ppgOauthToken :: Lens' PurchasesProductsGet' (Maybe Text)
ppgOauthToken
  = lens _ppgOauthToken
      (\ s a -> s{_ppgOauthToken = a})

-- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
ppgProductId :: Lens' PurchasesProductsGet' Text
ppgProductId
  = lens _ppgProductId (\ s a -> s{_ppgProductId = a})

-- | Selector specifying which fields to include in a partial response.
ppgFields :: Lens' PurchasesProductsGet' (Maybe Text)
ppgFields
  = lens _ppgFields (\ s a -> s{_ppgFields = a})

-- | Data format for the response.
ppgAlt :: Lens' PurchasesProductsGet' Alt
ppgAlt = lens _ppgAlt (\ s a -> s{_ppgAlt = a})

instance GoogleRequest PurchasesProductsGet' where
        type Rs PurchasesProductsGet' = ProductPurchase
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u PurchasesProductsGet'{..}
          = go _ppgQuotaUser (Just _ppgPrettyPrint)
              _ppgPackageName
              _ppgUserIp
              _ppgToken
              _ppgKey
              _ppgOauthToken
              _ppgProductId
              _ppgFields
              (Just _ppgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesProductsGetResource)
                      r
                      u
