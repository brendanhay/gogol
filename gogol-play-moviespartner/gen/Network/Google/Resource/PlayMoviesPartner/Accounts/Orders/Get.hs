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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an Order given its id. See _Authentication and Authorization rules_
-- and _Get methods rules_ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviesPartnerAccountsOrdersGet@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Orders.Get
    (
    -- * REST Resource
      AccountsOrdersGetResource

    -- * Creating a Request
    , accountsOrdersGet'
    , AccountsOrdersGet'

    -- * Request Lenses
    , aogXgafv
    , aogQuotaUser
    , aogPrettyPrint
    , aogUploadProtocol
    , aogPp
    , aogAccessToken
    , aogUploadType
    , aogAccountId
    , aogBearerToken
    , aogKey
    , aogOAuthToken
    , aogOrderId
    , aogFields
    , aogCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviesPartnerAccountsOrdersGet@ method which the
-- 'AccountsOrdersGet'' request conforms to.
type AccountsOrdersGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "orders" :>
             Capture "orderId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] Order

-- | Get an Order given its id. See _Authentication and Authorization rules_
-- and _Get methods rules_ for more information about this method.
--
-- /See:/ 'accountsOrdersGet'' smart constructor.
data AccountsOrdersGet' = AccountsOrdersGet'
    { _aogXgafv          :: !(Maybe Text)
    , _aogQuotaUser      :: !(Maybe Text)
    , _aogPrettyPrint    :: !Bool
    , _aogUploadProtocol :: !(Maybe Text)
    , _aogPp             :: !Bool
    , _aogAccessToken    :: !(Maybe Text)
    , _aogUploadType     :: !(Maybe Text)
    , _aogAccountId      :: !Text
    , _aogBearerToken    :: !(Maybe Text)
    , _aogKey            :: !(Maybe AuthKey)
    , _aogOAuthToken     :: !(Maybe OAuthToken)
    , _aogOrderId        :: !Text
    , _aogFields         :: !(Maybe Text)
    , _aogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsOrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aogXgafv'
--
-- * 'aogQuotaUser'
--
-- * 'aogPrettyPrint'
--
-- * 'aogUploadProtocol'
--
-- * 'aogPp'
--
-- * 'aogAccessToken'
--
-- * 'aogUploadType'
--
-- * 'aogAccountId'
--
-- * 'aogBearerToken'
--
-- * 'aogKey'
--
-- * 'aogOAuthToken'
--
-- * 'aogOrderId'
--
-- * 'aogFields'
--
-- * 'aogCallback'
accountsOrdersGet'
    :: Text -- ^ 'accountId'
    -> Text -- ^ 'orderId'
    -> AccountsOrdersGet'
accountsOrdersGet' pAogAccountId_ pAogOrderId_ =
    AccountsOrdersGet'
    { _aogXgafv = Nothing
    , _aogQuotaUser = Nothing
    , _aogPrettyPrint = True
    , _aogUploadProtocol = Nothing
    , _aogPp = True
    , _aogAccessToken = Nothing
    , _aogUploadType = Nothing
    , _aogAccountId = pAogAccountId_
    , _aogBearerToken = Nothing
    , _aogKey = Nothing
    , _aogOAuthToken = Nothing
    , _aogOrderId = pAogOrderId_
    , _aogFields = Nothing
    , _aogCallback = Nothing
    }

-- | V1 error format.
aogXgafv :: Lens' AccountsOrdersGet' (Maybe Text)
aogXgafv = lens _aogXgafv (\ s a -> s{_aogXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aogQuotaUser :: Lens' AccountsOrdersGet' (Maybe Text)
aogQuotaUser
  = lens _aogQuotaUser (\ s a -> s{_aogQuotaUser = a})

-- | Returns response with indentations and line breaks.
aogPrettyPrint :: Lens' AccountsOrdersGet' Bool
aogPrettyPrint
  = lens _aogPrettyPrint
      (\ s a -> s{_aogPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aogUploadProtocol :: Lens' AccountsOrdersGet' (Maybe Text)
aogUploadProtocol
  = lens _aogUploadProtocol
      (\ s a -> s{_aogUploadProtocol = a})

-- | Pretty-print response.
aogPp :: Lens' AccountsOrdersGet' Bool
aogPp = lens _aogPp (\ s a -> s{_aogPp = a})

-- | OAuth access token.
aogAccessToken :: Lens' AccountsOrdersGet' (Maybe Text)
aogAccessToken
  = lens _aogAccessToken
      (\ s a -> s{_aogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aogUploadType :: Lens' AccountsOrdersGet' (Maybe Text)
aogUploadType
  = lens _aogUploadType
      (\ s a -> s{_aogUploadType = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aogAccountId :: Lens' AccountsOrdersGet' Text
aogAccountId
  = lens _aogAccountId (\ s a -> s{_aogAccountId = a})

-- | OAuth bearer token.
aogBearerToken :: Lens' AccountsOrdersGet' (Maybe Text)
aogBearerToken
  = lens _aogBearerToken
      (\ s a -> s{_aogBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aogKey :: Lens' AccountsOrdersGet' (Maybe AuthKey)
aogKey = lens _aogKey (\ s a -> s{_aogKey = a})

-- | OAuth 2.0 token for the current user.
aogOAuthToken :: Lens' AccountsOrdersGet' (Maybe OAuthToken)
aogOAuthToken
  = lens _aogOAuthToken
      (\ s a -> s{_aogOAuthToken = a})

-- | REQUIRED. Order ID.
aogOrderId :: Lens' AccountsOrdersGet' Text
aogOrderId
  = lens _aogOrderId (\ s a -> s{_aogOrderId = a})

-- | Selector specifying which fields to include in a partial response.
aogFields :: Lens' AccountsOrdersGet' (Maybe Text)
aogFields
  = lens _aogFields (\ s a -> s{_aogFields = a})

-- | JSONP
aogCallback :: Lens' AccountsOrdersGet' (Maybe Text)
aogCallback
  = lens _aogCallback (\ s a -> s{_aogCallback = a})

instance GoogleAuth AccountsOrdersGet' where
        _AuthKey = aogKey . _Just
        _AuthToken = aogOAuthToken . _Just

instance GoogleRequest AccountsOrdersGet' where
        type Rs AccountsOrdersGet' = Order
        request = requestWith playMoviesPartnerRequest
        requestWith rq AccountsOrdersGet'{..}
          = go _aogAccountId _aogOrderId _aogXgafv
              _aogUploadProtocol
              (Just _aogPp)
              _aogAccessToken
              _aogUploadType
              _aogBearerToken
              _aogCallback
              _aogQuotaUser
              (Just _aogPrettyPrint)
              _aogFields
              _aogKey
              _aogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsOrdersGetResource)
                      rq
