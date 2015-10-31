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
-- Module      : Network.Google.Resource.Directory.Members.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve Group Member
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.get@.
module Network.Google.Resource.Directory.Members.Get
    (
    -- * REST Resource
      MembersGetResource

    -- * Creating a Request
    , membersGet
    , MembersGet

    -- * Request Lenses
    , mgMemberKey
    , mgGroupKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.get@ method which the
-- 'MembersGet' request conforms to.
type MembersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Member

-- | Retrieve Group Member
--
-- /See:/ 'membersGet' smart constructor.
data MembersGet = MembersGet
    { _mgMemberKey :: !Text
    , _mgGroupKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgMemberKey'
--
-- * 'mgGroupKey'
membersGet
    :: Text -- ^ 'mgMemberKey'
    -> Text -- ^ 'mgGroupKey'
    -> MembersGet
membersGet pMgMemberKey_ pMgGroupKey_ =
    MembersGet
    { _mgMemberKey = pMgMemberKey_
    , _mgGroupKey = pMgGroupKey_
    }

-- | Email or immutable Id of the member
mgMemberKey :: Lens' MembersGet Text
mgMemberKey
  = lens _mgMemberKey (\ s a -> s{_mgMemberKey = a})

-- | Email or immutable Id of the group
mgGroupKey :: Lens' MembersGet Text
mgGroupKey
  = lens _mgGroupKey (\ s a -> s{_mgGroupKey = a})

instance GoogleRequest MembersGet where
        type Rs MembersGet = Member
        type Scopes MembersGet =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member",
               "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient MembersGet{..}
          = go _mgGroupKey _mgMemberKey (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersGetResource)
                      mempty
