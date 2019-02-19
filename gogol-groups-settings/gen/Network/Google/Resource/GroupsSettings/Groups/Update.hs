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
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.update@.
module Network.Google.Resource.GroupsSettings.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guPayload
    , guGroupUniqueId
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @groupsSettings.groups.update@ method which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateResource =
     "groups" :>
       "v1" :>
         "groups" :>
           Capture "groupUniqueId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Groups :> Put '[JSON] Groups

-- | Updates an existing resource.
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate =
  GroupsUpdate'
    { _guPayload       :: !Groups
    , _guGroupUniqueId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guPayload'
--
-- * 'guGroupUniqueId'
groupsUpdate
    :: Groups -- ^ 'guPayload'
    -> Text -- ^ 'guGroupUniqueId'
    -> GroupsUpdate
groupsUpdate pGuPayload_ pGuGroupUniqueId_ =
  GroupsUpdate' {_guPayload = pGuPayload_, _guGroupUniqueId = pGuGroupUniqueId_}

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate Groups
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

-- | The resource ID
guGroupUniqueId :: Lens' GroupsUpdate Text
guGroupUniqueId
  = lens _guGroupUniqueId
      (\ s a -> s{_guGroupUniqueId = a})

instance GoogleRequest GroupsUpdate where
        type Rs GroupsUpdate = Groups
        type Scopes GroupsUpdate =
             '["https://www.googleapis.com/auth/apps.groups.settings"]
        requestClient GroupsUpdate'{..}
          = go _guGroupUniqueId (Just AltJSON) _guPayload
              groupsSettingsService
          where go
                  = buildClient (Proxy :: Proxy GroupsUpdateResource)
                      mempty
