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

-- | Sets the policy to use for creating new resources.
data CreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreatePolicy

instance FromText CreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just Acquire
        "CREATE_OR_ACQUIRE" -> Just CreateOrAcquire
        _ -> Nothing

instance ToText CreatePolicy where
    toText = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON CreatePolicy where
    parseJSON = parseJSONText "CreatePolicy"

instance ToJSON CreatePolicy where
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
    = Abandon
      -- ^ @ABANDON@
    | Delete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentManagerDeploymentsUpdateDeletePolicy

instance FromText DeploymentManagerDeploymentsUpdateDeletePolicy where
    fromText = \case
        "ABANDON" -> Just Abandon
        "DELETE" -> Just Delete
        _ -> Nothing

instance ToText DeploymentManagerDeploymentsUpdateDeletePolicy where
    toText = \case
        Abandon -> "ABANDON"
        Delete -> "DELETE"

instance FromJSON DeploymentManagerDeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentManagerDeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentManagerDeploymentsUpdateDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data UpdatePolicy
    = UPPatch
      -- ^ @PATCH@
    | UPUpdate
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UpdatePolicy

instance FromText UpdatePolicy where
    fromText = \case
        "PATCH" -> Just UPPatch
        "UPDATE" -> Just UPUpdate
        _ -> Nothing

instance ToText UpdatePolicy where
    toText = \case
        UPPatch -> "PATCH"
        UPUpdate -> "UPDATE"

instance FromJSON UpdatePolicy where
    parseJSON = parseJSONText "UpdatePolicy"

instance ToJSON UpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeletePolicy
    = DPAbandon
      -- ^ @ABANDON@
    | DPDelete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeletePolicy

instance FromText DeletePolicy where
    fromText = \case
        "ABANDON" -> Just DPAbandon
        "DELETE" -> Just DPDelete
        _ -> Nothing

instance ToText DeletePolicy where
    toText = \case
        DPAbandon -> "ABANDON"
        DPDelete -> "DELETE"

instance FromJSON DeletePolicy where
    parseJSON = parseJSONText "DeletePolicy"

instance ToJSON DeletePolicy where
    toJSON = toJSONText
