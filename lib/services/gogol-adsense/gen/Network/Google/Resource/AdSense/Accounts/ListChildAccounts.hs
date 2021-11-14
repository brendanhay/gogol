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
-- Module      : Network.Google.Resource.AdSense.Accounts.ListChildAccounts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts directly managed by the given AdSense account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.listChildAccounts@.
module Network.Google.Resource.AdSense.Accounts.ListChildAccounts
    (
    -- * REST Resource
      AccountsListChildAccountsResource

    -- * Creating a Request
    , accountsListChildAccounts
    , AccountsListChildAccounts

    -- * Request Lenses
    , alcaParent
    , alcaXgafv
    , alcaUploadProtocol
    , alcaAccessToken
    , alcaUploadType
    , alcaPageToken
    , alcaPageSize
    , alcaCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.listChildAccounts@ method which the
-- 'AccountsListChildAccounts' request conforms to.
type AccountsListChildAccountsResource =
     "v2" :>
       CaptureMode "parent" "listChildAccounts" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListChildAccountsResponse

-- | Lists all accounts directly managed by the given AdSense account.
--
-- /See:/ 'accountsListChildAccounts' smart constructor.
data AccountsListChildAccounts =
  AccountsListChildAccounts'
    { _alcaParent :: !Text
    , _alcaXgafv :: !(Maybe Xgafv)
    , _alcaUploadProtocol :: !(Maybe Text)
    , _alcaAccessToken :: !(Maybe Text)
    , _alcaUploadType :: !(Maybe Text)
    , _alcaPageToken :: !(Maybe Text)
    , _alcaPageSize :: !(Maybe (Textual Int32))
    , _alcaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsListChildAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcaParent'
--
-- * 'alcaXgafv'
--
-- * 'alcaUploadProtocol'
--
-- * 'alcaAccessToken'
--
-- * 'alcaUploadType'
--
-- * 'alcaPageToken'
--
-- * 'alcaPageSize'
--
-- * 'alcaCallback'
accountsListChildAccounts
    :: Text -- ^ 'alcaParent'
    -> AccountsListChildAccounts
accountsListChildAccounts pAlcaParent_ =
  AccountsListChildAccounts'
    { _alcaParent = pAlcaParent_
    , _alcaXgafv = Nothing
    , _alcaUploadProtocol = Nothing
    , _alcaAccessToken = Nothing
    , _alcaUploadType = Nothing
    , _alcaPageToken = Nothing
    , _alcaPageSize = Nothing
    , _alcaCallback = Nothing
    }


-- | Required. The parent account, which owns the child accounts. Format:
-- accounts\/{account}
alcaParent :: Lens' AccountsListChildAccounts Text
alcaParent
  = lens _alcaParent (\ s a -> s{_alcaParent = a})

-- | V1 error format.
alcaXgafv :: Lens' AccountsListChildAccounts (Maybe Xgafv)
alcaXgafv
  = lens _alcaXgafv (\ s a -> s{_alcaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alcaUploadProtocol :: Lens' AccountsListChildAccounts (Maybe Text)
alcaUploadProtocol
  = lens _alcaUploadProtocol
      (\ s a -> s{_alcaUploadProtocol = a})

-- | OAuth access token.
alcaAccessToken :: Lens' AccountsListChildAccounts (Maybe Text)
alcaAccessToken
  = lens _alcaAccessToken
      (\ s a -> s{_alcaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alcaUploadType :: Lens' AccountsListChildAccounts (Maybe Text)
alcaUploadType
  = lens _alcaUploadType
      (\ s a -> s{_alcaUploadType = a})

-- | A page token, received from a previous \`ListAccounts\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListAccounts\` must match the call that
-- provided the page token.
alcaPageToken :: Lens' AccountsListChildAccounts (Maybe Text)
alcaPageToken
  = lens _alcaPageToken
      (\ s a -> s{_alcaPageToken = a})

-- | The maximum number of accounts to include in the response, used for
-- paging. If unspecified, at most 10000 accounts will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
alcaPageSize :: Lens' AccountsListChildAccounts (Maybe Int32)
alcaPageSize
  = lens _alcaPageSize (\ s a -> s{_alcaPageSize = a})
      . mapping _Coerce

-- | JSONP
alcaCallback :: Lens' AccountsListChildAccounts (Maybe Text)
alcaCallback
  = lens _alcaCallback (\ s a -> s{_alcaCallback = a})

instance GoogleRequest AccountsListChildAccounts
         where
        type Rs AccountsListChildAccounts =
             ListChildAccountsResponse
        type Scopes AccountsListChildAccounts =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsListChildAccounts'{..}
          = go _alcaParent _alcaXgafv _alcaUploadProtocol
              _alcaAccessToken
              _alcaUploadType
              _alcaPageToken
              _alcaPageSize
              _alcaCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsListChildAccountsResource)
                      mempty
