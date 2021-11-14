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
-- Module      : Network.Google.Resource.Content.Accounts.Labels.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a label.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.patch@.
module Network.Google.Resource.Content.Accounts.Labels.Patch
    (
    -- * REST Resource
      AccountsLabelsPatchResource

    -- * Creating a Request
    , accountsLabelsPatch
    , AccountsLabelsPatch

    -- * Request Lenses
    , alpXgafv
    , alpUploadProtocol
    , alpAccessToken
    , alpUploadType
    , alpPayload
    , alpAccountId
    , alpLabelId
    , alpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.patch@ method which the
-- 'AccountsLabelsPatch' request conforms to.
type AccountsLabelsPatchResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "labels" :>
               Capture "labelId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccountLabel :>
                               Patch '[JSON] AccountLabel

-- | Updates a label.
--
-- /See:/ 'accountsLabelsPatch' smart constructor.
data AccountsLabelsPatch =
  AccountsLabelsPatch'
    { _alpXgafv :: !(Maybe Xgafv)
    , _alpUploadProtocol :: !(Maybe Text)
    , _alpAccessToken :: !(Maybe Text)
    , _alpUploadType :: !(Maybe Text)
    , _alpPayload :: !AccountLabel
    , _alpAccountId :: !(Textual Int64)
    , _alpLabelId :: !(Textual Int64)
    , _alpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLabelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpXgafv'
--
-- * 'alpUploadProtocol'
--
-- * 'alpAccessToken'
--
-- * 'alpUploadType'
--
-- * 'alpPayload'
--
-- * 'alpAccountId'
--
-- * 'alpLabelId'
--
-- * 'alpCallback'
accountsLabelsPatch
    :: AccountLabel -- ^ 'alpPayload'
    -> Int64 -- ^ 'alpAccountId'
    -> Int64 -- ^ 'alpLabelId'
    -> AccountsLabelsPatch
accountsLabelsPatch pAlpPayload_ pAlpAccountId_ pAlpLabelId_ =
  AccountsLabelsPatch'
    { _alpXgafv = Nothing
    , _alpUploadProtocol = Nothing
    , _alpAccessToken = Nothing
    , _alpUploadType = Nothing
    , _alpPayload = pAlpPayload_
    , _alpAccountId = _Coerce # pAlpAccountId_
    , _alpLabelId = _Coerce # pAlpLabelId_
    , _alpCallback = Nothing
    }


-- | V1 error format.
alpXgafv :: Lens' AccountsLabelsPatch (Maybe Xgafv)
alpXgafv = lens _alpXgafv (\ s a -> s{_alpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alpUploadProtocol :: Lens' AccountsLabelsPatch (Maybe Text)
alpUploadProtocol
  = lens _alpUploadProtocol
      (\ s a -> s{_alpUploadProtocol = a})

-- | OAuth access token.
alpAccessToken :: Lens' AccountsLabelsPatch (Maybe Text)
alpAccessToken
  = lens _alpAccessToken
      (\ s a -> s{_alpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alpUploadType :: Lens' AccountsLabelsPatch (Maybe Text)
alpUploadType
  = lens _alpUploadType
      (\ s a -> s{_alpUploadType = a})

-- | Multipart request metadata.
alpPayload :: Lens' AccountsLabelsPatch AccountLabel
alpPayload
  = lens _alpPayload (\ s a -> s{_alpPayload = a})

-- | Required. The id of the account this label belongs to.
alpAccountId :: Lens' AccountsLabelsPatch Int64
alpAccountId
  = lens _alpAccountId (\ s a -> s{_alpAccountId = a})
      . _Coerce

-- | Required. The id of the label to update.
alpLabelId :: Lens' AccountsLabelsPatch Int64
alpLabelId
  = lens _alpLabelId (\ s a -> s{_alpLabelId = a}) .
      _Coerce

-- | JSONP
alpCallback :: Lens' AccountsLabelsPatch (Maybe Text)
alpCallback
  = lens _alpCallback (\ s a -> s{_alpCallback = a})

instance GoogleRequest AccountsLabelsPatch where
        type Rs AccountsLabelsPatch = AccountLabel
        type Scopes AccountsLabelsPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsLabelsPatch'{..}
          = go _alpAccountId _alpLabelId _alpXgafv
              _alpUploadProtocol
              _alpAccessToken
              _alpUploadType
              _alpCallback
              (Just AltJSON)
              _alpPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsLabelsPatchResource)
                      mempty
