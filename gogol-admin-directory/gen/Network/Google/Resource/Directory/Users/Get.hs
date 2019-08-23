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
-- Module      : Network.Google.Resource.Directory.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- retrieve user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.get@.
module Network.Google.Resource.Directory.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugViewType
    , ugCustomFieldMask
    , ugProjection
    , ugUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "viewType" UsersGetViewType :>
                 QueryParam "customFieldMask" Text :>
                   QueryParam "projection" UsersGetProjection :>
                     QueryParam "alt" AltJSON :> Get '[JSON] User

-- | retrieve user
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet =
  UsersGet'
    { _ugViewType        :: !UsersGetViewType
    , _ugCustomFieldMask :: !(Maybe Text)
    , _ugProjection      :: !UsersGetProjection
    , _ugUserKey         :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugViewType'
--
-- * 'ugCustomFieldMask'
--
-- * 'ugProjection'
--
-- * 'ugUserKey'
usersGet
    :: Text -- ^ 'ugUserKey'
    -> UsersGet
usersGet pUgUserKey_ =
  UsersGet'
    { _ugViewType = UGVTAdminView
    , _ugCustomFieldMask = Nothing
    , _ugProjection = UGPBasic
    , _ugUserKey = pUgUserKey_
    }


-- | Whether to fetch the ADMIN_VIEW or DOMAIN_PUBLIC view of the user.
ugViewType :: Lens' UsersGet UsersGetViewType
ugViewType
  = lens _ugViewType (\ s a -> s{_ugViewType = a})

-- | Comma-separated list of schema names. All fields from these schemas are
-- fetched. This should only be set when projection=custom.
ugCustomFieldMask :: Lens' UsersGet (Maybe Text)
ugCustomFieldMask
  = lens _ugCustomFieldMask
      (\ s a -> s{_ugCustomFieldMask = a})

-- | What subset of fields to fetch for this user.
ugProjection :: Lens' UsersGet UsersGetProjection
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | Email or immutable ID of the user
ugUserKey :: Lens' UsersGet Text
ugUserKey
  = lens _ugUserKey (\ s a -> s{_ugUserKey = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersGet'{..}
          = go _ugUserKey (Just _ugViewType) _ugCustomFieldMask
              (Just _ugProjection)
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
