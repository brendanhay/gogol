{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Script.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Script.Types
    (
    -- * Service Configuration
      scriptService

    -- * OAuth Scopes
    , mailGoogleComScope
    , m8FeedsScope
    , adminDirectoryUserScope
    , userInfoEmailScope
    , formsCurrentOnlyScope
    , driveScope
    , adminDirectoryGroupScope
    , calendarFeedsScope
    , formsScope
    , spreadsheetsScope
    , groupsScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ExecutionRequest
    , ExecutionRequest
    , executionRequest
    , erFunction
    , erSessionState
    , erDevMode
    , erParameters

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ScriptStackTraceElement
    , ScriptStackTraceElement
    , scriptStackTraceElement
    , ssteFunction
    , ssteLineNumber

    -- * ExecutionError
    , ExecutionError
    , executionError
    , eeScriptStackTraceElements
    , eeErrorType
    , eeErrorMessage

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * ExecutionResponse
    , ExecutionResponse
    , executionResponse
    , erStatus
    , erResult
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types.Product
import           Network.Google.Script.Types.Sum

-- | Default request referring to version 'v1' of the Google Apps Script Execution API. This contains the host and root path used as a starting point for constructing service requests.
scriptService :: ServiceConfig
scriptService
  = defaultService (ServiceId "script:v1")
      "script.googleapis.com"

-- | View and manage your mail
mailGoogleComScope :: Proxy '["https://mail.google.com/"]
mailGoogleComScope = Proxy;

-- | Manage your contacts
m8FeedsScope :: Proxy '["https://www.google.com/m8/feeds"]
m8FeedsScope = Proxy;

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Proxy;

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy;

-- | View and manage forms that this application has been installed in
formsCurrentOnlyScope :: Proxy '["https://www.googleapis.com/auth/forms.currentonly"]
formsCurrentOnlyScope = Proxy;

-- | View and manage the files in your Google Drive
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy;

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Proxy;

-- | Manage your calendars
calendarFeedsScope :: Proxy '["https://www.google.com/calendar/feeds"]
calendarFeedsScope = Proxy;

-- | View and manage your forms in Google Drive
formsScope :: Proxy '["https://www.googleapis.com/auth/forms"]
formsScope = Proxy;

-- | View and manage your spreadsheets in Google Drive
spreadsheetsScope :: Proxy '["https://www.googleapis.com/auth/spreadsheets"]
spreadsheetsScope = Proxy;

-- | View and manage your Google Groups
groupsScope :: Proxy '["https://www.googleapis.com/auth/groups"]
groupsScope = Proxy;
