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
data DeploymentsUpdateCreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdateCreatePolicy

instance FromText DeploymentsUpdateCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just Acquire
        "CREATE_OR_ACQUIRE" -> Just CreateOrAcquire
        _ -> Nothing

instance ToText DeploymentsUpdateCreatePolicy where
    toText = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsUpdateCreatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateCreatePolicy"

instance ToJSON DeploymentsUpdateCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentsUpdateUpdatePolicy
    = Patch
      -- ^ @PATCH@
    | Update
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdateUpdatePolicy

instance FromText DeploymentsUpdateUpdatePolicy where
    fromText = \case
        "PATCH" -> Just Patch
        "UPDATE" -> Just Update
        _ -> Nothing

instance ToText DeploymentsUpdateUpdatePolicy where
    toText = \case
        Patch -> "PATCH"
        Update -> "UPDATE"

instance FromJSON DeploymentsUpdateUpdatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateUpdatePolicy"

instance ToJSON DeploymentsUpdateUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsUpdateDeletePolicy
    = Abandon
      -- ^ @ABANDON@
    | Delete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdateDeletePolicy

instance FromText DeploymentsUpdateDeletePolicy where
    fromText = \case
        "ABANDON" -> Just Abandon
        "DELETE" -> Just Delete
        _ -> Nothing

instance ToText DeploymentsUpdateDeletePolicy where
    toText = \case
        Abandon -> "ABANDON"
        Delete -> "DELETE"

instance FromJSON DeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentsUpdateDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsPatchDeletePolicy
    = DPDPAbandon
      -- ^ @ABANDON@
    | DPDPDelete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatchDeletePolicy

instance FromText DeploymentsPatchDeletePolicy where
    fromText = \case
        "ABANDON" -> Just DPDPAbandon
        "DELETE" -> Just DPDPDelete
        _ -> Nothing

instance ToText DeploymentsPatchDeletePolicy where
    toText = \case
        DPDPAbandon -> "ABANDON"
        DPDPDelete -> "DELETE"

instance FromJSON DeploymentsPatchDeletePolicy where
    parseJSON = parseJSONText "DeploymentsPatchDeletePolicy"

instance ToJSON DeploymentsPatchDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentsPatchUpdatePolicy
    = DPUPPatch
      -- ^ @PATCH@
    | DPUPUpdate
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatchUpdatePolicy

instance FromText DeploymentsPatchUpdatePolicy where
    fromText = \case
        "PATCH" -> Just DPUPPatch
        "UPDATE" -> Just DPUPUpdate
        _ -> Nothing

instance ToText DeploymentsPatchUpdatePolicy where
    toText = \case
        DPUPPatch -> "PATCH"
        DPUPUpdate -> "UPDATE"

instance FromJSON DeploymentsPatchUpdatePolicy where
    parseJSON = parseJSONText "DeploymentsPatchUpdatePolicy"

instance ToJSON DeploymentsPatchUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsPatchCreatePolicy
    = DPCPAcquire
      -- ^ @ACQUIRE@
    | DPCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatchCreatePolicy

instance FromText DeploymentsPatchCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just DPCPAcquire
        "CREATE_OR_ACQUIRE" -> Just DPCPCreateOrAcquire
        _ -> Nothing

instance ToText DeploymentsPatchCreatePolicy where
    toText = \case
        DPCPAcquire -> "ACQUIRE"
        DPCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsPatchCreatePolicy where
    parseJSON = parseJSONText "DeploymentsPatchCreatePolicy"

instance ToJSON DeploymentsPatchCreatePolicy where
    toJSON = toJSONText
