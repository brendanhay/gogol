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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.update@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Update
    (
    -- * REST Resource
      AccountsCreativesUpdateResource

    -- * Creating a Request
    , accountsCreativesUpdate
    , AccountsCreativesUpdate

    -- * Request Lenses
    , acucXgafv
    , acucUploadProtocol
    , acucAccessToken
    , acucUploadType
    , acucCreativeId
    , acucPayload
    , acucAccountId
    , acucCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.update@ method which the
-- 'AccountsCreativesUpdate' request conforms to.
type AccountsCreativesUpdateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             Capture "creativeId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Put '[JSON] Creative

-- | Updates a creative.
--
-- /See:/ 'accountsCreativesUpdate' smart constructor.
data AccountsCreativesUpdate = AccountsCreativesUpdate'
    { _acucXgafv          :: !(Maybe Xgafv)
    , _acucUploadProtocol :: !(Maybe Text)
    , _acucAccessToken    :: !(Maybe Text)
    , _acucUploadType     :: !(Maybe Text)
    , _acucCreativeId     :: !Text
    , _acucPayload        :: !Creative
    , _acucAccountId      :: !Text
    , _acucCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCreativesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acucXgafv'
--
-- * 'acucUploadProtocol'
--
-- * 'acucAccessToken'
--
-- * 'acucUploadType'
--
-- * 'acucCreativeId'
--
-- * 'acucPayload'
--
-- * 'acucAccountId'
--
-- * 'acucCallback'
accountsCreativesUpdate
    :: Text -- ^ 'acucCreativeId'
    -> Creative -- ^ 'acucPayload'
    -> Text -- ^ 'acucAccountId'
    -> AccountsCreativesUpdate
accountsCreativesUpdate pAcucCreativeId_ pAcucPayload_ pAcucAccountId_ =
    AccountsCreativesUpdate'
    { _acucXgafv = Nothing
    , _acucUploadProtocol = Nothing
    , _acucAccessToken = Nothing
    , _acucUploadType = Nothing
    , _acucCreativeId = pAcucCreativeId_
    , _acucPayload = pAcucPayload_
    , _acucAccountId = pAcucAccountId_
    , _acucCallback = Nothing
    }

-- | V1 error format.
acucXgafv :: Lens' AccountsCreativesUpdate (Maybe Xgafv)
acucXgafv
  = lens _acucXgafv (\ s a -> s{_acucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acucUploadProtocol :: Lens' AccountsCreativesUpdate (Maybe Text)
acucUploadProtocol
  = lens _acucUploadProtocol
      (\ s a -> s{_acucUploadProtocol = a})

-- | OAuth access token.
acucAccessToken :: Lens' AccountsCreativesUpdate (Maybe Text)
acucAccessToken
  = lens _acucAccessToken
      (\ s a -> s{_acucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acucUploadType :: Lens' AccountsCreativesUpdate (Maybe Text)
acucUploadType
  = lens _acucUploadType
      (\ s a -> s{_acucUploadType = a})

-- | The buyer-defined creative ID of this creative. Can be used to filter
-- the response of the creatives.list method.
acucCreativeId :: Lens' AccountsCreativesUpdate Text
acucCreativeId
  = lens _acucCreativeId
      (\ s a -> s{_acucCreativeId = a})

-- | Multipart request metadata.
acucPayload :: Lens' AccountsCreativesUpdate Creative
acucPayload
  = lens _acucPayload (\ s a -> s{_acucPayload = a})

-- | The account that this creative belongs to. Can be used to filter the
-- response of the creatives.list method.
acucAccountId :: Lens' AccountsCreativesUpdate Text
acucAccountId
  = lens _acucAccountId
      (\ s a -> s{_acucAccountId = a})

-- | JSONP
acucCallback :: Lens' AccountsCreativesUpdate (Maybe Text)
acucCallback
  = lens _acucCallback (\ s a -> s{_acucCallback = a})

instance GoogleRequest AccountsCreativesUpdate where
        type Rs AccountsCreativesUpdate = Creative
        type Scopes AccountsCreativesUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesUpdate'{..}
          = go _acucAccountId _acucCreativeId _acucXgafv
              _acucUploadProtocol
              _acucAccessToken
              _acucUploadType
              _acucCallback
              (Just AltJSON)
              _acucPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCreativesUpdateResource)
                      mempty
