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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.delete@.
module Network.Google.Resource.Directory.Users.Aliases.Delete
    (
    -- * REST Resource
      UsersAliasesDeleteResource

    -- * Creating a Request
    , usersAliasesDelete
    , UsersAliasesDelete

    -- * Request Lenses
    , uadXgafv
    , uadUploadProtocol
    , uadAccessToken
    , uadUploadType
    , uadAlias
    , uadUserKey
    , uadCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.delete@ method which the
-- 'UsersAliasesDelete' request conforms to.
type UsersAliasesDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 Capture "alias" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an alias.
--
-- /See:/ 'usersAliasesDelete' smart constructor.
data UsersAliasesDelete =
  UsersAliasesDelete'
    { _uadXgafv :: !(Maybe Xgafv)
    , _uadUploadProtocol :: !(Maybe Text)
    , _uadAccessToken :: !(Maybe Text)
    , _uadUploadType :: !(Maybe Text)
    , _uadAlias :: !Text
    , _uadUserKey :: !Text
    , _uadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersAliasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uadXgafv'
--
-- * 'uadUploadProtocol'
--
-- * 'uadAccessToken'
--
-- * 'uadUploadType'
--
-- * 'uadAlias'
--
-- * 'uadUserKey'
--
-- * 'uadCallback'
usersAliasesDelete
    :: Text -- ^ 'uadAlias'
    -> Text -- ^ 'uadUserKey'
    -> UsersAliasesDelete
usersAliasesDelete pUadAlias_ pUadUserKey_ =
  UsersAliasesDelete'
    { _uadXgafv = Nothing
    , _uadUploadProtocol = Nothing
    , _uadAccessToken = Nothing
    , _uadUploadType = Nothing
    , _uadAlias = pUadAlias_
    , _uadUserKey = pUadUserKey_
    , _uadCallback = Nothing
    }


-- | V1 error format.
uadXgafv :: Lens' UsersAliasesDelete (Maybe Xgafv)
uadXgafv = lens _uadXgafv (\ s a -> s{_uadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uadUploadProtocol :: Lens' UsersAliasesDelete (Maybe Text)
uadUploadProtocol
  = lens _uadUploadProtocol
      (\ s a -> s{_uadUploadProtocol = a})

-- | OAuth access token.
uadAccessToken :: Lens' UsersAliasesDelete (Maybe Text)
uadAccessToken
  = lens _uadAccessToken
      (\ s a -> s{_uadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uadUploadType :: Lens' UsersAliasesDelete (Maybe Text)
uadUploadType
  = lens _uadUploadType
      (\ s a -> s{_uadUploadType = a})

-- | The alias to be removed.
uadAlias :: Lens' UsersAliasesDelete Text
uadAlias = lens _uadAlias (\ s a -> s{_uadAlias = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
uadUserKey :: Lens' UsersAliasesDelete Text
uadUserKey
  = lens _uadUserKey (\ s a -> s{_uadUserKey = a})

-- | JSONP
uadCallback :: Lens' UsersAliasesDelete (Maybe Text)
uadCallback
  = lens _uadCallback (\ s a -> s{_uadCallback = a})

instance GoogleRequest UsersAliasesDelete where
        type Rs UsersAliasesDelete = ()
        type Scopes UsersAliasesDelete =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.alias"]
        requestClient UsersAliasesDelete'{..}
          = go _uadUserKey _uadAlias _uadXgafv
              _uadUploadProtocol
              _uadAccessToken
              _uadUploadType
              _uadCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesDeleteResource)
                      mempty
