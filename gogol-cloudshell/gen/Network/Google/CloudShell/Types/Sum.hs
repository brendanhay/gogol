{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudShell.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudShell.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Current state of the environment being started.
data StartEnvironmentMetadataState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The environment\'s start state is unknown.
    | Starting
      -- ^ @STARTING@
      -- The environment is in the process of being started, but no additional
      -- details are available.
    | UnarchivingDisk
      -- ^ @UNARCHIVING_DISK@
      -- Startup is waiting for the user\'s disk to be unarchived. This can
      -- happen when the user returns to Cloud Shell after not having used it for
      -- a while, and suggests that startup will take longer than normal.
    | Finished
      -- ^ @FINISHED@
      -- Startup is complete and the user should be able to establish an SSH
      -- connection to their environment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StartEnvironmentMetadataState

instance FromHttpApiData StartEnvironmentMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "STARTING" -> Right Starting
        "UNARCHIVING_DISK" -> Right UnarchivingDisk
        "FINISHED" -> Right Finished
        x -> Left ("Unable to parse StartEnvironmentMetadataState from: " <> x)

instance ToHttpApiData StartEnvironmentMetadataState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Starting -> "STARTING"
        UnarchivingDisk -> "UNARCHIVING_DISK"
        Finished -> "FINISHED"

instance FromJSON StartEnvironmentMetadataState where
    parseJSON = parseJSONText "StartEnvironmentMetadataState"

instance ToJSON StartEnvironmentMetadataState where
    toJSON = toJSONText

-- | Output only. Current execution state of this environment.
data EnvironmentState
    = ESStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The environment\'s states is unknown.
    | ESDisabled
      -- ^ @DISABLED@
      -- The environment is not running and can\'t be connected to. Starting the
      -- environment will transition it to the STARTING state.
    | ESStarting
      -- ^ @STARTING@
      -- The environment is being started but is not yet ready to accept
      -- connections.
    | ESRunning
      -- ^ @RUNNING@
      -- The environment is running and ready to accept connections. It will
      -- automatically transition back to DISABLED after a period of inactivity
      -- or if another environment is started.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnvironmentState

instance FromHttpApiData EnvironmentState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right ESStateUnspecified
        "DISABLED" -> Right ESDisabled
        "STARTING" -> Right ESStarting
        "RUNNING" -> Right ESRunning
        x -> Left ("Unable to parse EnvironmentState from: " <> x)

instance ToHttpApiData EnvironmentState where
    toQueryParam = \case
        ESStateUnspecified -> "STATE_UNSPECIFIED"
        ESDisabled -> "DISABLED"
        ESStarting -> "STARTING"
        ESRunning -> "RUNNING"

instance FromJSON EnvironmentState where
    parseJSON = parseJSONText "EnvironmentState"

instance ToJSON EnvironmentState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Required. Format of this key\'s content.
data PublicKeyFormat
    = FormatUnspecified
      -- ^ @FORMAT_UNSPECIFIED@
      -- Unknown format. Do not use.
    | SSHDss
      -- ^ @SSH_DSS@
      -- \`ssh-dss\` key format (see RFC4253).
    | SSHRsa
      -- ^ @SSH_RSA@
      -- \`ssh-rsa\` key format (see RFC4253).
    | EcdsaSHA2NISTP256
      -- ^ @ECDSA_SHA2_NISTP256@
      -- \`ecdsa-sha2-nistp256\` key format (see RFC5656).
    | EcdsaSHA2NISTP384
      -- ^ @ECDSA_SHA2_NISTP384@
      -- \`ecdsa-sha2-nistp384\` key format (see RFC5656).
    | EcdsaSHA2NISTP521
      -- ^ @ECDSA_SHA2_NISTP521@
      -- \`ecdsa-sha2-nistp521\` key format (see RFC5656).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PublicKeyFormat

instance FromHttpApiData PublicKeyFormat where
    parseQueryParam = \case
        "FORMAT_UNSPECIFIED" -> Right FormatUnspecified
        "SSH_DSS" -> Right SSHDss
        "SSH_RSA" -> Right SSHRsa
        "ECDSA_SHA2_NISTP256" -> Right EcdsaSHA2NISTP256
        "ECDSA_SHA2_NISTP384" -> Right EcdsaSHA2NISTP384
        "ECDSA_SHA2_NISTP521" -> Right EcdsaSHA2NISTP521
        x -> Left ("Unable to parse PublicKeyFormat from: " <> x)

instance ToHttpApiData PublicKeyFormat where
    toQueryParam = \case
        FormatUnspecified -> "FORMAT_UNSPECIFIED"
        SSHDss -> "SSH_DSS"
        SSHRsa -> "SSH_RSA"
        EcdsaSHA2NISTP256 -> "ECDSA_SHA2_NISTP256"
        EcdsaSHA2NISTP384 -> "ECDSA_SHA2_NISTP384"
        EcdsaSHA2NISTP521 -> "ECDSA_SHA2_NISTP521"

instance FromJSON PublicKeyFormat where
    parseJSON = parseJSONText "PublicKeyFormat"

instance ToJSON PublicKeyFormat where
    toJSON = toJSONText
