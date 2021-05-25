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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Environments of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.list@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.List
    (
    -- * REST Resource
      AccountsContainersEnvironmentsListResource

    -- * Creating a Request
    , accountsContainersEnvironmentsList
    , AccountsContainersEnvironmentsList

    -- * Request Lenses
    , acelParent
    , acelXgafv
    , acelUploadProtocol
    , acelAccessToken
    , acelUploadType
    , acelPageToken
    , acelCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.list@ method which the
-- 'AccountsContainersEnvironmentsList' request conforms to.
type AccountsContainersEnvironmentsListResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "environments" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListEnvironmentsResponse

-- | Lists all GTM Environments of a GTM Container.
--
-- /See:/ 'accountsContainersEnvironmentsList' smart constructor.
data AccountsContainersEnvironmentsList =
  AccountsContainersEnvironmentsList'
    { _acelParent :: !Text
    , _acelXgafv :: !(Maybe Xgafv)
    , _acelUploadProtocol :: !(Maybe Text)
    , _acelAccessToken :: !(Maybe Text)
    , _acelUploadType :: !(Maybe Text)
    , _acelPageToken :: !(Maybe Text)
    , _acelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acelParent'
--
-- * 'acelXgafv'
--
-- * 'acelUploadProtocol'
--
-- * 'acelAccessToken'
--
-- * 'acelUploadType'
--
-- * 'acelPageToken'
--
-- * 'acelCallback'
accountsContainersEnvironmentsList
    :: Text -- ^ 'acelParent'
    -> AccountsContainersEnvironmentsList
accountsContainersEnvironmentsList pAcelParent_ =
  AccountsContainersEnvironmentsList'
    { _acelParent = pAcelParent_
    , _acelXgafv = Nothing
    , _acelUploadProtocol = Nothing
    , _acelAccessToken = Nothing
    , _acelUploadType = Nothing
    , _acelPageToken = Nothing
    , _acelCallback = Nothing
    }


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acelParent :: Lens' AccountsContainersEnvironmentsList Text
acelParent
  = lens _acelParent (\ s a -> s{_acelParent = a})

-- | V1 error format.
acelXgafv :: Lens' AccountsContainersEnvironmentsList (Maybe Xgafv)
acelXgafv
  = lens _acelXgafv (\ s a -> s{_acelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acelUploadProtocol :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelUploadProtocol
  = lens _acelUploadProtocol
      (\ s a -> s{_acelUploadProtocol = a})

-- | OAuth access token.
acelAccessToken :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelAccessToken
  = lens _acelAccessToken
      (\ s a -> s{_acelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acelUploadType :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelUploadType
  = lens _acelUploadType
      (\ s a -> s{_acelUploadType = a})

-- | Continuation token for fetching the next page of results.
acelPageToken :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelPageToken
  = lens _acelPageToken
      (\ s a -> s{_acelPageToken = a})

-- | JSONP
acelCallback :: Lens' AccountsContainersEnvironmentsList (Maybe Text)
acelCallback
  = lens _acelCallback (\ s a -> s{_acelCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsList
         where
        type Rs AccountsContainersEnvironmentsList =
             ListEnvironmentsResponse
        type Scopes AccountsContainersEnvironmentsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersEnvironmentsList'{..}
          = go _acelParent _acelXgafv _acelUploadProtocol
              _acelAccessToken
              _acelUploadType
              _acelPageToken
              _acelCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsListResource)
                      mempty
