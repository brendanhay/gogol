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
-- Module      : Network.Google.Resource.AdSense.Accounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts available to this user.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.list@.
module Network.Google.Resource.AdSense.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alPageToken
    , alPageSize
    , alCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "v2" :>
       "accounts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListAccountsResponse

-- | Lists all accounts available to this user.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList =
  AccountsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alPageSize :: !(Maybe (Textual Int32))
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alPageToken'
--
-- * 'alPageSize'
--
-- * 'alCallback'
accountsList
    :: AccountsList
accountsList =
  AccountsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alPageToken = Nothing
    , _alPageSize = Nothing
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AccountsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AccountsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AccountsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AccountsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | A page token, received from a previous \`ListAccounts\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListAccounts\` must match the call that
-- provided the page token.
alPageToken :: Lens' AccountsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of accounts to include in the response, used for
-- paging. If unspecified, at most 10000 accounts will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
alPageSize :: Lens' AccountsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | JSONP
alCallback :: Lens' AccountsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AccountsList where
        type Rs AccountsList = ListAccountsResponse
        type Scopes AccountsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsList'{..}
          = go _alXgafv _alUploadProtocol _alAccessToken
              _alUploadType
              _alPageToken
              _alPageSize
              _alCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
