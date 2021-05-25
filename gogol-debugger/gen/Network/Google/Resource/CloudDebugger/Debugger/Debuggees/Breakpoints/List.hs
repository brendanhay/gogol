{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all breakpoints for the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.list@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsListResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsList
    , DebuggerDebuggeesBreakpointsList

    -- * Request Lenses
    , ddblXgafv
    , ddblIncludeInactive
    , ddblUploadProtocol
    , ddblAccessToken
    , ddblActionValue
    , ddblUploadType
    , ddblStripResults
    , ddblIncludeAllUsers
    , ddblWaitToken
    , ddblDebuggeeId
    , ddblClientVersion
    , ddblCallback
    ) where

import Network.Google.Debugger.Types
import Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.list@ method which the
-- 'DebuggerDebuggeesBreakpointsList' request conforms to.
type DebuggerDebuggeesBreakpointsListResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "includeInactive" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "action.value"
                         DebuggerDebuggeesBreakpointsListActionValue
                         :>
                         QueryParam "uploadType" Text :>
                           QueryParam "stripResults" Bool :>
                             QueryParam "includeAllUsers" Bool :>
                               QueryParam "waitToken" Text :>
                                 QueryParam "clientVersion" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListBreakpointsResponse

-- | Lists all breakpoints for the debuggee.
--
-- /See:/ 'debuggerDebuggeesBreakpointsList' smart constructor.
data DebuggerDebuggeesBreakpointsList =
  DebuggerDebuggeesBreakpointsList'
    { _ddblXgafv :: !(Maybe Xgafv)
    , _ddblIncludeInactive :: !(Maybe Bool)
    , _ddblUploadProtocol :: !(Maybe Text)
    , _ddblAccessToken :: !(Maybe Text)
    , _ddblActionValue :: !(Maybe DebuggerDebuggeesBreakpointsListActionValue)
    , _ddblUploadType :: !(Maybe Text)
    , _ddblStripResults :: !(Maybe Bool)
    , _ddblIncludeAllUsers :: !(Maybe Bool)
    , _ddblWaitToken :: !(Maybe Text)
    , _ddblDebuggeeId :: !Text
    , _ddblClientVersion :: !(Maybe Text)
    , _ddblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebuggerDebuggeesBreakpointsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddblXgafv'
--
-- * 'ddblIncludeInactive'
--
-- * 'ddblUploadProtocol'
--
-- * 'ddblAccessToken'
--
-- * 'ddblActionValue'
--
-- * 'ddblUploadType'
--
-- * 'ddblStripResults'
--
-- * 'ddblIncludeAllUsers'
--
-- * 'ddblWaitToken'
--
-- * 'ddblDebuggeeId'
--
-- * 'ddblClientVersion'
--
-- * 'ddblCallback'
debuggerDebuggeesBreakpointsList
    :: Text -- ^ 'ddblDebuggeeId'
    -> DebuggerDebuggeesBreakpointsList
debuggerDebuggeesBreakpointsList pDdblDebuggeeId_ =
  DebuggerDebuggeesBreakpointsList'
    { _ddblXgafv = Nothing
    , _ddblIncludeInactive = Nothing
    , _ddblUploadProtocol = Nothing
    , _ddblAccessToken = Nothing
    , _ddblActionValue = Nothing
    , _ddblUploadType = Nothing
    , _ddblStripResults = Nothing
    , _ddblIncludeAllUsers = Nothing
    , _ddblWaitToken = Nothing
    , _ddblDebuggeeId = pDdblDebuggeeId_
    , _ddblClientVersion = Nothing
    , _ddblCallback = Nothing
    }


-- | V1 error format.
ddblXgafv :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Xgafv)
ddblXgafv
  = lens _ddblXgafv (\ s a -> s{_ddblXgafv = a})

-- | When set to \`true\`, the response includes active and inactive
-- breakpoints. Otherwise, it includes only active breakpoints.
ddblIncludeInactive :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblIncludeInactive
  = lens _ddblIncludeInactive
      (\ s a -> s{_ddblIncludeInactive = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddblUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblUploadProtocol
  = lens _ddblUploadProtocol
      (\ s a -> s{_ddblUploadProtocol = a})

-- | OAuth access token.
ddblAccessToken :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblAccessToken
  = lens _ddblAccessToken
      (\ s a -> s{_ddblAccessToken = a})

-- | Only breakpoints with the specified action will pass the filter.
ddblActionValue :: Lens' DebuggerDebuggeesBreakpointsList (Maybe DebuggerDebuggeesBreakpointsListActionValue)
ddblActionValue
  = lens _ddblActionValue
      (\ s a -> s{_ddblActionValue = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddblUploadType :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblUploadType
  = lens _ddblUploadType
      (\ s a -> s{_ddblUploadType = a})

-- | This field is deprecated. The following fields are always stripped out
-- of the result: \`stack_frames\`, \`evaluated_expressions\` and
-- \`variable_table\`.
ddblStripResults :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblStripResults
  = lens _ddblStripResults
      (\ s a -> s{_ddblStripResults = a})

-- | When set to \`true\`, the response includes the list of breakpoints set
-- by any user. Otherwise, it includes only breakpoints set by the caller.
ddblIncludeAllUsers :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblIncludeAllUsers
  = lens _ddblIncludeAllUsers
      (\ s a -> s{_ddblIncludeAllUsers = a})

-- | A wait token that, if specified, blocks the call until the breakpoints
-- list has changed, or a server selected timeout has expired. The value
-- should be set from the last response. The error code
-- \`google.rpc.Code.ABORTED\` (RPC) is returned on wait timeout, which
-- should be called again with the same \`wait_token\`.
ddblWaitToken :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblWaitToken
  = lens _ddblWaitToken
      (\ s a -> s{_ddblWaitToken = a})

-- | Required. ID of the debuggee whose breakpoints to list.
ddblDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsList Text
ddblDebuggeeId
  = lens _ddblDebuggeeId
      (\ s a -> s{_ddblDebuggeeId = a})

-- | Required. The client version making the call. Schema:
-- \`domain\/type\/version\` (e.g., \`google.com\/intellij\/v1\`).
ddblClientVersion :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblClientVersion
  = lens _ddblClientVersion
      (\ s a -> s{_ddblClientVersion = a})

-- | JSONP
ddblCallback :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblCallback
  = lens _ddblCallback (\ s a -> s{_ddblCallback = a})

instance GoogleRequest
           DebuggerDebuggeesBreakpointsList
         where
        type Rs DebuggerDebuggeesBreakpointsList =
             ListBreakpointsResponse
        type Scopes DebuggerDebuggeesBreakpointsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient DebuggerDebuggeesBreakpointsList'{..}
          = go _ddblDebuggeeId _ddblXgafv _ddblIncludeInactive
              _ddblUploadProtocol
              _ddblAccessToken
              _ddblActionValue
              _ddblUploadType
              _ddblStripResults
              _ddblIncludeAllUsers
              _ddblWaitToken
              _ddblClientVersion
              _ddblCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsListResource)
                      mempty
