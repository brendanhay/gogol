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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.delete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Delete
    (
    -- * REST Resource
      AccountsContainersDeleteResource

    -- * Creating a Request
    , accountsContainersDelete
    , AccountsContainersDelete

    -- * Request Lenses
    , acdXgafv
    , acdUploadProtocol
    , acdPath
    , acdAccessToken
    , acdUploadType
    , acdCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.delete@ method which the
-- 'AccountsContainersDelete' request conforms to.
type AccountsContainersDeleteResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container.
--
-- /See:/ 'accountsContainersDelete' smart constructor.
data AccountsContainersDelete =
  AccountsContainersDelete'
    { _acdXgafv :: !(Maybe Xgafv)
    , _acdUploadProtocol :: !(Maybe Text)
    , _acdPath :: !Text
    , _acdAccessToken :: !(Maybe Text)
    , _acdUploadType :: !(Maybe Text)
    , _acdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdXgafv'
--
-- * 'acdUploadProtocol'
--
-- * 'acdPath'
--
-- * 'acdAccessToken'
--
-- * 'acdUploadType'
--
-- * 'acdCallback'
accountsContainersDelete
    :: Text -- ^ 'acdPath'
    -> AccountsContainersDelete
accountsContainersDelete pAcdPath_ =
  AccountsContainersDelete'
    { _acdXgafv = Nothing
    , _acdUploadProtocol = Nothing
    , _acdPath = pAcdPath_
    , _acdAccessToken = Nothing
    , _acdUploadType = Nothing
    , _acdCallback = Nothing
    }


-- | V1 error format.
acdXgafv :: Lens' AccountsContainersDelete (Maybe Xgafv)
acdXgafv = lens _acdXgafv (\ s a -> s{_acdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acdUploadProtocol :: Lens' AccountsContainersDelete (Maybe Text)
acdUploadProtocol
  = lens _acdUploadProtocol
      (\ s a -> s{_acdUploadProtocol = a})

-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acdPath :: Lens' AccountsContainersDelete Text
acdPath = lens _acdPath (\ s a -> s{_acdPath = a})

-- | OAuth access token.
acdAccessToken :: Lens' AccountsContainersDelete (Maybe Text)
acdAccessToken
  = lens _acdAccessToken
      (\ s a -> s{_acdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acdUploadType :: Lens' AccountsContainersDelete (Maybe Text)
acdUploadType
  = lens _acdUploadType
      (\ s a -> s{_acdUploadType = a})

-- | JSONP
acdCallback :: Lens' AccountsContainersDelete (Maybe Text)
acdCallback
  = lens _acdCallback (\ s a -> s{_acdCallback = a})

instance GoogleRequest AccountsContainersDelete where
        type Rs AccountsContainersDelete = ()
        type Scopes AccountsContainersDelete =
             '["https://www.googleapis.com/auth/tagmanager.delete.containers"]
        requestClient AccountsContainersDelete'{..}
          = go _acdPath _acdXgafv _acdUploadProtocol
              _acdAccessToken
              _acdUploadType
              _acdCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersDeleteResource)
                      mempty
