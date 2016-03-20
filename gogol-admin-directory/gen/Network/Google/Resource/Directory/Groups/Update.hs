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
-- Module      : Network.Google.Resource.Directory.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.groups.update@.
module Network.Google.Resource.Directory.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guGroupKey
    , guPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.groups.update@ method which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "groups" :>
             Capture "groupKey" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Update Group
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate = GroupsUpdate
    { _guGroupKey :: !Text
    , _guPayload  :: !Group
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guGroupKey'
--
-- * 'guPayload'
groupsUpdate
    :: Text -- ^ 'guGroupKey'
    -> Group -- ^ 'guPayload'
    -> GroupsUpdate
groupsUpdate pGuGroupKey_ pGuPayload_ =
    GroupsUpdate
    { _guGroupKey = pGuGroupKey_
    , _guPayload = pGuPayload_
    }

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
guGroupKey :: Lens' GroupsUpdate Text
guGroupKey
  = lens _guGroupKey (\ s a -> s{_guGroupKey = a})

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

instance GoogleRequest GroupsUpdate where
        type Rs GroupsUpdate = Group
        requestClient GroupsUpdate{..}
          = go _guGroupKey (Just AltJSON) _guPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsUpdateResource)
                      mempty
