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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watches for changes in users list.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.watch@.
module Network.Google.Resource.Directory.Users.Aliases.Watch
    (
    -- * REST Resource
      UsersAliasesWatchResource

    -- * Creating a Request
    , usersAliasesWatch
    , UsersAliasesWatch

    -- * Request Lenses
    , uawEvent
    , uawXgafv
    , uawUploadProtocol
    , uawAccessToken
    , uawUploadType
    , uawPayload
    , uawUserKey
    , uawCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.watch@ method which the
-- 'UsersAliasesWatch' request conforms to.
type UsersAliasesWatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 "watch" :>
                   QueryParam "event" UsersAliasesWatchEvent :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watches for changes in users list.
--
-- /See:/ 'usersAliasesWatch' smart constructor.
data UsersAliasesWatch =
  UsersAliasesWatch'
    { _uawEvent :: !(Maybe UsersAliasesWatchEvent)
    , _uawXgafv :: !(Maybe Xgafv)
    , _uawUploadProtocol :: !(Maybe Text)
    , _uawAccessToken :: !(Maybe Text)
    , _uawUploadType :: !(Maybe Text)
    , _uawPayload :: !Channel
    , _uawUserKey :: !Text
    , _uawCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersAliasesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uawEvent'
--
-- * 'uawXgafv'
--
-- * 'uawUploadProtocol'
--
-- * 'uawAccessToken'
--
-- * 'uawUploadType'
--
-- * 'uawPayload'
--
-- * 'uawUserKey'
--
-- * 'uawCallback'
usersAliasesWatch
    :: Channel -- ^ 'uawPayload'
    -> Text -- ^ 'uawUserKey'
    -> UsersAliasesWatch
usersAliasesWatch pUawPayload_ pUawUserKey_ =
  UsersAliasesWatch'
    { _uawEvent = Nothing
    , _uawXgafv = Nothing
    , _uawUploadProtocol = Nothing
    , _uawAccessToken = Nothing
    , _uawUploadType = Nothing
    , _uawPayload = pUawPayload_
    , _uawUserKey = pUawUserKey_
    , _uawCallback = Nothing
    }


-- | Events to watch for.
uawEvent :: Lens' UsersAliasesWatch (Maybe UsersAliasesWatchEvent)
uawEvent = lens _uawEvent (\ s a -> s{_uawEvent = a})

-- | V1 error format.
uawXgafv :: Lens' UsersAliasesWatch (Maybe Xgafv)
uawXgafv = lens _uawXgafv (\ s a -> s{_uawXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uawUploadProtocol :: Lens' UsersAliasesWatch (Maybe Text)
uawUploadProtocol
  = lens _uawUploadProtocol
      (\ s a -> s{_uawUploadProtocol = a})

-- | OAuth access token.
uawAccessToken :: Lens' UsersAliasesWatch (Maybe Text)
uawAccessToken
  = lens _uawAccessToken
      (\ s a -> s{_uawAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uawUploadType :: Lens' UsersAliasesWatch (Maybe Text)
uawUploadType
  = lens _uawUploadType
      (\ s a -> s{_uawUploadType = a})

-- | Multipart request metadata.
uawPayload :: Lens' UsersAliasesWatch Channel
uawPayload
  = lens _uawPayload (\ s a -> s{_uawPayload = a})

-- | Email or immutable ID of the user
uawUserKey :: Lens' UsersAliasesWatch Text
uawUserKey
  = lens _uawUserKey (\ s a -> s{_uawUserKey = a})

-- | JSONP
uawCallback :: Lens' UsersAliasesWatch (Maybe Text)
uawCallback
  = lens _uawCallback (\ s a -> s{_uawCallback = a})

instance GoogleRequest UsersAliasesWatch where
        type Rs UsersAliasesWatch = Channel
        type Scopes UsersAliasesWatch =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.alias",
               "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersAliasesWatch'{..}
          = go _uawUserKey _uawEvent _uawXgafv
              _uawUploadProtocol
              _uawAccessToken
              _uawUploadType
              _uawCallback
              (Just AltJSON)
              _uawPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesWatchResource)
                      mempty
