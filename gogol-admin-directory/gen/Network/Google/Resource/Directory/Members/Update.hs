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
-- Module      : Network.Google.Resource.Directory.Members.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update membership of a user in the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.update@.
module Network.Google.Resource.Directory.Members.Update
    (
    -- * REST Resource
      MembersUpdateResource

    -- * Creating a Request
    , membersUpdate
    , MembersUpdate

    -- * Request Lenses
    , muMemberKey
    , muGroupKey
    , muPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.update@ method which the
-- 'MembersUpdate' request conforms to.
type MembersUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 Capture "memberKey" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Member :> Put '[JSON] Member

-- | Update membership of a user in the specified group.
--
-- /See:/ 'membersUpdate' smart constructor.
data MembersUpdate =
  MembersUpdate'
    { _muMemberKey :: !Text
    , _muGroupKey  :: !Text
    , _muPayload   :: !Member
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MembersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muMemberKey'
--
-- * 'muGroupKey'
--
-- * 'muPayload'
membersUpdate
    :: Text -- ^ 'muMemberKey'
    -> Text -- ^ 'muGroupKey'
    -> Member -- ^ 'muPayload'
    -> MembersUpdate
membersUpdate pMuMemberKey_ pMuGroupKey_ pMuPayload_ =
  MembersUpdate'
    { _muMemberKey = pMuMemberKey_
    , _muGroupKey = pMuGroupKey_
    , _muPayload = pMuPayload_
    }

-- | Email or immutable ID of the user. If ID, it should match with id of
-- member object
muMemberKey :: Lens' MembersUpdate Text
muMemberKey
  = lens _muMemberKey (\ s a -> s{_muMemberKey = a})

-- | Email or immutable ID of the group. If ID, it should match with id of
-- group object
muGroupKey :: Lens' MembersUpdate Text
muGroupKey
  = lens _muGroupKey (\ s a -> s{_muGroupKey = a})

-- | Multipart request metadata.
muPayload :: Lens' MembersUpdate Member
muPayload
  = lens _muPayload (\ s a -> s{_muPayload = a})

instance GoogleRequest MembersUpdate where
        type Rs MembersUpdate = Member
        type Scopes MembersUpdate =
             '["https://www.googleapis.com/auth/admin.directory.group",
               "https://www.googleapis.com/auth/admin.directory.group.member"]
        requestClient MembersUpdate'{..}
          = go _muGroupKey _muMemberKey (Just AltJSON)
              _muPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersUpdateResource)
                      mempty
