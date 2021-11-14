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
-- Module      : Network.Google.Resource.Directory.ResolvedAppAccessSettings.GetSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves resolved app access settings of the logged in user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resolvedAppAccessSettings.GetSettings@.
module Network.Google.Resource.Directory.ResolvedAppAccessSettings.GetSettings
    (
    -- * REST Resource
      ResolvedAppAccessSettingsGetSettingsResource

    -- * Creating a Request
    , resolvedAppAccessSettingsGetSettings
    , ResolvedAppAccessSettingsGetSettings

    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resolvedAppAccessSettings.GetSettings@ method which the
-- 'ResolvedAppAccessSettingsGetSettings' request conforms to.
type ResolvedAppAccessSettingsGetSettingsResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "resolvedappaccesssettings" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AppAccessCollections

-- | Retrieves resolved app access settings of the logged in user.
--
-- /See:/ 'resolvedAppAccessSettingsGetSettings' smart constructor.
data ResolvedAppAccessSettingsGetSettings =
  ResolvedAppAccessSettingsGetSettings'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResolvedAppAccessSettingsGetSettings' with the minimum fields required to make a request.
--
resolvedAppAccessSettingsGetSettings
    :: ResolvedAppAccessSettingsGetSettings
resolvedAppAccessSettingsGetSettings = ResolvedAppAccessSettingsGetSettings'


instance GoogleRequest
           ResolvedAppAccessSettingsGetSettings
         where
        type Rs ResolvedAppAccessSettingsGetSettings =
             AppAccessCollections
        type Scopes ResolvedAppAccessSettingsGetSettings =
             '[]
        requestClient ResolvedAppAccessSettingsGetSettings'{}
          = go (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ResolvedAppAccessSettingsGetSettingsResource)
                      mempty
