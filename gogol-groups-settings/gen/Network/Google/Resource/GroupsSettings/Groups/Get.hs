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
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one resource by id.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.get@.
module Network.Google.Resource.GroupsSettings.Groups.Get
    (
    -- * REST Resource
      GroupsGetResource

    -- * Creating a Request
    , groupsGet
    , GroupsGet

    -- * Request Lenses
    , ggGroupUniqueId
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @groupsSettings.groups.get@ method which the
-- 'GroupsGet' request conforms to.
type GroupsGetResource =
     "groups" :>
       "v1" :>
         "groups" :>
           Capture "groupUniqueId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Groups

-- | Gets one resource by id.
--
-- /See:/ 'groupsGet' smart constructor.
newtype GroupsGet =
  GroupsGet'
    { _ggGroupUniqueId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggGroupUniqueId'
groupsGet
    :: Text -- ^ 'ggGroupUniqueId'
    -> GroupsGet
groupsGet pGgGroupUniqueId_ = GroupsGet' {_ggGroupUniqueId = pGgGroupUniqueId_}

-- | The resource ID
ggGroupUniqueId :: Lens' GroupsGet Text
ggGroupUniqueId
  = lens _ggGroupUniqueId
      (\ s a -> s{_ggGroupUniqueId = a})

instance GoogleRequest GroupsGet where
        type Rs GroupsGet = Groups
        type Scopes GroupsGet =
             '["https://www.googleapis.com/auth/apps.groups.settings"]
        requestClient GroupsGet'{..}
          = go _ggGroupUniqueId (Just AltJSON)
              groupsSettingsService
          where go
                  = buildClient (Proxy :: Proxy GroupsGetResource)
                      mempty
