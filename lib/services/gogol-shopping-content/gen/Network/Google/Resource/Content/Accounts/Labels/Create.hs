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
-- Module      : Network.Google.Resource.Content.Accounts.Labels.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new label, not assigned to any account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.create@.
module Network.Google.Resource.Content.Accounts.Labels.Create
    (
    -- * REST Resource
      AccountsLabelsCreateResource

    -- * Creating a Request
    , accountsLabelsCreate
    , AccountsLabelsCreate

    -- * Request Lenses
    , alcXgafv
    , alcUploadProtocol
    , alcAccessToken
    , alcUploadType
    , alcPayload
    , alcAccountId
    , alcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.create@ method which the
-- 'AccountsLabelsCreate' request conforms to.
type AccountsLabelsCreateResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "labels" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountLabel :>
                             Post '[JSON] AccountLabel

-- | Creates a new label, not assigned to any account.
--
-- /See:/ 'accountsLabelsCreate' smart constructor.
data AccountsLabelsCreate =
  AccountsLabelsCreate'
    { _alcXgafv :: !(Maybe Xgafv)
    , _alcUploadProtocol :: !(Maybe Text)
    , _alcAccessToken :: !(Maybe Text)
    , _alcUploadType :: !(Maybe Text)
    , _alcPayload :: !AccountLabel
    , _alcAccountId :: !(Textual Int64)
    , _alcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLabelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcXgafv'
--
-- * 'alcUploadProtocol'
--
-- * 'alcAccessToken'
--
-- * 'alcUploadType'
--
-- * 'alcPayload'
--
-- * 'alcAccountId'
--
-- * 'alcCallback'
accountsLabelsCreate
    :: AccountLabel -- ^ 'alcPayload'
    -> Int64 -- ^ 'alcAccountId'
    -> AccountsLabelsCreate
accountsLabelsCreate pAlcPayload_ pAlcAccountId_ =
  AccountsLabelsCreate'
    { _alcXgafv = Nothing
    , _alcUploadProtocol = Nothing
    , _alcAccessToken = Nothing
    , _alcUploadType = Nothing
    , _alcPayload = pAlcPayload_
    , _alcAccountId = _Coerce # pAlcAccountId_
    , _alcCallback = Nothing
    }


-- | V1 error format.
alcXgafv :: Lens' AccountsLabelsCreate (Maybe Xgafv)
alcXgafv = lens _alcXgafv (\ s a -> s{_alcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alcUploadProtocol :: Lens' AccountsLabelsCreate (Maybe Text)
alcUploadProtocol
  = lens _alcUploadProtocol
      (\ s a -> s{_alcUploadProtocol = a})

-- | OAuth access token.
alcAccessToken :: Lens' AccountsLabelsCreate (Maybe Text)
alcAccessToken
  = lens _alcAccessToken
      (\ s a -> s{_alcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alcUploadType :: Lens' AccountsLabelsCreate (Maybe Text)
alcUploadType
  = lens _alcUploadType
      (\ s a -> s{_alcUploadType = a})

-- | Multipart request metadata.
alcPayload :: Lens' AccountsLabelsCreate AccountLabel
alcPayload
  = lens _alcPayload (\ s a -> s{_alcPayload = a})

-- | Required. The id of the account this label belongs to.
alcAccountId :: Lens' AccountsLabelsCreate Int64
alcAccountId
  = lens _alcAccountId (\ s a -> s{_alcAccountId = a})
      . _Coerce

-- | JSONP
alcCallback :: Lens' AccountsLabelsCreate (Maybe Text)
alcCallback
  = lens _alcCallback (\ s a -> s{_alcCallback = a})

instance GoogleRequest AccountsLabelsCreate where
        type Rs AccountsLabelsCreate = AccountLabel
        type Scopes AccountsLabelsCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsLabelsCreate'{..}
          = go _alcAccountId _alcXgafv _alcUploadProtocol
              _alcAccessToken
              _alcUploadType
              _alcCallback
              (Just AltJSON)
              _alcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsLabelsCreateResource)
                      mempty
