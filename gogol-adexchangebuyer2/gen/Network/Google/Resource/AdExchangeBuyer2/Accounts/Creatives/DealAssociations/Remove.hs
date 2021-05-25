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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the association between a deal and a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.remove@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Remove
    (
    -- * REST Resource
      AccountsCreativesDealAssociationsRemoveResource

    -- * Creating a Request
    , accountsCreativesDealAssociationsRemove
    , AccountsCreativesDealAssociationsRemove

    -- * Request Lenses
    , acdarXgafv
    , acdarUploadProtocol
    , acdarAccessToken
    , acdarUploadType
    , acdarCreativeId
    , acdarPayload
    , acdarAccountId
    , acdarCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.remove@ method which the
-- 'AccountsCreativesDealAssociationsRemove' request conforms to.
type AccountsCreativesDealAssociationsRemoveResource
     =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             Capture "creativeId" Text :>
               "dealAssociations:remove" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RemoveDealAssociationRequest :>
                               Post '[JSON] Empty

-- | Remove the association between a deal and a creative.
--
-- /See:/ 'accountsCreativesDealAssociationsRemove' smart constructor.
data AccountsCreativesDealAssociationsRemove =
  AccountsCreativesDealAssociationsRemove'
    { _acdarXgafv :: !(Maybe Xgafv)
    , _acdarUploadProtocol :: !(Maybe Text)
    , _acdarAccessToken :: !(Maybe Text)
    , _acdarUploadType :: !(Maybe Text)
    , _acdarCreativeId :: !Text
    , _acdarPayload :: !RemoveDealAssociationRequest
    , _acdarAccountId :: !Text
    , _acdarCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCreativesDealAssociationsRemove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdarXgafv'
--
-- * 'acdarUploadProtocol'
--
-- * 'acdarAccessToken'
--
-- * 'acdarUploadType'
--
-- * 'acdarCreativeId'
--
-- * 'acdarPayload'
--
-- * 'acdarAccountId'
--
-- * 'acdarCallback'
accountsCreativesDealAssociationsRemove
    :: Text -- ^ 'acdarCreativeId'
    -> RemoveDealAssociationRequest -- ^ 'acdarPayload'
    -> Text -- ^ 'acdarAccountId'
    -> AccountsCreativesDealAssociationsRemove
accountsCreativesDealAssociationsRemove pAcdarCreativeId_ pAcdarPayload_ pAcdarAccountId_ =
  AccountsCreativesDealAssociationsRemove'
    { _acdarXgafv = Nothing
    , _acdarUploadProtocol = Nothing
    , _acdarAccessToken = Nothing
    , _acdarUploadType = Nothing
    , _acdarCreativeId = pAcdarCreativeId_
    , _acdarPayload = pAcdarPayload_
    , _acdarAccountId = pAcdarAccountId_
    , _acdarCallback = Nothing
    }


-- | V1 error format.
acdarXgafv :: Lens' AccountsCreativesDealAssociationsRemove (Maybe Xgafv)
acdarXgafv
  = lens _acdarXgafv (\ s a -> s{_acdarXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acdarUploadProtocol :: Lens' AccountsCreativesDealAssociationsRemove (Maybe Text)
acdarUploadProtocol
  = lens _acdarUploadProtocol
      (\ s a -> s{_acdarUploadProtocol = a})

-- | OAuth access token.
acdarAccessToken :: Lens' AccountsCreativesDealAssociationsRemove (Maybe Text)
acdarAccessToken
  = lens _acdarAccessToken
      (\ s a -> s{_acdarAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acdarUploadType :: Lens' AccountsCreativesDealAssociationsRemove (Maybe Text)
acdarUploadType
  = lens _acdarUploadType
      (\ s a -> s{_acdarUploadType = a})

-- | The ID of the creative associated with the deal.
acdarCreativeId :: Lens' AccountsCreativesDealAssociationsRemove Text
acdarCreativeId
  = lens _acdarCreativeId
      (\ s a -> s{_acdarCreativeId = a})

-- | Multipart request metadata.
acdarPayload :: Lens' AccountsCreativesDealAssociationsRemove RemoveDealAssociationRequest
acdarPayload
  = lens _acdarPayload (\ s a -> s{_acdarPayload = a})

-- | The account the creative belongs to.
acdarAccountId :: Lens' AccountsCreativesDealAssociationsRemove Text
acdarAccountId
  = lens _acdarAccountId
      (\ s a -> s{_acdarAccountId = a})

-- | JSONP
acdarCallback :: Lens' AccountsCreativesDealAssociationsRemove (Maybe Text)
acdarCallback
  = lens _acdarCallback
      (\ s a -> s{_acdarCallback = a})

instance GoogleRequest
           AccountsCreativesDealAssociationsRemove
         where
        type Rs AccountsCreativesDealAssociationsRemove =
             Empty
        type Scopes AccountsCreativesDealAssociationsRemove =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AccountsCreativesDealAssociationsRemove'{..}
          = go _acdarAccountId _acdarCreativeId _acdarXgafv
              _acdarUploadProtocol
              _acdarAccessToken
              _acdarUploadType
              _acdarCallback
              (Just AltJSON)
              _acdarPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsCreativesDealAssociationsRemoveResource)
                      mempty
