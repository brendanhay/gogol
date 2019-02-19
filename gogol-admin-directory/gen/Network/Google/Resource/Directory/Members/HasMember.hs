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
-- Module      : Network.Google.Resource.Directory.Members.HasMember
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether the given user is a member of the group. Membership can
-- be direct or nested.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.hasMember@.
module Network.Google.Resource.Directory.Members.HasMember
    (
    -- * REST Resource
      MembersHasMemberResource

    -- * Creating a Request
    , membersHasMember'
    , MembersHasMember'

    -- * Request Lenses
    , mhmMemberKey
    , mhmGroupKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.hasMember@ method which the
-- 'MembersHasMember'' request conforms to.
type MembersHasMemberResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "hasMember" :>
                 Capture "memberKey" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] MembersHasMember

-- | Checks whether the given user is a member of the group. Membership can
-- be direct or nested.
--
-- /See:/ 'membersHasMember'' smart constructor.
data MembersHasMember' =
  MembersHasMember''
    { _mhmMemberKey :: !Text
    , _mhmGroupKey  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MembersHasMember'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhmMemberKey'
--
-- * 'mhmGroupKey'
membersHasMember'
    :: Text -- ^ 'mhmMemberKey'
    -> Text -- ^ 'mhmGroupKey'
    -> MembersHasMember'
membersHasMember' pMhmMemberKey_ pMhmGroupKey_ =
  MembersHasMember''
    {_mhmMemberKey = pMhmMemberKey_, _mhmGroupKey = pMhmGroupKey_}

-- | Identifies the user member in the API request. The value can be the
-- user\'s primary email address, alias, or unique ID.
mhmMemberKey :: Lens' MembersHasMember' Text
mhmMemberKey
  = lens _mhmMemberKey (\ s a -> s{_mhmMemberKey = a})

-- | Identifies the group in the API request. The value can be the group\'s
-- email address, group alias, or the unique group ID.
mhmGroupKey :: Lens' MembersHasMember' Text
mhmGroupKey
  = lens _mhmGroupKey (\ s a -> s{_mhmGroupKey = a})

instance GoogleRequest MembersHasMember' where
        type Rs MembersHasMember' = MembersHasMember
        type Scopes MembersHasMember' =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member",
               "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
               "https://www.googleapis.com/auth/admin.directory.group.readonly"]
        requestClient MembersHasMember''{..}
          = go _mhmGroupKey _mhmMemberKey (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MembersHasMemberResource)
                      mempty
