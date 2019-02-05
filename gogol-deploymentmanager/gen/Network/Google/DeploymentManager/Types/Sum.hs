{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Sets the policy to use for creating new resources.
data DeploymentsUpdateCreatePolicy
    = Acquire
      -- ^ @ACQUIRE@
    | CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsUpdateCreatePolicy

instance FromHttpApiData DeploymentsUpdateCreatePolicy where
    parseQueryParam = \case
        "ACQUIRE" -> Right Acquire
        "CREATE_OR_ACQUIRE" -> Right CreateOrAcquire
        x -> Left ("Unable to parse DeploymentsUpdateCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsUpdateCreatePolicy where
    toQueryParam = \case
        Acquire -> "ACQUIRE"
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsUpdateCreatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateCreatePolicy"

instance ToJSON DeploymentsUpdateCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsDeleteDeletePolicy
    = Abandon
      -- ^ @ABANDON@
    | Delete'
      -- ^ @DELETE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsDeleteDeletePolicy

instance FromHttpApiData DeploymentsDeleteDeletePolicy where
    parseQueryParam = \case
        "ABANDON" -> Right Abandon
        "DELETE" -> Right Delete'
        x -> Left ("Unable to parse DeploymentsDeleteDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsDeleteDeletePolicy where
    toQueryParam = \case
        Abandon -> "ABANDON"
        Delete' -> "DELETE"

instance FromJSON DeploymentsDeleteDeletePolicy where
    parseJSON = parseJSONText "DeploymentsDeleteDeletePolicy"

instance ToJSON DeploymentsDeleteDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsUpdateDeletePolicy
    = DUDPAbandon
      -- ^ @ABANDON@
    | DUDPDelete'
      -- ^ @DELETE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsUpdateDeletePolicy

instance FromHttpApiData DeploymentsUpdateDeletePolicy where
    parseQueryParam = \case
        "ABANDON" -> Right DUDPAbandon
        "DELETE" -> Right DUDPDelete'
        x -> Left ("Unable to parse DeploymentsUpdateDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsUpdateDeletePolicy where
    toQueryParam = \case
        DUDPAbandon -> "ABANDON"
        DUDPDelete' -> "DELETE"

instance FromJSON DeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentsUpdateDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsPatchDeletePolicy
    = DPDPAbandon
      -- ^ @ABANDON@
    | DPDPDelete'
      -- ^ @DELETE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsPatchDeletePolicy

instance FromHttpApiData DeploymentsPatchDeletePolicy where
    parseQueryParam = \case
        "ABANDON" -> Right DPDPAbandon
        "DELETE" -> Right DPDPDelete'
        x -> Left ("Unable to parse DeploymentsPatchDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsPatchDeletePolicy where
    toQueryParam = \case
        DPDPAbandon -> "ABANDON"
        DPDPDelete' -> "DELETE"

instance FromJSON DeploymentsPatchDeletePolicy where
    parseJSON = parseJSONText "DeploymentsPatchDeletePolicy"

instance ToJSON DeploymentsPatchDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsPatchCreatePolicy
    = DPCPAcquire
      -- ^ @ACQUIRE@
    | DPCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsPatchCreatePolicy

instance FromHttpApiData DeploymentsPatchCreatePolicy where
    parseQueryParam = \case
        "ACQUIRE" -> Right DPCPAcquire
        "CREATE_OR_ACQUIRE" -> Right DPCPCreateOrAcquire
        x -> Left ("Unable to parse DeploymentsPatchCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsPatchCreatePolicy where
    toQueryParam = \case
        DPCPAcquire -> "ACQUIRE"
        DPCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsPatchCreatePolicy where
    parseJSON = parseJSONText "DeploymentsPatchCreatePolicy"

instance ToJSON DeploymentsPatchCreatePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsInsertCreatePolicy
    = DICPAcquire
      -- ^ @ACQUIRE@
    | DICPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsInsertCreatePolicy

instance FromHttpApiData DeploymentsInsertCreatePolicy where
    parseQueryParam = \case
        "ACQUIRE" -> Right DICPAcquire
        "CREATE_OR_ACQUIRE" -> Right DICPCreateOrAcquire
        x -> Left ("Unable to parse DeploymentsInsertCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsInsertCreatePolicy where
    toQueryParam = \case
        DICPAcquire -> "ACQUIRE"
        DICPCreateOrAcquire -> "CREATE_OR_ACQUIRE"

instance FromJSON DeploymentsInsertCreatePolicy where
    parseJSON = parseJSONText "DeploymentsInsertCreatePolicy"

instance ToJSON DeploymentsInsertCreatePolicy where
    toJSON = toJSONText
