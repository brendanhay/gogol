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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.insert@.
module Network.Google.Resource.Directory.Users.Aliases.Insert
    (
    -- * REST Resource
      UsersAliasesInsertResource

    -- * Creating a Request
    , usersAliasesInsert
    , UsersAliasesInsert

    -- * Request Lenses
    , uaiXgafv
    , uaiUploadProtocol
    , uaiAccessToken
    , uaiUploadType
    , uaiPayload
    , uaiUserKey
    , uaiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.insert@ method which the
-- 'UsersAliasesInsert' request conforms to.
type UsersAliasesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Adds an alias.
--
-- /See:/ 'usersAliasesInsert' smart constructor.
data UsersAliasesInsert =
  UsersAliasesInsert'
    { _uaiXgafv :: !(Maybe Xgafv)
    , _uaiUploadProtocol :: !(Maybe Text)
    , _uaiAccessToken :: !(Maybe Text)
    , _uaiUploadType :: !(Maybe Text)
    , _uaiPayload :: !Alias
    , _uaiUserKey :: !Text
    , _uaiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaiXgafv'
--
-- * 'uaiUploadProtocol'
--
-- * 'uaiAccessToken'
--
-- * 'uaiUploadType'
--
-- * 'uaiPayload'
--
-- * 'uaiUserKey'
--
-- * 'uaiCallback'
usersAliasesInsert
    :: Alias -- ^ 'uaiPayload'
    -> Text -- ^ 'uaiUserKey'
    -> UsersAliasesInsert
usersAliasesInsert pUaiPayload_ pUaiUserKey_ =
  UsersAliasesInsert'
    { _uaiXgafv = Nothing
    , _uaiUploadProtocol = Nothing
    , _uaiAccessToken = Nothing
    , _uaiUploadType = Nothing
    , _uaiPayload = pUaiPayload_
    , _uaiUserKey = pUaiUserKey_
    , _uaiCallback = Nothing
    }


-- | V1 error format.
uaiXgafv :: Lens' UsersAliasesInsert (Maybe Xgafv)
uaiXgafv = lens _uaiXgafv (\ s a -> s{_uaiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uaiUploadProtocol :: Lens' UsersAliasesInsert (Maybe Text)
uaiUploadProtocol
  = lens _uaiUploadProtocol
      (\ s a -> s{_uaiUploadProtocol = a})

-- | OAuth access token.
uaiAccessToken :: Lens' UsersAliasesInsert (Maybe Text)
uaiAccessToken
  = lens _uaiAccessToken
      (\ s a -> s{_uaiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uaiUploadType :: Lens' UsersAliasesInsert (Maybe Text)
uaiUploadType
  = lens _uaiUploadType
      (\ s a -> s{_uaiUploadType = a})

-- | Multipart request metadata.
uaiPayload :: Lens' UsersAliasesInsert Alias
uaiPayload
  = lens _uaiPayload (\ s a -> s{_uaiPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
uaiUserKey :: Lens' UsersAliasesInsert Text
uaiUserKey
  = lens _uaiUserKey (\ s a -> s{_uaiUserKey = a})

-- | JSONP
uaiCallback :: Lens' UsersAliasesInsert (Maybe Text)
uaiCallback
  = lens _uaiCallback (\ s a -> s{_uaiCallback = a})

instance GoogleRequest UsersAliasesInsert where
        type Rs UsersAliasesInsert = Alias
        type Scopes UsersAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.alias"]
        requestClient UsersAliasesInsert'{..}
          = go _uaiUserKey _uaiXgafv _uaiUploadProtocol
              _uaiAccessToken
              _uaiUploadType
              _uaiCallback
              (Just AltJSON)
              _uaiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesInsertResource)
                      mempty
