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
-- Module      : Network.Google.Resource.Directory.Members.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove membership.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.delete@.
module Network.Google.Resource.Directory.Members.Delete
    (
    -- * REST Resource
      MembersDeleteResource

    -- * Creating a Request
    , membersDelete
    , MembersDelete

    -- * Request Lenses
    , mdMemberKey
    , mdGroupKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.delete@ method which the
-- 'MembersDelete' request conforms to.
type MembersDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         "members" :>
           Capture "memberKey" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove membership.
--
-- /See:/ 'membersDelete' smart constructor.
data MembersDelete = MembersDelete
    { _mdMemberKey :: !Text
    , _mdGroupKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdMemberKey'
--
-- * 'mdGroupKey'
membersDelete
    :: Text -- ^ 'mdMemberKey'
    -> Text -- ^ 'mdGroupKey'
    -> MembersDelete
membersDelete pMdMemberKey_ pMdGroupKey_ =
    MembersDelete
    { _mdMemberKey = pMdMemberKey_
    , _mdGroupKey = pMdGroupKey_
    }

-- | Email or immutable Id of the member
mdMemberKey :: Lens' MembersDelete Text
mdMemberKey
  = lens _mdMemberKey (\ s a -> s{_mdMemberKey = a})

-- | Email or immutable Id of the group
mdGroupKey :: Lens' MembersDelete Text
mdGroupKey
  = lens _mdGroupKey (\ s a -> s{_mdGroupKey = a})

instance GoogleRequest MembersDelete where
        type Rs MembersDelete = ()
        requestClient MembersDelete{..}
          = go _mdGroupKey _mdMemberKey (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersDeleteResource)
                      mempty
