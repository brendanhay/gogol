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
-- Module      : Network.Google.Resource.Directory.Members.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.patch@.
module Network.Google.Resource.Directory.Members.Patch
    (
    -- * REST Resource
      MembersPatchResource

    -- * Creating a Request
    , membersPatch
    , MembersPatch

    -- * Request Lenses
    , mpMemberKey
    , mpGroupKey
    , mpPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.patch@ method which the
-- 'MembersPatch' request conforms to.
type MembersPatchResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Member :> Patch '[JSON] Member

-- | Update membership of a user in the specified group. This method supports
-- patch semantics.
--
-- /See:/ 'membersPatch' smart constructor.
data MembersPatch = MembersPatch
    { _mpMemberKey :: !Text
    , _mpGroupKey  :: !Text
    , _mpPayload   :: !Member
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpMemberKey'
--
-- * 'mpGroupKey'
--
-- * 'mpPayload'
membersPatch
    :: Text -- ^ 'mpMemberKey'
    -> Text -- ^ 'mpGroupKey'
    -> Member -- ^ 'mpPayload'
    -> MembersPatch
membersPatch pMpMemberKey_ pMpGroupKey_ pMpPayload_ =
    MembersPatch
    { _mpMemberKey = pMpMemberKey_
    , _mpGroupKey = pMpGroupKey_
    , _mpPayload = pMpPayload_
    }

-- | Email or immutable Id of the user. If Id, it should match with id of
-- member object
mpMemberKey :: Lens' MembersPatch Text
mpMemberKey
  = lens _mpMemberKey (\ s a -> s{_mpMemberKey = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
mpGroupKey :: Lens' MembersPatch Text
mpGroupKey
  = lens _mpGroupKey (\ s a -> s{_mpGroupKey = a})

-- | Multipart request metadata.
mpPayload :: Lens' MembersPatch Member
mpPayload
  = lens _mpPayload (\ s a -> s{_mpPayload = a})

instance GoogleRequest MembersPatch where
        type Rs MembersPatch = Member
        requestClient MembersPatch{..}
          = go _mpGroupKey _mpMemberKey (Just AltJSON)
              _mpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersPatchResource)
                      mempty
