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
-- Module      : Network.Google.Resource.TagManager.Accounts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.get@.
module Network.Google.Resource.TagManager.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agPath
    , agAccessToken
    , agUploadType
    , agCallback
    ) where

import Network.Google.Prelude
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "tagmanager" :>
       "v2" :>
         Capture "path" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets a GTM Account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet =
  AccountsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agPath :: !Text
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agPath'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agCallback'
accountsGet
    :: Text -- ^ 'agPath'
    -> AccountsGet
accountsGet pAgPath_ =
  AccountsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agPath = pAgPath_
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AccountsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AccountsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | GTM Accounts\'s API relative path. Example: accounts\/{account_id}
agPath :: Lens' AccountsGet Text
agPath = lens _agPath (\ s a -> s{_agPath = a})

-- | OAuth access token.
agAccessToken :: Lens' AccountsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AccountsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | JSONP
agCallback :: Lens' AccountsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.manage.accounts",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsGet'{..}
          = go _agPath _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
