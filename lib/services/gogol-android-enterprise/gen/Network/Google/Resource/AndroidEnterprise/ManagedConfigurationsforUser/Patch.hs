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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates the managed configuration settings for an app for the
-- specified user. If you support the Managed configurations iframe, you
-- can apply managed configurations to a user by specifying an mcmId and
-- its associated configuration variables (if any) in the request.
-- Alternatively, all EMMs can apply managed configurations by passing a
-- list of managed properties. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.patch@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Patch
    (
    -- * REST Resource
      ManagedConfigurationsforUserPatchResource

    -- * Creating a Request
    , managedConfigurationsforUserPatch
    , ManagedConfigurationsforUserPatch

    -- * Request Lenses
    , mcupEnterpriseId
    , mcupPayload
    , mcupUserId
    , mcupManagedConfigurationForUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.patch@ method which the
-- 'ManagedConfigurationsforUserPatch' request conforms to.
type ManagedConfigurationsforUserPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "managedConfigurationsForUser" :>
                   Capture "managedConfigurationForUserId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ManagedConfiguration :>
                         Patch '[JSON] ManagedConfiguration

-- | Adds or updates the managed configuration settings for an app for the
-- specified user. If you support the Managed configurations iframe, you
-- can apply managed configurations to a user by specifying an mcmId and
-- its associated configuration variables (if any) in the request.
-- Alternatively, all EMMs can apply managed configurations by passing a
-- list of managed properties. This method supports patch semantics.
--
-- /See:/ 'managedConfigurationsforUserPatch' smart constructor.
data ManagedConfigurationsforUserPatch =
  ManagedConfigurationsforUserPatch'
    { _mcupEnterpriseId                  :: !Text
    , _mcupPayload                       :: !ManagedConfiguration
    , _mcupUserId                        :: !Text
    , _mcupManagedConfigurationForUserId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcupEnterpriseId'
--
-- * 'mcupPayload'
--
-- * 'mcupUserId'
--
-- * 'mcupManagedConfigurationForUserId'
managedConfigurationsforUserPatch
    :: Text -- ^ 'mcupEnterpriseId'
    -> ManagedConfiguration -- ^ 'mcupPayload'
    -> Text -- ^ 'mcupUserId'
    -> Text -- ^ 'mcupManagedConfigurationForUserId'
    -> ManagedConfigurationsforUserPatch
managedConfigurationsforUserPatch pMcupEnterpriseId_ pMcupPayload_ pMcupUserId_ pMcupManagedConfigurationForUserId_ =
  ManagedConfigurationsforUserPatch'
    { _mcupEnterpriseId = pMcupEnterpriseId_
    , _mcupPayload = pMcupPayload_
    , _mcupUserId = pMcupUserId_
    , _mcupManagedConfigurationForUserId = pMcupManagedConfigurationForUserId_
    }


-- | The ID of the enterprise.
mcupEnterpriseId :: Lens' ManagedConfigurationsforUserPatch Text
mcupEnterpriseId
  = lens _mcupEnterpriseId
      (\ s a -> s{_mcupEnterpriseId = a})

-- | Multipart request metadata.
mcupPayload :: Lens' ManagedConfigurationsforUserPatch ManagedConfiguration
mcupPayload
  = lens _mcupPayload (\ s a -> s{_mcupPayload = a})

-- | The ID of the user.
mcupUserId :: Lens' ManagedConfigurationsforUserPatch Text
mcupUserId
  = lens _mcupUserId (\ s a -> s{_mcupUserId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcupManagedConfigurationForUserId :: Lens' ManagedConfigurationsforUserPatch Text
mcupManagedConfigurationForUserId
  = lens _mcupManagedConfigurationForUserId
      (\ s a -> s{_mcupManagedConfigurationForUserId = a})

instance GoogleRequest
           ManagedConfigurationsforUserPatch
         where
        type Rs ManagedConfigurationsforUserPatch =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforUserPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserPatch'{..}
          = go _mcupEnterpriseId _mcupUserId
              _mcupManagedConfigurationForUserId
              (Just AltJSON)
              _mcupPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserPatchResource)
                      mempty
