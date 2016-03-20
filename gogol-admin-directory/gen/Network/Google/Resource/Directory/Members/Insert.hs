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
-- Module      : Network.Google.Resource.Directory.Members.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add user to the specified group.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.members.insert@.
module Network.Google.Resource.Directory.Members.Insert
    (
    -- * REST Resource
      MembersInsertResource

    -- * Creating a Request
    , membersInsert
    , MembersInsert

    -- * Request Lenses
    , miGroupKey
    , miPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.members.insert@ method which the
-- 'MembersInsert' request conforms to.
type MembersInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               "members" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Member :> Post '[JSON] Member

-- | Add user to the specified group.
--
-- /See:/ 'membersInsert' smart constructor.
data MembersInsert = MembersInsert
    { _miGroupKey :: !Text
    , _miPayload  :: !Member
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MembersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miGroupKey'
--
-- * 'miPayload'
membersInsert
    :: Text -- ^ 'miGroupKey'
    -> Member -- ^ 'miPayload'
    -> MembersInsert
membersInsert pMiGroupKey_ pMiPayload_ =
    MembersInsert
    { _miGroupKey = pMiGroupKey_
    , _miPayload = pMiPayload_
    }

-- | Email or immutable Id of the group
miGroupKey :: Lens' MembersInsert Text
miGroupKey
  = lens _miGroupKey (\ s a -> s{_miGroupKey = a})

-- | Multipart request metadata.
miPayload :: Lens' MembersInsert Member
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

instance GoogleRequest MembersInsert where
        type Rs MembersInsert = Member
        requestClient MembersInsert{..}
          = go _miGroupKey (Just AltJSON) _miPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy MembersInsertResource)
                      mempty
