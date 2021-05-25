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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.version_headers.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.VersionHeaders.List
    (
    -- * REST Resource
      AccountsContainersVersionHeadersListResource

    -- * Creating a Request
    , accountsContainersVersionHeadersList
    , AccountsContainersVersionHeadersList

    -- * Request Lenses
    , acvhlcParent
    , acvhlcXgafv
    , acvhlcUploadProtocol
    , acvhlcAccessToken
    , acvhlcUploadType
    , acvhlcPageToken
    , acvhlcIncludeDeleted
    , acvhlcCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.version_headers.list@ method which the
-- 'AccountsContainersVersionHeadersList' request conforms to.
type AccountsContainersVersionHeadersListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "version_headers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "includeDeleted" Bool :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionHeadersList' smart constructor.
data AccountsContainersVersionHeadersList =
  AccountsContainersVersionHeadersList'
    { _acvhlcParent :: !Text
    , _acvhlcXgafv :: !(Maybe Xgafv)
    , _acvhlcUploadProtocol :: !(Maybe Text)
    , _acvhlcAccessToken :: !(Maybe Text)
    , _acvhlcUploadType :: !(Maybe Text)
    , _acvhlcPageToken :: !(Maybe Text)
    , _acvhlcIncludeDeleted :: !(Maybe Bool)
    , _acvhlcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionHeadersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvhlcParent'
--
-- * 'acvhlcXgafv'
--
-- * 'acvhlcUploadProtocol'
--
-- * 'acvhlcAccessToken'
--
-- * 'acvhlcUploadType'
--
-- * 'acvhlcPageToken'
--
-- * 'acvhlcIncludeDeleted'
--
-- * 'acvhlcCallback'
accountsContainersVersionHeadersList
    :: Text -- ^ 'acvhlcParent'
    -> AccountsContainersVersionHeadersList
accountsContainersVersionHeadersList pAcvhlcParent_ =
  AccountsContainersVersionHeadersList'
    { _acvhlcParent = pAcvhlcParent_
    , _acvhlcXgafv = Nothing
    , _acvhlcUploadProtocol = Nothing
    , _acvhlcAccessToken = Nothing
    , _acvhlcUploadType = Nothing
    , _acvhlcPageToken = Nothing
    , _acvhlcIncludeDeleted = Nothing
    , _acvhlcCallback = Nothing
    }


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acvhlcParent :: Lens' AccountsContainersVersionHeadersList Text
acvhlcParent
  = lens _acvhlcParent (\ s a -> s{_acvhlcParent = a})

-- | V1 error format.
acvhlcXgafv :: Lens' AccountsContainersVersionHeadersList (Maybe Xgafv)
acvhlcXgafv
  = lens _acvhlcXgafv (\ s a -> s{_acvhlcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvhlcUploadProtocol :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
acvhlcUploadProtocol
  = lens _acvhlcUploadProtocol
      (\ s a -> s{_acvhlcUploadProtocol = a})

-- | OAuth access token.
acvhlcAccessToken :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
acvhlcAccessToken
  = lens _acvhlcAccessToken
      (\ s a -> s{_acvhlcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvhlcUploadType :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
acvhlcUploadType
  = lens _acvhlcUploadType
      (\ s a -> s{_acvhlcUploadType = a})

-- | Continuation token for fetching the next page of results.
acvhlcPageToken :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
acvhlcPageToken
  = lens _acvhlcPageToken
      (\ s a -> s{_acvhlcPageToken = a})

-- | Also retrieve deleted (archived) versions when true.
acvhlcIncludeDeleted :: Lens' AccountsContainersVersionHeadersList (Maybe Bool)
acvhlcIncludeDeleted
  = lens _acvhlcIncludeDeleted
      (\ s a -> s{_acvhlcIncludeDeleted = a})

-- | JSONP
acvhlcCallback :: Lens' AccountsContainersVersionHeadersList (Maybe Text)
acvhlcCallback
  = lens _acvhlcCallback
      (\ s a -> s{_acvhlcCallback = a})

instance GoogleRequest
           AccountsContainersVersionHeadersList
         where
        type Rs AccountsContainersVersionHeadersList =
             ListContainerVersionsResponse
        type Scopes AccountsContainersVersionHeadersList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.edit.containerversions",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient
          AccountsContainersVersionHeadersList'{..}
          = go _acvhlcParent _acvhlcXgafv _acvhlcUploadProtocol
              _acvhlcAccessToken
              _acvhlcUploadType
              _acvhlcPageToken
              _acvhlcIncludeDeleted
              _acvhlcCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionHeadersListResource)
                      mempty
