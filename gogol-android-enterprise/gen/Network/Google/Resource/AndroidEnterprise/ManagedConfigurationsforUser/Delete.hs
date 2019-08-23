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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a per-user managed configuration for an app for the specified
-- user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.delete@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete
    (
    -- * REST Resource
      ManagedConfigurationsforUserDeleteResource

    -- * Creating a Request
    , managedConfigurationsforUserDelete
    , ManagedConfigurationsforUserDelete

    -- * Request Lenses
    , mcudEnterpriseId
    , mcudUserId
    , mcudManagedConfigurationForUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.delete@ method which the
-- 'ManagedConfigurationsforUserDelete' request conforms to.
type ManagedConfigurationsforUserDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "managedConfigurationsForUser" :>
                   Capture "managedConfigurationForUserId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a per-user managed configuration for an app for the specified
-- user.
--
-- /See:/ 'managedConfigurationsforUserDelete' smart constructor.
data ManagedConfigurationsforUserDelete =
  ManagedConfigurationsforUserDelete'
    { _mcudEnterpriseId                  :: !Text
    , _mcudUserId                        :: !Text
    , _mcudManagedConfigurationForUserId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcudEnterpriseId'
--
-- * 'mcudUserId'
--
-- * 'mcudManagedConfigurationForUserId'
managedConfigurationsforUserDelete
    :: Text -- ^ 'mcudEnterpriseId'
    -> Text -- ^ 'mcudUserId'
    -> Text -- ^ 'mcudManagedConfigurationForUserId'
    -> ManagedConfigurationsforUserDelete
managedConfigurationsforUserDelete pMcudEnterpriseId_ pMcudUserId_ pMcudManagedConfigurationForUserId_ =
  ManagedConfigurationsforUserDelete'
    { _mcudEnterpriseId = pMcudEnterpriseId_
    , _mcudUserId = pMcudUserId_
    , _mcudManagedConfigurationForUserId = pMcudManagedConfigurationForUserId_
    }


-- | The ID of the enterprise.
mcudEnterpriseId :: Lens' ManagedConfigurationsforUserDelete Text
mcudEnterpriseId
  = lens _mcudEnterpriseId
      (\ s a -> s{_mcudEnterpriseId = a})

-- | The ID of the user.
mcudUserId :: Lens' ManagedConfigurationsforUserDelete Text
mcudUserId
  = lens _mcudUserId (\ s a -> s{_mcudUserId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcudManagedConfigurationForUserId :: Lens' ManagedConfigurationsforUserDelete Text
mcudManagedConfigurationForUserId
  = lens _mcudManagedConfigurationForUserId
      (\ s a -> s{_mcudManagedConfigurationForUserId = a})

instance GoogleRequest
           ManagedConfigurationsforUserDelete
         where
        type Rs ManagedConfigurationsforUserDelete = ()
        type Scopes ManagedConfigurationsforUserDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserDelete'{..}
          = go _mcudEnterpriseId _mcudUserId
              _mcudManagedConfigurationForUserId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserDeleteResource)
                      mempty
