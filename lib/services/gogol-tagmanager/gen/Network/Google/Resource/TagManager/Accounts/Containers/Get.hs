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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.get@.
module Network.Google.Resource.TagManager.Accounts.Containers.Get
    (
    -- * REST Resource
      AccountsContainersGetResource

    -- * Creating a Request
    , accountsContainersGet
    , AccountsContainersGet

    -- * Request Lenses
    , acgXgafv
    , acgUploadProtocol
    , acgPath
    , acgAccessToken
    , acgUploadType
    , acgCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.get@ method which the
-- 'AccountsContainersGet' request conforms to.
type AccountsContainersGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Container

-- | Gets a Container.
--
-- /See:/ 'accountsContainersGet' smart constructor.
data AccountsContainersGet =
  AccountsContainersGet'
    { _acgXgafv :: !(Maybe Xgafv)
    , _acgUploadProtocol :: !(Maybe Text)
    , _acgPath :: !Text
    , _acgAccessToken :: !(Maybe Text)
    , _acgUploadType :: !(Maybe Text)
    , _acgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgXgafv'
--
-- * 'acgUploadProtocol'
--
-- * 'acgPath'
--
-- * 'acgAccessToken'
--
-- * 'acgUploadType'
--
-- * 'acgCallback'
accountsContainersGet
    :: Text -- ^ 'acgPath'
    -> AccountsContainersGet
accountsContainersGet pAcgPath_ =
  AccountsContainersGet'
    { _acgXgafv = Nothing
    , _acgUploadProtocol = Nothing
    , _acgPath = pAcgPath_
    , _acgAccessToken = Nothing
    , _acgUploadType = Nothing
    , _acgCallback = Nothing
    }


-- | V1 error format.
acgXgafv :: Lens' AccountsContainersGet (Maybe Xgafv)
acgXgafv = lens _acgXgafv (\ s a -> s{_acgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acgUploadProtocol :: Lens' AccountsContainersGet (Maybe Text)
acgUploadProtocol
  = lens _acgUploadProtocol
      (\ s a -> s{_acgUploadProtocol = a})

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acgPath :: Lens' AccountsContainersGet Text
acgPath = lens _acgPath (\ s a -> s{_acgPath = a})

-- | OAuth access token.
acgAccessToken :: Lens' AccountsContainersGet (Maybe Text)
acgAccessToken
  = lens _acgAccessToken
      (\ s a -> s{_acgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acgUploadType :: Lens' AccountsContainersGet (Maybe Text)
acgUploadType
  = lens _acgUploadType
      (\ s a -> s{_acgUploadType = a})

-- | JSONP
acgCallback :: Lens' AccountsContainersGet (Maybe Text)
acgCallback
  = lens _acgCallback (\ s a -> s{_acgCallback = a})

instance GoogleRequest AccountsContainersGet where
        type Rs AccountsContainersGet = Container
        type Scopes AccountsContainersGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersGet'{..}
          = go _acgPath _acgXgafv _acgUploadProtocol
              _acgAccessToken
              _acgUploadType
              _acgCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersGetResource)
                      mempty
