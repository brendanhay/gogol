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
data DeploymentsPatch'CreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatch'CreatePolicy

instance FromText DeploymentsPatch'CreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just Acquire
        "CREATE_OR_ACQUIRE" -> Just CreateOrAcquire
        _ -> Nothing

instance ToText DeploymentsPatch'CreatePolicy where
    toText = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsPatch'CreatePolicy where
    parseJSON = parseJSONText "DeploymentsPatch'CreatePolicy"

instance ToJSON DeploymentsPatch'CreatePolicy where
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

-- | Sets the policy to use for creating new resources.
data DeploymentsUpdate'CreatePolicy
    = DUCPAcquire
      -- ^ @ACQUIRE@
    | DUCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdate'CreatePolicy

instance FromText DeploymentsUpdate'CreatePolicy where
    fromText = \case
        "ACQUIRE" -> Just DUCPAcquire
        "CREATE_OR_ACQUIRE" -> Just DUCPCreateOrAcquire
        _ -> Nothing

instance ToText DeploymentsUpdate'CreatePolicy where
    toText = \case
        DUCPAcquire -> "ACQUIRE"
        DUCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsUpdate'CreatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdate'CreatePolicy"

instance ToJSON DeploymentsUpdate'CreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentsUpdate'UpdatePolicy
    = Patch
      -- ^ @PATCH@
    | Update
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdate'UpdatePolicy

instance FromText DeploymentsUpdate'UpdatePolicy where
    fromText = \case
        "PATCH" -> Just Patch
        "UPDATE" -> Just Update
        _ -> Nothing

instance ToText DeploymentsUpdate'UpdatePolicy where
    toText = \case
        Patch -> "PATCH"
        Update -> "UPDATE"

instance FromJSON DeploymentsUpdate'UpdatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdate'UpdatePolicy"

instance ToJSON DeploymentsUpdate'UpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsUpdate'DeletePolicy
    = Abandon
      -- ^ @ABANDON@
    | Delete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsUpdate'DeletePolicy

instance FromText DeploymentsUpdate'DeletePolicy where
    fromText = \case
        "ABANDON" -> Just Abandon
        "DELETE" -> Just Delete
        _ -> Nothing

instance ToText DeploymentsUpdate'DeletePolicy where
    toText = \case
        Abandon -> "ABANDON"
        Delete -> "DELETE"

instance FromJSON DeploymentsUpdate'DeletePolicy where
    parseJSON = parseJSONText "DeploymentsUpdate'DeletePolicy"

instance ToJSON DeploymentsUpdate'DeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for updating resources.
data DeploymentsPatch'UpdatePolicy
    = DPUPPatch
      -- ^ @PATCH@
    | DPUPUpdate
      -- ^ @UPDATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatch'UpdatePolicy

instance FromText DeploymentsPatch'UpdatePolicy where
    fromText = \case
        "PATCH" -> Just DPUPPatch
        "UPDATE" -> Just DPUPUpdate
        _ -> Nothing

instance ToText DeploymentsPatch'UpdatePolicy where
    toText = \case
        DPUPPatch -> "PATCH"
        DPUPUpdate -> "UPDATE"

instance FromJSON DeploymentsPatch'UpdatePolicy where
    parseJSON = parseJSONText "DeploymentsPatch'UpdatePolicy"

instance ToJSON DeploymentsPatch'UpdatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsPatch'DeletePolicy
    = DPDPAbandon
      -- ^ @ABANDON@
    | DPDPDelete
      -- ^ @DELETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeploymentsPatch'DeletePolicy

instance FromText DeploymentsPatch'DeletePolicy where
    fromText = \case
        "ABANDON" -> Just DPDPAbandon
        "DELETE" -> Just DPDPDelete
        _ -> Nothing

instance ToText DeploymentsPatch'DeletePolicy where
    toText = \case
        DPDPAbandon -> "ABANDON"
        DPDPDelete -> "DELETE"

instance FromJSON DeploymentsPatch'DeletePolicy where
    parseJSON = parseJSONText "DeploymentsPatch'DeletePolicy"

instance ToJSON DeploymentsPatch'DeletePolicy where
    toJSON = toJSONText
