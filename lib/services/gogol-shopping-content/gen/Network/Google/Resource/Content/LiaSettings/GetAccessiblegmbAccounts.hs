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
-- Module      : Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of accessible Google My Business accounts.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.getaccessiblegmbaccounts@.
module Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
    (
    -- * REST Resource
      LiaSettingsGetAccessiblegmbAccountsResource

    -- * Creating a Request
    , liaSettingsGetAccessiblegmbAccounts
    , LiaSettingsGetAccessiblegmbAccounts

    -- * Request Lenses
    , lsgaaXgafv
    , lsgaaMerchantId
    , lsgaaUploadProtocol
    , lsgaaAccessToken
    , lsgaaUploadType
    , lsgaaAccountId
    , lsgaaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.getaccessiblegmbaccounts@ method which the
-- 'LiaSettingsGetAccessiblegmbAccounts' request conforms to.
type LiaSettingsGetAccessiblegmbAccountsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "accessiblegmbaccounts" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               LiaSettingsGetAccessibleGmbAccountsResponse

-- | Retrieves the list of accessible Google My Business accounts.
--
-- /See:/ 'liaSettingsGetAccessiblegmbAccounts' smart constructor.
data LiaSettingsGetAccessiblegmbAccounts =
  LiaSettingsGetAccessiblegmbAccounts'
    { _lsgaaXgafv :: !(Maybe Xgafv)
    , _lsgaaMerchantId :: !(Textual Word64)
    , _lsgaaUploadProtocol :: !(Maybe Text)
    , _lsgaaAccessToken :: !(Maybe Text)
    , _lsgaaUploadType :: !(Maybe Text)
    , _lsgaaAccountId :: !(Textual Word64)
    , _lsgaaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsGetAccessiblegmbAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgaaXgafv'
--
-- * 'lsgaaMerchantId'
--
-- * 'lsgaaUploadProtocol'
--
-- * 'lsgaaAccessToken'
--
-- * 'lsgaaUploadType'
--
-- * 'lsgaaAccountId'
--
-- * 'lsgaaCallback'
liaSettingsGetAccessiblegmbAccounts
    :: Word64 -- ^ 'lsgaaMerchantId'
    -> Word64 -- ^ 'lsgaaAccountId'
    -> LiaSettingsGetAccessiblegmbAccounts
liaSettingsGetAccessiblegmbAccounts pLsgaaMerchantId_ pLsgaaAccountId_ =
  LiaSettingsGetAccessiblegmbAccounts'
    { _lsgaaXgafv = Nothing
    , _lsgaaMerchantId = _Coerce # pLsgaaMerchantId_
    , _lsgaaUploadProtocol = Nothing
    , _lsgaaAccessToken = Nothing
    , _lsgaaUploadType = Nothing
    , _lsgaaAccountId = _Coerce # pLsgaaAccountId_
    , _lsgaaCallback = Nothing
    }


-- | V1 error format.
lsgaaXgafv :: Lens' LiaSettingsGetAccessiblegmbAccounts (Maybe Xgafv)
lsgaaXgafv
  = lens _lsgaaXgafv (\ s a -> s{_lsgaaXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
lsgaaMerchantId :: Lens' LiaSettingsGetAccessiblegmbAccounts Word64
lsgaaMerchantId
  = lens _lsgaaMerchantId
      (\ s a -> s{_lsgaaMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsgaaUploadProtocol :: Lens' LiaSettingsGetAccessiblegmbAccounts (Maybe Text)
lsgaaUploadProtocol
  = lens _lsgaaUploadProtocol
      (\ s a -> s{_lsgaaUploadProtocol = a})

-- | OAuth access token.
lsgaaAccessToken :: Lens' LiaSettingsGetAccessiblegmbAccounts (Maybe Text)
lsgaaAccessToken
  = lens _lsgaaAccessToken
      (\ s a -> s{_lsgaaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsgaaUploadType :: Lens' LiaSettingsGetAccessiblegmbAccounts (Maybe Text)
lsgaaUploadType
  = lens _lsgaaUploadType
      (\ s a -> s{_lsgaaUploadType = a})

-- | The ID of the account for which to retrieve accessible Google My
-- Business accounts.
lsgaaAccountId :: Lens' LiaSettingsGetAccessiblegmbAccounts Word64
lsgaaAccountId
  = lens _lsgaaAccountId
      (\ s a -> s{_lsgaaAccountId = a})
      . _Coerce

-- | JSONP
lsgaaCallback :: Lens' LiaSettingsGetAccessiblegmbAccounts (Maybe Text)
lsgaaCallback
  = lens _lsgaaCallback
      (\ s a -> s{_lsgaaCallback = a})

instance GoogleRequest
           LiaSettingsGetAccessiblegmbAccounts
         where
        type Rs LiaSettingsGetAccessiblegmbAccounts =
             LiaSettingsGetAccessibleGmbAccountsResponse
        type Scopes LiaSettingsGetAccessiblegmbAccounts =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          LiaSettingsGetAccessiblegmbAccounts'{..}
          = go _lsgaaMerchantId _lsgaaAccountId _lsgaaXgafv
              _lsgaaUploadProtocol
              _lsgaaAccessToken
              _lsgaaUploadType
              _lsgaaCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LiaSettingsGetAccessiblegmbAccountsResource)
                      mempty
