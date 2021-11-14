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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Get
    (
    -- * REST Resource
      AccountsContainersEnvironmentsGetResource

    -- * Creating a Request
    , accountsContainersEnvironmentsGet
    , AccountsContainersEnvironmentsGet

    -- * Request Lenses
    , acegXgafv
    , acegUploadProtocol
    , acegPath
    , acegAccessToken
    , acegUploadType
    , acegCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.get@ method which the
-- 'AccountsContainersEnvironmentsGet' request conforms to.
type AccountsContainersEnvironmentsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Environment

-- | Gets a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsGet' smart constructor.
data AccountsContainersEnvironmentsGet =
  AccountsContainersEnvironmentsGet'
    { _acegXgafv :: !(Maybe Xgafv)
    , _acegUploadProtocol :: !(Maybe Text)
    , _acegPath :: !Text
    , _acegAccessToken :: !(Maybe Text)
    , _acegUploadType :: !(Maybe Text)
    , _acegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acegXgafv'
--
-- * 'acegUploadProtocol'
--
-- * 'acegPath'
--
-- * 'acegAccessToken'
--
-- * 'acegUploadType'
--
-- * 'acegCallback'
accountsContainersEnvironmentsGet
    :: Text -- ^ 'acegPath'
    -> AccountsContainersEnvironmentsGet
accountsContainersEnvironmentsGet pAcegPath_ =
  AccountsContainersEnvironmentsGet'
    { _acegXgafv = Nothing
    , _acegUploadProtocol = Nothing
    , _acegPath = pAcegPath_
    , _acegAccessToken = Nothing
    , _acegUploadType = Nothing
    , _acegCallback = Nothing
    }


-- | V1 error format.
acegXgafv :: Lens' AccountsContainersEnvironmentsGet (Maybe Xgafv)
acegXgafv
  = lens _acegXgafv (\ s a -> s{_acegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acegUploadProtocol :: Lens' AccountsContainersEnvironmentsGet (Maybe Text)
acegUploadProtocol
  = lens _acegUploadProtocol
      (\ s a -> s{_acegUploadProtocol = a})

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acegPath :: Lens' AccountsContainersEnvironmentsGet Text
acegPath = lens _acegPath (\ s a -> s{_acegPath = a})

-- | OAuth access token.
acegAccessToken :: Lens' AccountsContainersEnvironmentsGet (Maybe Text)
acegAccessToken
  = lens _acegAccessToken
      (\ s a -> s{_acegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acegUploadType :: Lens' AccountsContainersEnvironmentsGet (Maybe Text)
acegUploadType
  = lens _acegUploadType
      (\ s a -> s{_acegUploadType = a})

-- | JSONP
acegCallback :: Lens' AccountsContainersEnvironmentsGet (Maybe Text)
acegCallback
  = lens _acegCallback (\ s a -> s{_acegCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsGet
         where
        type Rs AccountsContainersEnvironmentsGet =
             Environment
        type Scopes AccountsContainersEnvironmentsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersEnvironmentsGet'{..}
          = go _acegPath _acegXgafv _acegUploadProtocol
              _acegAccessToken
              _acegUploadType
              _acegCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsGetResource)
                      mempty
