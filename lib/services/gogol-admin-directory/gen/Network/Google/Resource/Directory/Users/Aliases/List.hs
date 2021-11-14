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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all aliases for a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.list@.
module Network.Google.Resource.Directory.Users.Aliases.List
    (
    -- * REST Resource
      UsersAliasesListResource

    -- * Creating a Request
    , usersAliasesList
    , UsersAliasesList

    -- * Request Lenses
    , ualEvent
    , ualXgafv
    , ualUploadProtocol
    , ualAccessToken
    , ualUploadType
    , ualUserKey
    , ualCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.list@ method which the
-- 'UsersAliasesList' request conforms to.
type UsersAliasesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 QueryParam "event" UsersAliasesListEvent :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | Lists all aliases for a user.
--
-- /See:/ 'usersAliasesList' smart constructor.
data UsersAliasesList =
  UsersAliasesList'
    { _ualEvent :: !(Maybe UsersAliasesListEvent)
    , _ualXgafv :: !(Maybe Xgafv)
    , _ualUploadProtocol :: !(Maybe Text)
    , _ualAccessToken :: !(Maybe Text)
    , _ualUploadType :: !(Maybe Text)
    , _ualUserKey :: !Text
    , _ualCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ualEvent'
--
-- * 'ualXgafv'
--
-- * 'ualUploadProtocol'
--
-- * 'ualAccessToken'
--
-- * 'ualUploadType'
--
-- * 'ualUserKey'
--
-- * 'ualCallback'
usersAliasesList
    :: Text -- ^ 'ualUserKey'
    -> UsersAliasesList
usersAliasesList pUalUserKey_ =
  UsersAliasesList'
    { _ualEvent = Nothing
    , _ualXgafv = Nothing
    , _ualUploadProtocol = Nothing
    , _ualAccessToken = Nothing
    , _ualUploadType = Nothing
    , _ualUserKey = pUalUserKey_
    , _ualCallback = Nothing
    }


-- | Events to watch for.
ualEvent :: Lens' UsersAliasesList (Maybe UsersAliasesListEvent)
ualEvent = lens _ualEvent (\ s a -> s{_ualEvent = a})

-- | V1 error format.
ualXgafv :: Lens' UsersAliasesList (Maybe Xgafv)
ualXgafv = lens _ualXgafv (\ s a -> s{_ualXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ualUploadProtocol :: Lens' UsersAliasesList (Maybe Text)
ualUploadProtocol
  = lens _ualUploadProtocol
      (\ s a -> s{_ualUploadProtocol = a})

-- | OAuth access token.
ualAccessToken :: Lens' UsersAliasesList (Maybe Text)
ualAccessToken
  = lens _ualAccessToken
      (\ s a -> s{_ualAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ualUploadType :: Lens' UsersAliasesList (Maybe Text)
ualUploadType
  = lens _ualUploadType
      (\ s a -> s{_ualUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
ualUserKey :: Lens' UsersAliasesList Text
ualUserKey
  = lens _ualUserKey (\ s a -> s{_ualUserKey = a})

-- | JSONP
ualCallback :: Lens' UsersAliasesList (Maybe Text)
ualCallback
  = lens _ualCallback (\ s a -> s{_ualCallback = a})

instance GoogleRequest UsersAliasesList where
        type Rs UsersAliasesList = Aliases
        type Scopes UsersAliasesList =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.alias",
               "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersAliasesList'{..}
          = go _ualUserKey _ualEvent _ualXgafv
              _ualUploadProtocol
              _ualAccessToken
              _ualUploadType
              _ualCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesListResource)
                      mempty
