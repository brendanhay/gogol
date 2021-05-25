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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Environments.Reauthorize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-generates the authorization code for a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.reauthorize@.
module Network.Google.Resource.TagManager.Accounts.Containers.Environments.Reauthorize
    (
    -- * REST Resource
      AccountsContainersEnvironmentsReauthorizeResource

    -- * Creating a Request
    , accountsContainersEnvironmentsReauthorize
    , AccountsContainersEnvironmentsReauthorize

    -- * Request Lenses
    , acerXgafv
    , acerUploadProtocol
    , acerPath
    , acerAccessToken
    , acerUploadType
    , acerPayload
    , acerCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.reauthorize@ method which the
-- 'AccountsContainersEnvironmentsReauthorize' request conforms to.
type AccountsContainersEnvironmentsReauthorizeResource
     =
     "tagmanager" :>
       "v2" :>
         CaptureMode "path" "reauthorize" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Environment :>
                         Post '[JSON] Environment

-- | Re-generates the authorization code for a GTM Environment.
--
-- /See:/ 'accountsContainersEnvironmentsReauthorize' smart constructor.
data AccountsContainersEnvironmentsReauthorize =
  AccountsContainersEnvironmentsReauthorize'
    { _acerXgafv :: !(Maybe Xgafv)
    , _acerUploadProtocol :: !(Maybe Text)
    , _acerPath :: !Text
    , _acerAccessToken :: !(Maybe Text)
    , _acerUploadType :: !(Maybe Text)
    , _acerPayload :: !Environment
    , _acerCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersEnvironmentsReauthorize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acerXgafv'
--
-- * 'acerUploadProtocol'
--
-- * 'acerPath'
--
-- * 'acerAccessToken'
--
-- * 'acerUploadType'
--
-- * 'acerPayload'
--
-- * 'acerCallback'
accountsContainersEnvironmentsReauthorize
    :: Text -- ^ 'acerPath'
    -> Environment -- ^ 'acerPayload'
    -> AccountsContainersEnvironmentsReauthorize
accountsContainersEnvironmentsReauthorize pAcerPath_ pAcerPayload_ =
  AccountsContainersEnvironmentsReauthorize'
    { _acerXgafv = Nothing
    , _acerUploadProtocol = Nothing
    , _acerPath = pAcerPath_
    , _acerAccessToken = Nothing
    , _acerUploadType = Nothing
    , _acerPayload = pAcerPayload_
    , _acerCallback = Nothing
    }


-- | V1 error format.
acerXgafv :: Lens' AccountsContainersEnvironmentsReauthorize (Maybe Xgafv)
acerXgafv
  = lens _acerXgafv (\ s a -> s{_acerXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acerUploadProtocol :: Lens' AccountsContainersEnvironmentsReauthorize (Maybe Text)
acerUploadProtocol
  = lens _acerUploadProtocol
      (\ s a -> s{_acerUploadProtocol = a})

-- | GTM Environment\'s API relative path. Example:
-- accounts\/{account_id}\/containers\/{container_id}\/environments\/{environment_id}
acerPath :: Lens' AccountsContainersEnvironmentsReauthorize Text
acerPath = lens _acerPath (\ s a -> s{_acerPath = a})

-- | OAuth access token.
acerAccessToken :: Lens' AccountsContainersEnvironmentsReauthorize (Maybe Text)
acerAccessToken
  = lens _acerAccessToken
      (\ s a -> s{_acerAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acerUploadType :: Lens' AccountsContainersEnvironmentsReauthorize (Maybe Text)
acerUploadType
  = lens _acerUploadType
      (\ s a -> s{_acerUploadType = a})

-- | Multipart request metadata.
acerPayload :: Lens' AccountsContainersEnvironmentsReauthorize Environment
acerPayload
  = lens _acerPayload (\ s a -> s{_acerPayload = a})

-- | JSONP
acerCallback :: Lens' AccountsContainersEnvironmentsReauthorize (Maybe Text)
acerCallback
  = lens _acerCallback (\ s a -> s{_acerCallback = a})

instance GoogleRequest
           AccountsContainersEnvironmentsReauthorize
         where
        type Rs AccountsContainersEnvironmentsReauthorize =
             Environment
        type Scopes AccountsContainersEnvironmentsReauthorize
             =
             '["https://www.googleapis.com/auth/tagmanager.publish"]
        requestClient
          AccountsContainersEnvironmentsReauthorize'{..}
          = go _acerPath _acerXgafv _acerUploadProtocol
              _acerAccessToken
              _acerUploadType
              _acerCallback
              (Just AltJSON)
              _acerPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccountsContainersEnvironmentsReauthorizeResource)
                      mempty
