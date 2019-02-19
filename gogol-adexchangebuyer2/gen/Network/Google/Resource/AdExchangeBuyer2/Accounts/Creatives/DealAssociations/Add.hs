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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate an existing deal with a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.dealAssociations.add@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.DealAssociations.Add
    (
    -- * REST Resource
      AccountsCreativesDealAssociationsAddResource

    -- * Creating a Request
    , accountsCreativesDealAssociationsAdd
    , AccountsCreativesDealAssociationsAdd

    -- * Request Lenses
    , acdaaXgafv
    , acdaaUploadProtocol
    , acdaaAccessToken
    , acdaaUploadType
    , acdaaCreativeId
    , acdaaPayload
    , acdaaAccountId
    , acdaaCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.dealAssociations.add@ method which the
-- 'AccountsCreativesDealAssociationsAdd' request conforms to.
type AccountsCreativesDealAssociationsAddResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             Capture "creativeId" Text :>
               "dealAssociations:add" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AddDealAssociationRequest :>
                               Post '[JSON] Empty

-- | Associate an existing deal with a creative.
--
-- /See:/ 'accountsCreativesDealAssociationsAdd' smart constructor.
data AccountsCreativesDealAssociationsAdd =
  AccountsCreativesDealAssociationsAdd'
    { _acdaaXgafv          :: !(Maybe Xgafv)
    , _acdaaUploadProtocol :: !(Maybe Text)
    , _acdaaAccessToken    :: !(Maybe Text)
    , _acdaaUploadType     :: !(Maybe Text)
    , _acdaaCreativeId     :: !Text
    , _acdaaPayload        :: !AddDealAssociationRequest
    , _acdaaAccountId      :: !Text
    , _acdaaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCreativesDealAssociationsAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdaaXgafv'
--
-- * 'acdaaUploadProtocol'
--
-- * 'acdaaAccessToken'
--
-- * 'acdaaUploadType'
--
-- * 'acdaaCreativeId'
--
-- * 'acdaaPayload'
--
-- * 'acdaaAccountId'
--
-- * 'acdaaCallback'
accountsCreativesDealAssociationsAdd
    :: Text -- ^ 'acdaaCreativeId'
    -> AddDealAssociationRequest -- ^ 'acdaaPayload'
    -> Text -- ^ 'acdaaAccountId'
    -> AccountsCreativesDealAssociationsAdd
accountsCreativesDealAssociationsAdd pAcdaaCreativeId_ pAcdaaPayload_ pAcdaaAccountId_ =
  AccountsCreativesDealAssociationsAdd'
    { _acdaaXgafv = Nothing
    , _acdaaUploadProtocol = Nothing
    , _acdaaAccessToken = Nothing
    , _acdaaUploadType = Nothing
    , _acdaaCreativeId = pAcdaaCreativeId_
    , _acdaaPayload = pAcdaaPayload_
    , _acdaaAccountId = pAcdaaAccountId_
    , _acdaaCallback = Nothing
    }

-- | V1 error format.
acdaaXgafv :: Lens' AccountsCreativesDealAssociationsAdd (Maybe Xgafv)
acdaaXgafv
  = lens _acdaaXgafv (\ s a -> s{_acdaaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acdaaUploadProtocol :: Lens' AccountsCreativesDealAssociationsAdd (Maybe Text)
acdaaUploadProtocol
  = lens _acdaaUploadProtocol
      (\ s a -> s{_acdaaUploadProtocol = a})

-- | OAuth access token.
acdaaAccessToken :: Lens' AccountsCreativesDealAssociationsAdd (Maybe Text)
acdaaAccessToken
  = lens _acdaaAccessToken
      (\ s a -> s{_acdaaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acdaaUploadType :: Lens' AccountsCreativesDealAssociationsAdd (Maybe Text)
acdaaUploadType
  = lens _acdaaUploadType
      (\ s a -> s{_acdaaUploadType = a})

-- | The ID of the creative associated with the deal.
acdaaCreativeId :: Lens' AccountsCreativesDealAssociationsAdd Text
acdaaCreativeId
  = lens _acdaaCreativeId
      (\ s a -> s{_acdaaCreativeId = a})

-- | Multipart request metadata.
acdaaPayload :: Lens' AccountsCreativesDealAssociationsAdd AddDealAssociationRequest
acdaaPayload
  = lens _acdaaPayload (\ s a -> s{_acdaaPayload = a})

-- | The account the creative belongs to.
acdaaAccountId :: Lens' AccountsCreativesDealAssociationsAdd Text
acdaaAccountId
  = lens _acdaaAccountId
      (\ s a -> s{_acdaaAccountId = a})

-- | JSONP
acdaaCallback :: Lens' AccountsCreativesDealAssociationsAdd (Maybe Text)
acdaaCallback
  = lens _acdaaCallback
      (\ s a -> s{_acdaaCallback = a})

instance GoogleRequest
           AccountsCreativesDealAssociationsAdd
         where
        type Rs AccountsCreativesDealAssociationsAdd = Empty
        type Scopes AccountsCreativesDealAssociationsAdd =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          AccountsCreativesDealAssociationsAdd'{..}
          = go _acdaaAccountId _acdaaCreativeId _acdaaXgafv
              _acdaaUploadProtocol
              _acdaaAccessToken
              _acdaaUploadType
              _acdaaCallback
              (Just AltJSON)
              _acdaaPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsCreativesDealAssociationsAddResource)
                      mempty
