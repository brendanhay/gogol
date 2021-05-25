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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Delete
    (
    -- * REST Resource
      AccountsContainersEnvironmentsDeleteResource

    -- * Creating a Request
    , accountsContainersEnvironmentsDelete
    , AccountsContainersEnvironmentsDelete

    -- * Request Lenses
    , acedXgafv
    , acedUploadProtocol
    , acedPath
    , acedAccessToken
    , acedUploadType
    , acedCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.delete@ method which the
-- 'AccountsContainersEnvironmentsDelete' request conforms to.
type AccountsContainersEnvironmentsDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsDelete' smart constructor.
data AccountsContainersEnvironmentsDelete =
  AccountsContainersEnvironmentsDelete'
    { _acedXgafv :: !(Maybe Xgafv)
    , _acedUploadProtocol :: !(Maybe Text)
    , _acedPath :: !Text
    , _acedAccessToken :: !(Maybe Text)
    , _acedUploadType :: !(Maybe Text)
    , _acedCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acedXgafv'
--
-- * 'acedUploadProtocol'
--
-- * 'acedPath'
--
-- * 'acedAccessToken'
--
-- * 'acedUploadType'
--
-- * 'acedCallback'
accountsContainersEnvironmentsDelete
    :: Text -- ^ 'acedPath'
    -> AccountsContainersEnvironmentsDelete
accountsContainersEnvironmentsDelete pAcedPath_ =
  AccountsContainersEnvironmentsDelete'
    { _acedXgafv = Nothing
    , _acedUploadProtocol = Nothing
    , _acedPath = pAcedPath_
    , _acedAccessToken = Nothing
    , _acedUploadType = Nothing
    , _acedCallback = Nothing
    }


-- | V1 error format.
acedXgafv :: Lens' AccountsContainersEnvironmentsDelete (Maybe Xgafv)
acedXgafv
  = lens _acedXgafv (\ s a -> s{_acedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acedUploadProtocol :: Lens' AccountsContainersEnvironmentsDelete (Maybe Text)
acedUploadProtocol
  = lens _acedUploadProtocol
      (\ s a -> s{_acedUploadProtocol = a})

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acedPath :: Lens' AccountsContainersEnvironmentsDelete Text
acedPath = lens _acedPath (\ s a -> s{_acedPath = a})

-- | OAuth access token.
acedAccessToken :: Lens' AccountsContainersEnvironmentsDelete (Maybe Text)
acedAccessToken
  = lens _acedAccessToken
      (\ s a -> s{_acedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acedUploadType :: Lens' AccountsContainersEnvironmentsDelete (Maybe Text)
acedUploadType
  = lens _acedUploadType
      (\ s a -> s{_acedUploadType = a})

-- | JSONP
acedCallback :: Lens' AccountsContainersEnvironmentsDelete (Maybe Text)
acedCallback
  = lens _acedCallback (\ s a -> s{_acedCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsDelete
         where
        type Rs AccountsContainersEnvironmentsDelete = ()
        type Scopes AccountsContainersEnvironmentsDelete =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsDelete'{..}
          = go _acedPath _acedXgafv _acedUploadProtocol
              _acedAccessToken
              _acedUploadType
              _acedCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsDeleteResource)
                      mempty
