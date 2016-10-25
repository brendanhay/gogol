{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidEnterprise.Types.Sum where

import           Network.Google.Prelude

-- | The request mode for pulling notifications. Specifying
-- waitForNotifications will cause the request to block and wait until one
-- or more notifications are present, or return an empty notification list
-- if no notifications are present after some time. Speciying
-- returnImmediately will cause the request to immediately return the
-- pending notifications, or an empty list if no notifications are present.
-- If omitted, defaults to waitForNotifications.
data EnterprisesPullNotificationSetRequestMode
    = ReturnImmediately
      -- ^ @returnImmediately@
    | WaitForNotifications
      -- ^ @waitForNotifications@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesPullNotificationSetRequestMode

instance FromHttpApiData EnterprisesPullNotificationSetRequestMode where
    parseQueryParam = \case
        "returnImmediately" -> Right ReturnImmediately
        "waitForNotifications" -> Right WaitForNotifications
        x -> Left ("Unable to parse EnterprisesPullNotificationSetRequestMode from: " <> x)

instance ToHttpApiData EnterprisesPullNotificationSetRequestMode where
    toQueryParam = \case
        ReturnImmediately -> "returnImmediately"
        WaitForNotifications -> "waitForNotifications"

instance FromJSON EnterprisesPullNotificationSetRequestMode where
    parseJSON = parseJSONText "EnterprisesPullNotificationSetRequestMode"

instance ToJSON EnterprisesPullNotificationSetRequestMode where
    toJSON = toJSONText

-- | The type of credential to return with the service account. Required.
data EnterprisesGetServiceAccountKeyType
    = GoogleCredentials
      -- ^ @googleCredentials@
    | PKCS12
      -- ^ @pkcs12@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnterprisesGetServiceAccountKeyType

instance FromHttpApiData EnterprisesGetServiceAccountKeyType where
    parseQueryParam = \case
        "googleCredentials" -> Right GoogleCredentials
        "pkcs12" -> Right PKCS12
        x -> Left ("Unable to parse EnterprisesGetServiceAccountKeyType from: " <> x)

instance ToHttpApiData EnterprisesGetServiceAccountKeyType where
    toQueryParam = \case
        GoogleCredentials -> "googleCredentials"
        PKCS12 -> "pkcs12"

instance FromJSON EnterprisesGetServiceAccountKeyType where
    parseJSON = parseJSONText "EnterprisesGetServiceAccountKeyType"

instance ToJSON EnterprisesGetServiceAccountKeyType where
    toJSON = toJSONText
