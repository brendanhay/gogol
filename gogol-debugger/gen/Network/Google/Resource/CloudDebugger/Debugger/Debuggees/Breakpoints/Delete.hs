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
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the breakpoint from the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Stackdriver Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.delete@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Delete
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsDeleteResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsDelete
    , DebuggerDebuggeesBreakpointsDelete

    -- * Request Lenses
    , ddbdXgafv
    , ddbdUploadProtocol
    , ddbdAccessToken
    , ddbdUploadType
    , ddbdBreakpointId
    , ddbdDebuggeeId
    , ddbdClientVersion
    , ddbdCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.delete@ method which the
-- 'DebuggerDebuggeesBreakpointsDelete' request conforms to.
type DebuggerDebuggeesBreakpointsDeleteResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "breakpointId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "clientVersion" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the breakpoint from the debuggee.
--
-- /See:/ 'debuggerDebuggeesBreakpointsDelete' smart constructor.
data DebuggerDebuggeesBreakpointsDelete =
  DebuggerDebuggeesBreakpointsDelete'
    { _ddbdXgafv          :: !(Maybe Xgafv)
    , _ddbdUploadProtocol :: !(Maybe Text)
    , _ddbdAccessToken    :: !(Maybe Text)
    , _ddbdUploadType     :: !(Maybe Text)
    , _ddbdBreakpointId   :: !Text
    , _ddbdDebuggeeId     :: !Text
    , _ddbdClientVersion  :: !(Maybe Text)
    , _ddbdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebuggerDebuggeesBreakpointsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbdXgafv'
--
-- * 'ddbdUploadProtocol'
--
-- * 'ddbdAccessToken'
--
-- * 'ddbdUploadType'
--
-- * 'ddbdBreakpointId'
--
-- * 'ddbdDebuggeeId'
--
-- * 'ddbdClientVersion'
--
-- * 'ddbdCallback'
debuggerDebuggeesBreakpointsDelete
    :: Text -- ^ 'ddbdBreakpointId'
    -> Text -- ^ 'ddbdDebuggeeId'
    -> DebuggerDebuggeesBreakpointsDelete
debuggerDebuggeesBreakpointsDelete pDdbdBreakpointId_ pDdbdDebuggeeId_ =
  DebuggerDebuggeesBreakpointsDelete'
    { _ddbdXgafv = Nothing
    , _ddbdUploadProtocol = Nothing
    , _ddbdAccessToken = Nothing
    , _ddbdUploadType = Nothing
    , _ddbdBreakpointId = pDdbdBreakpointId_
    , _ddbdDebuggeeId = pDdbdDebuggeeId_
    , _ddbdClientVersion = Nothing
    , _ddbdCallback = Nothing
    }


-- | V1 error format.
ddbdXgafv :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Xgafv)
ddbdXgafv
  = lens _ddbdXgafv (\ s a -> s{_ddbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbdUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Text)
ddbdUploadProtocol
  = lens _ddbdUploadProtocol
      (\ s a -> s{_ddbdUploadProtocol = a})

-- | OAuth access token.
ddbdAccessToken :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Text)
ddbdAccessToken
  = lens _ddbdAccessToken
      (\ s a -> s{_ddbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbdUploadType :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Text)
ddbdUploadType
  = lens _ddbdUploadType
      (\ s a -> s{_ddbdUploadType = a})

-- | ID of the breakpoint to delete.
ddbdBreakpointId :: Lens' DebuggerDebuggeesBreakpointsDelete Text
ddbdBreakpointId
  = lens _ddbdBreakpointId
      (\ s a -> s{_ddbdBreakpointId = a})

-- | ID of the debuggee whose breakpoint to delete.
ddbdDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsDelete Text
ddbdDebuggeeId
  = lens _ddbdDebuggeeId
      (\ s a -> s{_ddbdDebuggeeId = a})

-- | The client version making the call. Schema: \`domain\/type\/version\`
-- (e.g., \`google.com\/intellij\/v1\`).
ddbdClientVersion :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Text)
ddbdClientVersion
  = lens _ddbdClientVersion
      (\ s a -> s{_ddbdClientVersion = a})

-- | JSONP
ddbdCallback :: Lens' DebuggerDebuggeesBreakpointsDelete (Maybe Text)
ddbdCallback
  = lens _ddbdCallback (\ s a -> s{_ddbdCallback = a})

instance GoogleRequest
           DebuggerDebuggeesBreakpointsDelete
         where
        type Rs DebuggerDebuggeesBreakpointsDelete = Empty
        type Scopes DebuggerDebuggeesBreakpointsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient DebuggerDebuggeesBreakpointsDelete'{..}
          = go _ddbdDebuggeeId _ddbdBreakpointId _ddbdXgafv
              _ddbdUploadProtocol
              _ddbdAccessToken
              _ddbdUploadType
              _ddbdClientVersion
              _ddbdCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsDeleteResource)
                      mempty
