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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the live (i.e. published) container version
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.live@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Live
    (
    -- * REST Resource
      AccountsContainersVersionsLiveResource

    -- * Creating a Request
    , accountsContainersVersionsLive
    , AccountsContainersVersionsLive

    -- * Request Lenses
    , acvlParent
    , acvlXgafv
    , acvlUploadProtocol
    , acvlAccessToken
    , acvlUploadType
    , acvlCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.live@ method which the
-- 'AccountsContainersVersionsLive' request conforms to.
type AccountsContainersVersionsLiveResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "versions:live" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ContainerVersion

-- | Gets the live (i.e. published) container version
--
-- /See:/ 'accountsContainersVersionsLive' smart constructor.
data AccountsContainersVersionsLive =
  AccountsContainersVersionsLive'
    { _acvlParent :: !Text
    , _acvlXgafv :: !(Maybe Xgafv)
    , _acvlUploadProtocol :: !(Maybe Text)
    , _acvlAccessToken :: !(Maybe Text)
    , _acvlUploadType :: !(Maybe Text)
    , _acvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersVersionsLive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlParent'
--
-- * 'acvlXgafv'
--
-- * 'acvlUploadProtocol'
--
-- * 'acvlAccessToken'
--
-- * 'acvlUploadType'
--
-- * 'acvlCallback'
accountsContainersVersionsLive
    :: Text -- ^ 'acvlParent'
    -> AccountsContainersVersionsLive
accountsContainersVersionsLive pAcvlParent_ =
  AccountsContainersVersionsLive'
    { _acvlParent = pAcvlParent_
    , _acvlXgafv = Nothing
    , _acvlUploadProtocol = Nothing
    , _acvlAccessToken = Nothing
    , _acvlUploadType = Nothing
    , _acvlCallback = Nothing
    }


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acvlParent :: Lens' AccountsContainersVersionsLive Text
acvlParent
  = lens _acvlParent (\ s a -> s{_acvlParent = a})

-- | V1 error format.
acvlXgafv :: Lens' AccountsContainersVersionsLive (Maybe Xgafv)
acvlXgafv
  = lens _acvlXgafv (\ s a -> s{_acvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acvlUploadProtocol :: Lens' AccountsContainersVersionsLive (Maybe Text)
acvlUploadProtocol
  = lens _acvlUploadProtocol
      (\ s a -> s{_acvlUploadProtocol = a})

-- | OAuth access token.
acvlAccessToken :: Lens' AccountsContainersVersionsLive (Maybe Text)
acvlAccessToken
  = lens _acvlAccessToken
      (\ s a -> s{_acvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acvlUploadType :: Lens' AccountsContainersVersionsLive (Maybe Text)
acvlUploadType
  = lens _acvlUploadType
      (\ s a -> s{_acvlUploadType = a})

-- | JSONP
acvlCallback :: Lens' AccountsContainersVersionsLive (Maybe Text)
acvlCallback
  = lens _acvlCallback (\ s a -> s{_acvlCallback = a})

instance GoogleRequest AccountsContainersVersionsLive
         where
        type Rs AccountsContainersVersionsLive =
             ContainerVersion
        type Scopes AccountsContainersVersionsLive =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsContainersVersionsLive'{..}
          = go _acvlParent _acvlXgafv _acvlUploadProtocol
              _acvlAccessToken
              _acvlUploadType
              _acvlCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersVersionsLiveResource)
                      mempty
