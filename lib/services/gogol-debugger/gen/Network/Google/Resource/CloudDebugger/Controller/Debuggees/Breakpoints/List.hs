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
-- Module      : Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all active breakpoints for the debuggee. The
-- breakpoint specification (\`location\`, \`condition\`, and
-- \`expressions\` fields) is semantically immutable, although the field
-- values may change. For example, an agent may update the location line
-- number to reflect the actual line where the breakpoint was set, but this
-- doesn\'t change the breakpoint semantics. This means that an agent does
-- not need to check if a breakpoint has changed when it encounters the
-- same breakpoint on a successive call. Moreover, an agent should remember
-- the breakpoints that are completed until the controller removes them
-- from the active list to avoid setting those breakpoints again.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.controller.debuggees.breakpoints.list@.
module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List
    (
    -- * REST Resource
      ControllerDebuggeesBreakpointsListResource

    -- * Creating a Request
    , controllerDebuggeesBreakpointsList
    , ControllerDebuggeesBreakpointsList

    -- * Request Lenses
    , cdblXgafv
    , cdblUploadProtocol
    , cdblAccessToken
    , cdblUploadType
    , cdblSuccessOnTimeout
    , cdblAgentId
    , cdblWaitToken
    , cdblDebuggeeId
    , cdblCallback
    ) where

import Network.Google.Debugger.Types
import Network.Google.Prelude

-- | A resource alias for @clouddebugger.controller.debuggees.breakpoints.list@ method which the
-- 'ControllerDebuggeesBreakpointsList' request conforms to.
type ControllerDebuggeesBreakpointsListResource =
     "v2" :>
       "controller" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "successOnTimeout" Bool :>
                         QueryParam "agentId" Text :>
                           QueryParam "waitToken" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListActiveBreakpointsResponse

-- | Returns the list of all active breakpoints for the debuggee. The
-- breakpoint specification (\`location\`, \`condition\`, and
-- \`expressions\` fields) is semantically immutable, although the field
-- values may change. For example, an agent may update the location line
-- number to reflect the actual line where the breakpoint was set, but this
-- doesn\'t change the breakpoint semantics. This means that an agent does
-- not need to check if a breakpoint has changed when it encounters the
-- same breakpoint on a successive call. Moreover, an agent should remember
-- the breakpoints that are completed until the controller removes them
-- from the active list to avoid setting those breakpoints again.
--
-- /See:/ 'controllerDebuggeesBreakpointsList' smart constructor.
data ControllerDebuggeesBreakpointsList =
  ControllerDebuggeesBreakpointsList'
    { _cdblXgafv :: !(Maybe Xgafv)
    , _cdblUploadProtocol :: !(Maybe Text)
    , _cdblAccessToken :: !(Maybe Text)
    , _cdblUploadType :: !(Maybe Text)
    , _cdblSuccessOnTimeout :: !(Maybe Bool)
    , _cdblAgentId :: !(Maybe Text)
    , _cdblWaitToken :: !(Maybe Text)
    , _cdblDebuggeeId :: !Text
    , _cdblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ControllerDebuggeesBreakpointsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdblXgafv'
--
-- * 'cdblUploadProtocol'
--
-- * 'cdblAccessToken'
--
-- * 'cdblUploadType'
--
-- * 'cdblSuccessOnTimeout'
--
-- * 'cdblAgentId'
--
-- * 'cdblWaitToken'
--
-- * 'cdblDebuggeeId'
--
-- * 'cdblCallback'
controllerDebuggeesBreakpointsList
    :: Text -- ^ 'cdblDebuggeeId'
    -> ControllerDebuggeesBreakpointsList
controllerDebuggeesBreakpointsList pCdblDebuggeeId_ =
  ControllerDebuggeesBreakpointsList'
    { _cdblXgafv = Nothing
    , _cdblUploadProtocol = Nothing
    , _cdblAccessToken = Nothing
    , _cdblUploadType = Nothing
    , _cdblSuccessOnTimeout = Nothing
    , _cdblAgentId = Nothing
    , _cdblWaitToken = Nothing
    , _cdblDebuggeeId = pCdblDebuggeeId_
    , _cdblCallback = Nothing
    }


-- | V1 error format.
cdblXgafv :: Lens' ControllerDebuggeesBreakpointsList (Maybe Xgafv)
cdblXgafv
  = lens _cdblXgafv (\ s a -> s{_cdblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdblUploadProtocol :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblUploadProtocol
  = lens _cdblUploadProtocol
      (\ s a -> s{_cdblUploadProtocol = a})

-- | OAuth access token.
cdblAccessToken :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblAccessToken
  = lens _cdblAccessToken
      (\ s a -> s{_cdblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdblUploadType :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblUploadType
  = lens _cdblUploadType
      (\ s a -> s{_cdblUploadType = a})

-- | If set to \`true\` (recommended), returns \`google.rpc.Code.OK\` status
-- and sets the \`wait_expired\` response field to \`true\` when the
-- server-selected timeout has expired. If set to \`false\` (deprecated),
-- returns \`google.rpc.Code.ABORTED\` status when the server-selected
-- timeout has expired.
cdblSuccessOnTimeout :: Lens' ControllerDebuggeesBreakpointsList (Maybe Bool)
cdblSuccessOnTimeout
  = lens _cdblSuccessOnTimeout
      (\ s a -> s{_cdblSuccessOnTimeout = a})

-- | Identifies the agent. This is the ID returned in the RegisterDebuggee
-- response.
cdblAgentId :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblAgentId
  = lens _cdblAgentId (\ s a -> s{_cdblAgentId = a})

-- | A token that, if specified, blocks the method call until the list of
-- active breakpoints has changed, or a server-selected timeout has
-- expired. The value should be set from the \`next_wait_token\` field in
-- the last response. The initial value should be set to \`\"init\"\`.
cdblWaitToken :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblWaitToken
  = lens _cdblWaitToken
      (\ s a -> s{_cdblWaitToken = a})

-- | Required. Identifies the debuggee.
cdblDebuggeeId :: Lens' ControllerDebuggeesBreakpointsList Text
cdblDebuggeeId
  = lens _cdblDebuggeeId
      (\ s a -> s{_cdblDebuggeeId = a})

-- | JSONP
cdblCallback :: Lens' ControllerDebuggeesBreakpointsList (Maybe Text)
cdblCallback
  = lens _cdblCallback (\ s a -> s{_cdblCallback = a})

instance GoogleRequest
           ControllerDebuggeesBreakpointsList
         where
        type Rs ControllerDebuggeesBreakpointsList =
             ListActiveBreakpointsResponse
        type Scopes ControllerDebuggeesBreakpointsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient ControllerDebuggeesBreakpointsList'{..}
          = go _cdblDebuggeeId _cdblXgafv _cdblUploadProtocol
              _cdblAccessToken
              _cdblUploadType
              _cdblSuccessOnTimeout
              _cdblAgentId
              _cdblWaitToken
              _cdblCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ControllerDebuggeesBreakpointsListResource)
                      mempty
