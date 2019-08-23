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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Get
    (
    -- * REST Resource
      AccountsCreativesGetResource

    -- * Creating a Request
    , accountsCreativesGet
    , AccountsCreativesGet

    -- * Request Lenses
    , acgXgafv
    , acgUploadProtocol
    , acgAccessToken
    , acgUploadType
    , acgCreativeId
    , acgAccountId
    , acgCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.get@ method which the
-- 'AccountsCreativesGet' request conforms to.
type AccountsCreativesGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets a creative.
--
-- /See:/ 'accountsCreativesGet' smart constructor.
data AccountsCreativesGet =
  AccountsCreativesGet'
    { _acgXgafv          :: !(Maybe Xgafv)
    , _acgUploadProtocol :: !(Maybe Text)
    , _acgAccessToken    :: !(Maybe Text)
    , _acgUploadType     :: !(Maybe Text)
    , _acgCreativeId     :: !Text
    , _acgAccountId      :: !Text
    , _acgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCreativesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgXgafv'
--
-- * 'acgUploadProtocol'
--
-- * 'acgAccessToken'
--
-- * 'acgUploadType'
--
-- * 'acgCreativeId'
--
-- * 'acgAccountId'
--
-- * 'acgCallback'
accountsCreativesGet
    :: Text -- ^ 'acgCreativeId'
    -> Text -- ^ 'acgAccountId'
    -> AccountsCreativesGet
accountsCreativesGet pAcgCreativeId_ pAcgAccountId_ =
  AccountsCreativesGet'
    { _acgXgafv = Nothing
    , _acgUploadProtocol = Nothing
    , _acgAccessToken = Nothing
    , _acgUploadType = Nothing
    , _acgCreativeId = pAcgCreativeId_
    , _acgAccountId = pAcgAccountId_
    , _acgCallback = Nothing
    }


-- | V1 error format.
acgXgafv :: Lens' AccountsCreativesGet (Maybe Xgafv)
acgXgafv = lens _acgXgafv (\ s a -> s{_acgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acgUploadProtocol :: Lens' AccountsCreativesGet (Maybe Text)
acgUploadProtocol
  = lens _acgUploadProtocol
      (\ s a -> s{_acgUploadProtocol = a})

-- | OAuth access token.
acgAccessToken :: Lens' AccountsCreativesGet (Maybe Text)
acgAccessToken
  = lens _acgAccessToken
      (\ s a -> s{_acgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acgUploadType :: Lens' AccountsCreativesGet (Maybe Text)
acgUploadType
  = lens _acgUploadType
      (\ s a -> s{_acgUploadType = a})

-- | The ID of the creative to retrieve.
acgCreativeId :: Lens' AccountsCreativesGet Text
acgCreativeId
  = lens _acgCreativeId
      (\ s a -> s{_acgCreativeId = a})

-- | The account the creative belongs to.
acgAccountId :: Lens' AccountsCreativesGet Text
acgAccountId
  = lens _acgAccountId (\ s a -> s{_acgAccountId = a})

-- | JSONP
acgCallback :: Lens' AccountsCreativesGet (Maybe Text)
acgCallback
  = lens _acgCallback (\ s a -> s{_acgCallback = a})

instance GoogleRequest AccountsCreativesGet where
        type Rs AccountsCreativesGet = Creative
        type Scopes AccountsCreativesGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesGet'{..}
          = go _acgAccountId _acgCreativeId _acgXgafv
              _acgUploadProtocol
              _acgAccessToken
              _acgUploadType
              _acgCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCreativesGetResource)
                      mempty
