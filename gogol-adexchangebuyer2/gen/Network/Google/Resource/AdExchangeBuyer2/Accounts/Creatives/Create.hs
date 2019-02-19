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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.create@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Creatives.Create
    (
    -- * REST Resource
      AccountsCreativesCreateResource

    -- * Creating a Request
    , accountsCreativesCreate
    , AccountsCreativesCreate

    -- * Request Lenses
    , acccXgafv
    , acccUploadProtocol
    , acccAccessToken
    , acccUploadType
    , acccPayload
    , acccAccountId
    , acccDuplicateIdMode
    , acccCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.creatives.create@ method which the
-- 'AccountsCreativesCreate' request conforms to.
type AccountsCreativesCreateResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "creatives" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "duplicateIdMode" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Creates a creative.
--
-- /See:/ 'accountsCreativesCreate' smart constructor.
data AccountsCreativesCreate =
  AccountsCreativesCreate'
    { _acccXgafv           :: !(Maybe Xgafv)
    , _acccUploadProtocol  :: !(Maybe Text)
    , _acccAccessToken     :: !(Maybe Text)
    , _acccUploadType      :: !(Maybe Text)
    , _acccPayload         :: !Creative
    , _acccAccountId       :: !Text
    , _acccDuplicateIdMode :: !(Maybe Text)
    , _acccCallback        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCreativesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccXgafv'
--
-- * 'acccUploadProtocol'
--
-- * 'acccAccessToken'
--
-- * 'acccUploadType'
--
-- * 'acccPayload'
--
-- * 'acccAccountId'
--
-- * 'acccDuplicateIdMode'
--
-- * 'acccCallback'
accountsCreativesCreate
    :: Creative -- ^ 'acccPayload'
    -> Text -- ^ 'acccAccountId'
    -> AccountsCreativesCreate
accountsCreativesCreate pAcccPayload_ pAcccAccountId_ =
  AccountsCreativesCreate'
    { _acccXgafv = Nothing
    , _acccUploadProtocol = Nothing
    , _acccAccessToken = Nothing
    , _acccUploadType = Nothing
    , _acccPayload = pAcccPayload_
    , _acccAccountId = pAcccAccountId_
    , _acccDuplicateIdMode = Nothing
    , _acccCallback = Nothing
    }

-- | V1 error format.
acccXgafv :: Lens' AccountsCreativesCreate (Maybe Xgafv)
acccXgafv
  = lens _acccXgafv (\ s a -> s{_acccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acccUploadProtocol :: Lens' AccountsCreativesCreate (Maybe Text)
acccUploadProtocol
  = lens _acccUploadProtocol
      (\ s a -> s{_acccUploadProtocol = a})

-- | OAuth access token.
acccAccessToken :: Lens' AccountsCreativesCreate (Maybe Text)
acccAccessToken
  = lens _acccAccessToken
      (\ s a -> s{_acccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acccUploadType :: Lens' AccountsCreativesCreate (Maybe Text)
acccUploadType
  = lens _acccUploadType
      (\ s a -> s{_acccUploadType = a})

-- | Multipart request metadata.
acccPayload :: Lens' AccountsCreativesCreate Creative
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | The account that this creative belongs to. Can be used to filter the
-- response of the creatives.list method.
acccAccountId :: Lens' AccountsCreativesCreate Text
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

-- | Indicates if multiple creatives can share an ID or not. Default is
-- NO_DUPLICATES (one ID per creative).
acccDuplicateIdMode :: Lens' AccountsCreativesCreate (Maybe Text)
acccDuplicateIdMode
  = lens _acccDuplicateIdMode
      (\ s a -> s{_acccDuplicateIdMode = a})

-- | JSONP
acccCallback :: Lens' AccountsCreativesCreate (Maybe Text)
acccCallback
  = lens _acccCallback (\ s a -> s{_acccCallback = a})

instance GoogleRequest AccountsCreativesCreate where
        type Rs AccountsCreativesCreate = Creative
        type Scopes AccountsCreativesCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsCreativesCreate'{..}
          = go _acccAccountId _acccXgafv _acccUploadProtocol
              _acccAccessToken
              _acccUploadType
              _acccDuplicateIdMode
              _acccCallback
              (Just AltJSON)
              _acccPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsCreativesCreateResource)
                      mempty
