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
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.patch@.
module Network.Google.Resource.GroupsSettings.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchResource

    -- * Creating a Request
    , groupsPatch
    , GroupsPatch

    -- * Request Lenses
    , gpPayload
    , gpGroupUniqueId
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @groupsSettings.groups.patch@ method which the
-- 'GroupsPatch' request conforms to.
type GroupsPatchResource =
     "groups" :>
       "v1" :>
         "groups" :>
           Capture "groupUniqueId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Groups :> Patch '[JSON] Groups

-- | Updates an existing resource. This method supports patch semantics.
--
-- /See:/ 'groupsPatch' smart constructor.
data GroupsPatch = GroupsPatch
    { _gpPayload       :: !Groups
    , _gpGroupUniqueId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpPayload'
--
-- * 'gpGroupUniqueId'
groupsPatch
    :: Groups -- ^ 'gpPayload'
    -> Text -- ^ 'gpGroupUniqueId'
    -> GroupsPatch
groupsPatch pGpPayload_ pGpGroupUniqueId_ =
    GroupsPatch
    { _gpPayload = pGpPayload_
    , _gpGroupUniqueId = pGpGroupUniqueId_
    }

-- | Multipart request metadata.
gpPayload :: Lens' GroupsPatch Groups
gpPayload
  = lens _gpPayload (\ s a -> s{_gpPayload = a})

-- | The resource ID
gpGroupUniqueId :: Lens' GroupsPatch Text
gpGroupUniqueId
  = lens _gpGroupUniqueId
      (\ s a -> s{_gpGroupUniqueId = a})

instance GoogleRequest GroupsPatch where
        type Rs GroupsPatch = Groups
        requestClient GroupsPatch{..}
          = go _gpGroupUniqueId (Just AltJSON) _gpPayload
              groupsSettingsService
          where go
                  = buildClient (Proxy :: Proxy GroupsPatchResource)
                      mempty
