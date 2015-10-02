{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types.Sum where

import           Network.Google.Prelude

-- | Sets the policy to use for deleting resources.
data DeploymentManagerDeploymentsPatchDeletePolicy
    = Abandon
      -- ^ @ABANDON@
    | Delete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsPatchDeletePolicy

instance FromText DeploymentManagerDeploymentsPatchDeletePolicy where
    fromText = \case
        "ABANDON" -> Just Abandon
        "DELETE" -> Just Delete
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsPatchDeletePolicy where
    toText = \case
        Abandon -> "ABANDON"
        Delete -> "DELETE"

instance FromJSON DeploymentManagerDeploymentsPatchDeletePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsPatchDeletePolicy"

instance ToJSON DeploymentManagerDeploymentsPatchDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentManagerDeploymentsPatchUpdatePolicy
    = Patch
      -- ^ @PATCH@
    | Update
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsPatchUpdatePolicy

instance FromText DeploymentManagerDeploymentsPatchUpdatePolicy where
    fromText = \case
        "PATCH" -> Just Patch
        "UPDATE" -> Just Update
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsPatchUpdatePolicy where
    toText = \case
        Patch -> "PATCH"
        Update -> "UPDATE"

instance FromJSON DeploymentManagerDeploymentsPatchUpdatePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsPatchUpdatePolicy"

instance ToJSON DeploymentManagerDeploymentsPatchUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentManagerDeploymentsPatchCreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsPatchCreatePolicy

instance FromText DeploymentManagerDeploymentsPatchCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just Acquire
        "CREATE_OR_ACQUIRE" -> Just CreateOrAcquire
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsPatchCreatePolicy where
    toText = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentManagerDeploymentsPatchCreatePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsPatchCreatePolicy"

instance ToJSON DeploymentManagerDeploymentsPatchCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentManagerDeploymentsUpdateCreatePolicy
    = DMDUCPAcquire
      -- ^ @ACQUIRE@
    | DMDUCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsUpdateCreatePolicy

instance FromText DeploymentManagerDeploymentsUpdateCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just DMDUCPAcquire
        "CREATE_OR_ACQUIRE" -> Just DMDUCPCreateOrAcquire
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsUpdateCreatePolicy where
    toText = \case
        DMDUCPAcquire -> "ACQUIRE"
        DMDUCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentManagerDeploymentsUpdateCreatePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsUpdateCreatePolicy"

instance ToJSON DeploymentManagerDeploymentsUpdateCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentManagerDeploymentsUpdateUpdatePolicy
    = DMDUUPPatch
      -- ^ @PATCH@
    | DMDUUPUpdate
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsUpdateUpdatePolicy

instance FromText DeploymentManagerDeploymentsUpdateUpdatePolicy where
    fromText = \case
        "PATCH" -> Just DMDUUPPatch
        "UPDATE" -> Just DMDUUPUpdate
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsUpdateUpdatePolicy where
    toText = \case
        DMDUUPPatch -> "PATCH"
        DMDUUPUpdate -> "UPDATE"

instance FromJSON DeploymentManagerDeploymentsUpdateUpdatePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsUpdateUpdatePolicy"

instance ToJSON DeploymentManagerDeploymentsUpdateUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentManagerDeploymentsUpdateDeletePolicy
    = DMDUDPAbandon
      -- ^ @ABANDON@
    | DMDUDPDelete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsUpdateDeletePolicy

instance FromText DeploymentManagerDeploymentsUpdateDeletePolicy where
    fromText = \case
        "ABANDON" -> Just DMDUDPAbandon
        "DELETE" -> Just DMDUDPDelete
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsUpdateDeletePolicy where
    toText = \case
        DMDUDPAbandon -> "ABANDON"
        DMDUDPDelete -> "DELETE"

instance FromJSON DeploymentManagerDeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentManagerDeploymentsUpdateDeletePolicy where
    toJSON = toJSONText
