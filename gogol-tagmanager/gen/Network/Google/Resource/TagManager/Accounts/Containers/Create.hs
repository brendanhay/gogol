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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.create@.
module Network.Google.Resource.TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateResource

    -- * Creating a Request
    , accountsContainersCreate
    , AccountsContainersCreate

    -- * Request Lenses
    , acccParent
    , acccXgafv
    , acccUploadProtocol
    , acccAccessToken
    , acccUploadType
    , acccPayload
    , acccCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.create@ method which the
-- 'AccountsContainersCreate' request conforms to.
type AccountsContainersCreateResource =
     "tagmanager" :>
       "v2" :>
         Capture "parent" Text :>
           "containers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Container :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate' smart constructor.
data AccountsContainersCreate =
  AccountsContainersCreate'
    { _acccParent :: !Text
    , _acccXgafv :: !(Maybe Xgafv)
    , _acccUploadProtocol :: !(Maybe Text)
    , _acccAccessToken :: !(Maybe Text)
    , _acccUploadType :: !(Maybe Text)
    , _acccPayload :: !Container
    , _acccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsContainersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccParent'
--
-- * 'acccXgafv'
--
-- * 'acccUploadProtocol'
--
-- * 'acccAccessToken'
--
-- * 'acccUploadType'
--
-- * 'acccPayload'
--
-- * 'acccCallback'
accountsContainersCreate
    :: Text -- ^ 'acccParent'
    -> Container -- ^ 'acccPayload'
    -> AccountsContainersCreate
accountsContainersCreate pAcccParent_ pAcccPayload_ =
  AccountsContainersCreate'
    { _acccParent = pAcccParent_
    , _acccXgafv = Nothing
    , _acccUploadProtocol = Nothing
    , _acccAccessToken = Nothing
    , _acccUploadType = Nothing
    , _acccPayload = pAcccPayload_
    , _acccCallback = Nothing
    }


-- | GTM Account\'s API relative path. Example: accounts\/{account_id}.
acccParent :: Lens' AccountsContainersCreate Text
acccParent
  = lens _acccParent (\ s a -> s{_acccParent = a})

-- | V1 error format.
acccXgafv :: Lens' AccountsContainersCreate (Maybe Xgafv)
acccXgafv
  = lens _acccXgafv (\ s a -> s{_acccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acccUploadProtocol :: Lens' AccountsContainersCreate (Maybe Text)
acccUploadProtocol
  = lens _acccUploadProtocol
      (\ s a -> s{_acccUploadProtocol = a})

-- | OAuth access token.
acccAccessToken :: Lens' AccountsContainersCreate (Maybe Text)
acccAccessToken
  = lens _acccAccessToken
      (\ s a -> s{_acccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acccUploadType :: Lens' AccountsContainersCreate (Maybe Text)
acccUploadType
  = lens _acccUploadType
      (\ s a -> s{_acccUploadType = a})

-- | Multipart request metadata.
acccPayload :: Lens' AccountsContainersCreate Container
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | JSONP
acccCallback :: Lens' AccountsContainersCreate (Maybe Text)
acccCallback
  = lens _acccCallback (\ s a -> s{_acccCallback = a})

instance GoogleRequest AccountsContainersCreate where
        type Rs AccountsContainersCreate = Container
        type Scopes AccountsContainersCreate =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient AccountsContainersCreate'{..}
          = go _acccParent _acccXgafv _acccUploadProtocol
              _acccAccessToken
              _acccUploadType
              _acccCallback
              (Just AltJSON)
              _acccPayload
              tagManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsContainersCreateResource)
                      mempty
