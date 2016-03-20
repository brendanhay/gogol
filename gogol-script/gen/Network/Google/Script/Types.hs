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
    , authAdminDirectoryUserScope
    , authUserinfoEmailScope
    , authFormsCurrentonlyScope
    , authDriveScope
    , authAdminDirectoryGroupScope
    , calendarFeedsScope
    , authFormsScope
    , authGroupsScope

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
mailGoogleComScope :: OAuthScope
mailGoogleComScope = "https://mail.google.com/";

-- | Manage your contacts
m8FeedsScope :: OAuthScope
m8FeedsScope = "https://www.google.com/m8/feeds";

-- | View and manage the provisioning of users on your domain
authAdminDirectoryUserScope :: OAuthScope
authAdminDirectoryUserScope = "https://www.googleapis.com/auth/admin.directory.user";

-- | View your email address
authUserinfoEmailScope :: OAuthScope
authUserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";

-- | View and manage forms that this application has been installed in
authFormsCurrentonlyScope :: OAuthScope
authFormsCurrentonlyScope = "https://www.googleapis.com/auth/forms.currentonly";

-- | View and manage the files in your Google Drive
authDriveScope :: OAuthScope
authDriveScope = "https://www.googleapis.com/auth/drive";

-- | View and manage the provisioning of groups on your domain
authAdminDirectoryGroupScope :: OAuthScope
authAdminDirectoryGroupScope = "https://www.googleapis.com/auth/admin.directory.group";

-- | Manage your calendars
calendarFeedsScope :: OAuthScope
calendarFeedsScope = "https://www.google.com/calendar/feeds";

-- | View and manage your forms in Google Drive
authFormsScope :: OAuthScope
authFormsScope = "https://www.googleapis.com/auth/forms";

-- | View and manage your Google Groups
authGroupsScope :: OAuthScope
authGroupsScope = "https://www.googleapis.com/auth/groups";
