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
-- Module      : Network.Google.Resource.TagManager.Accounts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Accounts that a user has access to.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.list@.
module Network.Google.Resource.TagManager.Accounts.List
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
    , alCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "tagmanager" :>
       "v2" :>
         "accounts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListAccountsResponse

-- | Lists all GTM Accounts that a user has access to.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList =
  AccountsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
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

-- | Continuation token for fetching the next page of results.
alPageToken :: Lens' AccountsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | JSONP
alCallback :: Lens' AccountsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AccountsList where
        type Rs AccountsList = ListAccountsResponse
        type Scopes AccountsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.manage.accounts",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsList'{..}
          = go _alXgafv _alUploadProtocol _alAccessToken
              _alUploadType
              _alPageToken
              _alCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
