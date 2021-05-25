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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Create
    (
    -- * REST Resource
      AccountsContainersEnvironmentsCreateResource

    -- * Creating a Request
    , accountsContainersEnvironmentsCreate
    , AccountsContainersEnvironmentsCreate

    -- * Request Lenses
    , acecParent
    , acecXgafv
    , acecUploadProtocol
    , acecAccessToken
    , acecUploadType
    , acecPayload
    , acecCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.create@ method which the
-- 'AccountsContainersEnvironmentsCreate' request conforms to.
type AccountsContainersEnvironmentsCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "environments" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Environment :>
                           Post '[JSON] Environment

-- | Creates a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsCreate' smart constructor.
data AccountsContainersEnvironmentsCreate =
  AccountsContainersEnvironmentsCreate'
    { _acecParent :: !Text
    , _acecXgafv :: !(Maybe Xgafv)
    , _acecUploadProtocol :: !(Maybe Text)
    , _acecAccessToken :: !(Maybe Text)
    , _acecUploadType :: !(Maybe Text)
    , _acecPayload :: !Environment
    , _acecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acecParent'
--
-- * 'acecXgafv'
--
-- * 'acecUploadProtocol'
--
-- * 'acecAccessToken'
--
-- * 'acecUploadType'
--
-- * 'acecPayload'
--
-- * 'acecCallback'
accountsContainersEnvironmentsCreate
    :: Text -- ^ 'acecParent'
    -> Environment -- ^ 'acecPayload'
    -> AccountsContainersEnvironmentsCreate
accountsContainersEnvironmentsCreate pAcecParent_ pAcecPayload_ =
  AccountsContainersEnvironmentsCreate'
    { _acecParent = pAcecParent_
    , _acecXgafv = Nothing
    , _acecUploadProtocol = Nothing
    , _acecAccessToken = Nothing
    , _acecUploadType = Nothing
    , _acecPayload = pAcecPayload_
    , _acecCallback = Nothing
    }


-- | GTM Container\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}
acecParent :: Lens' AccountsContainersEnvironmentsCreate Text
acecParent
  = lens _acecParent (\ s a -> s{_acecParent = a})

-- | V1 error format.
acecXgafv :: Lens' AccountsContainersEnvironmentsCreate (Maybe Xgafv)
acecXgafv
  = lens _acecXgafv (\ s a -> s{_acecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acecUploadProtocol :: Lens' AccountsContainersEnvironmentsCreate (Maybe Text)
acecUploadProtocol
  = lens _acecUploadProtocol
      (\ s a -> s{_acecUploadProtocol = a})

-- | OAuth access token.
acecAccessToken :: Lens' AccountsContainersEnvironmentsCreate (Maybe Text)
acecAccessToken
  = lens _acecAccessToken
      (\ s a -> s{_acecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acecUploadType :: Lens' AccountsContainersEnvironmentsCreate (Maybe Text)
acecUploadType
  = lens _acecUploadType
      (\ s a -> s{_acecUploadType = a})

-- | Multipart request metadata.
acecPayload :: Lens' AccountsContainersEnvironmentsCreate Environment
acecPayload
  = lens _acecPayload (\ s a -> s{_acecPayload = a})

-- | JSONP
acecCallback :: Lens' AccountsContainersEnvironmentsCreate (Maybe Text)
acecCallback
  = lens _acecCallback (\ s a -> s{_acecCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsCreate
         where
        type Rs AccountsContainersEnvironmentsCreate =
             Environment
        type Scopes AccountsContainersEnvironmentsCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          AccountsContainersEnvironmentsCreate'{..}
          = go _acecParent _acecXgafv _acecUploadProtocol
              _acecAccessToken
              _acecUploadType
              _acecCallback
              (Just AltJSON)
              _acecPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsContainersEnvironmentsCreateResource)
                      mempty
