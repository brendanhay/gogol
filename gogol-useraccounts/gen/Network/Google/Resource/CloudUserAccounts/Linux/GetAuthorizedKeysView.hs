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
-- Module      : Network.Google.Resource.CloudUserAccounts.Linux.GetAuthorizedKeysView
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of authorized public keys for a specific user account.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.linux.getAuthorizedKeysView@.
module Network.Google.Resource.CloudUserAccounts.Linux.GetAuthorizedKeysView
    (
    -- * REST Resource
      LinuxGetAuthorizedKeysViewResource

    -- * Creating a Request
    , linuxGetAuthorizedKeysView
    , LinuxGetAuthorizedKeysView

    -- * Request Lenses
    , lgakvProject
    , lgakvZone
    , lgakvUser
    , lgakvLogin
    , lgakvInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.linux.getAuthorizedKeysView@ method which the
-- 'LinuxGetAuthorizedKeysView' request conforms to.
type LinuxGetAuthorizedKeysViewResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "authorizedKeysView" :>
                   Capture "user" Text :>
                     QueryParam "instance" Text :>
                       QueryParam "login" Bool :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] LinuxGetAuthorizedKeysViewResponse

-- | Returns a list of authorized public keys for a specific user account.
--
-- /See:/ 'linuxGetAuthorizedKeysView' smart constructor.
data LinuxGetAuthorizedKeysView = LinuxGetAuthorizedKeysView
    { _lgakvProject  :: !Text
    , _lgakvZone     :: !Text
    , _lgakvUser     :: !Text
    , _lgakvLogin    :: !(Maybe Bool)
    , _lgakvInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinuxGetAuthorizedKeysView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgakvProject'
--
-- * 'lgakvZone'
--
-- * 'lgakvUser'
--
-- * 'lgakvLogin'
--
-- * 'lgakvInstance'
linuxGetAuthorizedKeysView
    :: Text -- ^ 'lgakvProject'
    -> Text -- ^ 'lgakvZone'
    -> Text -- ^ 'lgakvUser'
    -> Text -- ^ 'lgakvInstance'
    -> LinuxGetAuthorizedKeysView
linuxGetAuthorizedKeysView pLgakvProject_ pLgakvZone_ pLgakvUser_ pLgakvInstance_ =
    LinuxGetAuthorizedKeysView
    { _lgakvProject = pLgakvProject_
    , _lgakvZone = pLgakvZone_
    , _lgakvUser = pLgakvUser_
    , _lgakvLogin = Nothing
    , _lgakvInstance = pLgakvInstance_
    }

-- | Project ID for this request.
lgakvProject :: Lens' LinuxGetAuthorizedKeysView Text
lgakvProject
  = lens _lgakvProject (\ s a -> s{_lgakvProject = a})

-- | Name of the zone for this request.
lgakvZone :: Lens' LinuxGetAuthorizedKeysView Text
lgakvZone
  = lens _lgakvZone (\ s a -> s{_lgakvZone = a})

-- | The user account for which you want to get a list of authorized public
-- keys.
lgakvUser :: Lens' LinuxGetAuthorizedKeysView Text
lgakvUser
  = lens _lgakvUser (\ s a -> s{_lgakvUser = a})

-- | Whether the view was requested as part of a user-initiated login.
lgakvLogin :: Lens' LinuxGetAuthorizedKeysView (Maybe Bool)
lgakvLogin
  = lens _lgakvLogin (\ s a -> s{_lgakvLogin = a})

-- | The fully-qualified URL of the virtual machine requesting the view.
lgakvInstance :: Lens' LinuxGetAuthorizedKeysView Text
lgakvInstance
  = lens _lgakvInstance
      (\ s a -> s{_lgakvInstance = a})

instance GoogleRequest LinuxGetAuthorizedKeysView
         where
        type Rs LinuxGetAuthorizedKeysView =
             LinuxGetAuthorizedKeysViewResponse
        type Scopes LinuxGetAuthorizedKeysView =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/cloud.useraccounts",
               "https://www.googleapis.com/auth/cloud.useraccounts.readonly"]
        requestClient LinuxGetAuthorizedKeysView{..}
          = go _lgakvProject _lgakvZone _lgakvUser
              (Just _lgakvInstance)
              _lgakvLogin
              (Just AltJSON)
              userAccountsService
          where go
                  = buildClient
                      (Proxy :: Proxy LinuxGetAuthorizedKeysViewResource)
                      mempty
