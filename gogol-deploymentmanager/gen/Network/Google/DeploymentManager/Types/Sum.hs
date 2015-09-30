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
data DeploymentmanagerDeploymentsPatchDeletePolicy
    = Abandon
      -- ^ @ABANDON@
    | Delete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsPatchDeletePolicy

instance FromText DeploymentmanagerDeploymentsPatchDeletePolicy where
    fromText = \case
        "ABANDON" -> Just Abandon
        "DELETE" -> Just Delete
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsPatchDeletePolicy where
    toText = \case
        Abandon -> "ABANDON"
        Delete -> "DELETE"

instance FromJSON DeploymentmanagerDeploymentsPatchDeletePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsPatchDeletePolicy"

instance ToJSON DeploymentmanagerDeploymentsPatchDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentmanagerDeploymentsPatchUpdatePolicy
    = Patch
      -- ^ @PATCH@
    | Update
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsPatchUpdatePolicy

instance FromText DeploymentmanagerDeploymentsPatchUpdatePolicy where
    fromText = \case
        "PATCH" -> Just Patch
        "UPDATE" -> Just Update
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsPatchUpdatePolicy where
    toText = \case
        Patch -> "PATCH"
        Update -> "UPDATE"

instance FromJSON DeploymentmanagerDeploymentsPatchUpdatePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsPatchUpdatePolicy"

instance ToJSON DeploymentmanagerDeploymentsPatchUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentmanagerDeploymentsPatchCreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsPatchCreatePolicy

instance FromText DeploymentmanagerDeploymentsPatchCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just Acquire
        "CREATE_OR_ACQUIRE" -> Just CreateOrAcquire
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsPatchCreatePolicy where
    toText = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentmanagerDeploymentsPatchCreatePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsPatchCreatePolicy"

instance ToJSON DeploymentmanagerDeploymentsPatchCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentmanagerDeploymentsUpdateCreatePolicy
    = DDUCPAcquire
      -- ^ @ACQUIRE@
    | DDUCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsUpdateCreatePolicy

instance FromText DeploymentmanagerDeploymentsUpdateCreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just DDUCPAcquire
        "CREATE_OR_ACQUIRE" -> Just DDUCPCreateOrAcquire
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsUpdateCreatePolicy where
    toText = \case
        DDUCPAcquire -> "ACQUIRE"
        DDUCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentmanagerDeploymentsUpdateCreatePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsUpdateCreatePolicy"

instance ToJSON DeploymentmanagerDeploymentsUpdateCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentmanagerDeploymentsUpdateUpdatePolicy
    = DDUUPPatch
      -- ^ @PATCH@
    | DDUUPUpdate
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsUpdateUpdatePolicy

instance FromText DeploymentmanagerDeploymentsUpdateUpdatePolicy where
    fromText = \case
        "PATCH" -> Just DDUUPPatch
        "UPDATE" -> Just DDUUPUpdate
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsUpdateUpdatePolicy where
    toText = \case
        DDUUPPatch -> "PATCH"
        DDUUPUpdate -> "UPDATE"

instance FromJSON DeploymentmanagerDeploymentsUpdateUpdatePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsUpdateUpdatePolicy"

instance ToJSON DeploymentmanagerDeploymentsUpdateUpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentmanagerDeploymentsUpdateDeletePolicy
    = DDUDPAbandon
      -- ^ @ABANDON@
    | DDUDPDelete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentmanagerDeploymentsUpdateDeletePolicy

instance FromText DeploymentmanagerDeploymentsUpdateDeletePolicy where
    fromText = \case
        "ABANDON" -> Just DDUDPAbandon
        "DELETE" -> Just DDUDPDelete
        _ -> Nothing

instance ToText DeploymentmanagerDeploymentsUpdateDeletePolicy where
    toText = \case
        DDUDPAbandon -> "ABANDON"
        DDUDPDelete -> "DELETE"

instance FromJSON DeploymentmanagerDeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentmanagerDeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentmanagerDeploymentsUpdateDeletePolicy where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText
