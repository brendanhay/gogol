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
-- Module      : Network.Google.Resource.Directory.ResolvedAppAccessSettings.ListTrustedApps
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of apps trusted by the admin of the logged in user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.resolvedAppAccessSettings.ListTrustedApps@.
module Network.Google.Resource.Directory.ResolvedAppAccessSettings.ListTrustedApps
    (
    -- * REST Resource
      ResolvedAppAccessSettingsListTrustedAppsResource

    -- * Creating a Request
    , resolvedAppAccessSettingsListTrustedApps
    , ResolvedAppAccessSettingsListTrustedApps

    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.resolvedAppAccessSettings.ListTrustedApps@ method which the
-- 'ResolvedAppAccessSettingsListTrustedApps' request conforms to.
type ResolvedAppAccessSettingsListTrustedAppsResource
     =
     "admin" :>
       "directory" :>
         "v1" :>
           "trustedapps" :>
             QueryParam "alt" AltJSON :> Get '[JSON] TrustedApps

-- | Retrieves the list of apps trusted by the admin of the logged in user.
--
-- /See:/ 'resolvedAppAccessSettingsListTrustedApps' smart constructor.
data ResolvedAppAccessSettingsListTrustedApps =
  ResolvedAppAccessSettingsListTrustedApps'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResolvedAppAccessSettingsListTrustedApps' with the minimum fields required to make a request.
--
resolvedAppAccessSettingsListTrustedApps
    :: ResolvedAppAccessSettingsListTrustedApps
resolvedAppAccessSettingsListTrustedApps =
  ResolvedAppAccessSettingsListTrustedApps'


instance GoogleRequest
           ResolvedAppAccessSettingsListTrustedApps
         where
        type Rs ResolvedAppAccessSettingsListTrustedApps =
             TrustedApps
        type Scopes ResolvedAppAccessSettingsListTrustedApps
             = '[]
        requestClient
          ResolvedAppAccessSettingsListTrustedApps'{}
          = go (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ResolvedAppAccessSettingsListTrustedAppsResource)
                      mempty
