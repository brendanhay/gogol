{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Script
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for executing Google Apps Script projects.
--
-- /See:/ <https://developers.google.com/apps-script/execution/rest/v1/run Google Apps Script Execution API Reference>
module Network.Google.Script
    (
    -- * Service Configuration
      scriptService

    -- * OAuth Scopes
    , scriptAllScope
    , feedsScope
    , adminDirectoryUserScope
    , userinfoEmailScope
    , formsCurrentonlyScope
    , driveScope
    , adminDirectoryGroupScope
    , feedsScope
    , formsScope
    , groupsScope

    -- * API Declaration
    , ScriptAPI

    -- * Resources

    -- ** script.scripts.run
    , module Network.Google.Resource.Script.Scripts.Run

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** ExecutionRequest
    , ExecutionRequest
    , executionRequest
    , erFunction
    , erSessionState
    , erDevMode
    , erParameters

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ScriptStackTraceElement
    , ScriptStackTraceElement
    , scriptStackTraceElement
    , ssteFunction
    , ssteLineNumber

    -- ** ExecutionError
    , ExecutionError
    , executionError
    , eeScriptStackTraceElements
    , eeErrorType
    , eeErrorMessage

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** ExecutionResponse
    , ExecutionResponse
    , executionResponse
    , erResult
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Script.Scripts.Run
import           Network.Google.Script.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Apps Script Execution API service.
type ScriptAPI = ScriptsRunResource
