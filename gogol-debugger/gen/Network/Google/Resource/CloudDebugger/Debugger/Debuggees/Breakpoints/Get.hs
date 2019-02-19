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
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets breakpoint information.
--
-- /See:/ <https://cloud.google.com/debugger Stackdriver Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.get@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsGetResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsGet
    , DebuggerDebuggeesBreakpointsGet

    -- * Request Lenses
    , ddbgXgafv
    , ddbgUploadProtocol
    , ddbgAccessToken
    , ddbgUploadType
    , ddbgBreakpointId
    , ddbgDebuggeeId
    , ddbgClientVersion
    , ddbgCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.get@ method which the
-- 'DebuggerDebuggeesBreakpointsGet' request conforms to.
type DebuggerDebuggeesBreakpointsGetResource =
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
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] GetBreakpointResponse

-- | Gets breakpoint information.
--
-- /See:/ 'debuggerDebuggeesBreakpointsGet' smart constructor.
data DebuggerDebuggeesBreakpointsGet =
  DebuggerDebuggeesBreakpointsGet'
    { _ddbgXgafv          :: !(Maybe Xgafv)
    , _ddbgUploadProtocol :: !(Maybe Text)
    , _ddbgAccessToken    :: !(Maybe Text)
    , _ddbgUploadType     :: !(Maybe Text)
    , _ddbgBreakpointId   :: !Text
    , _ddbgDebuggeeId     :: !Text
    , _ddbgClientVersion  :: !(Maybe Text)
    , _ddbgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbgXgafv'
--
-- * 'ddbgUploadProtocol'
--
-- * 'ddbgAccessToken'
--
-- * 'ddbgUploadType'
--
-- * 'ddbgBreakpointId'
--
-- * 'ddbgDebuggeeId'
--
-- * 'ddbgClientVersion'
--
-- * 'ddbgCallback'
debuggerDebuggeesBreakpointsGet
    :: Text -- ^ 'ddbgBreakpointId'
    -> Text -- ^ 'ddbgDebuggeeId'
    -> DebuggerDebuggeesBreakpointsGet
debuggerDebuggeesBreakpointsGet pDdbgBreakpointId_ pDdbgDebuggeeId_ =
  DebuggerDebuggeesBreakpointsGet'
    { _ddbgXgafv = Nothing
    , _ddbgUploadProtocol = Nothing
    , _ddbgAccessToken = Nothing
    , _ddbgUploadType = Nothing
    , _ddbgBreakpointId = pDdbgBreakpointId_
    , _ddbgDebuggeeId = pDdbgDebuggeeId_
    , _ddbgClientVersion = Nothing
    , _ddbgCallback = Nothing
    }

-- | V1 error format.
ddbgXgafv :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Xgafv)
ddbgXgafv
  = lens _ddbgXgafv (\ s a -> s{_ddbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbgUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Text)
ddbgUploadProtocol
  = lens _ddbgUploadProtocol
      (\ s a -> s{_ddbgUploadProtocol = a})

-- | OAuth access token.
ddbgAccessToken :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Text)
ddbgAccessToken
  = lens _ddbgAccessToken
      (\ s a -> s{_ddbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbgUploadType :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Text)
ddbgUploadType
  = lens _ddbgUploadType
      (\ s a -> s{_ddbgUploadType = a})

-- | ID of the breakpoint to get.
ddbgBreakpointId :: Lens' DebuggerDebuggeesBreakpointsGet Text
ddbgBreakpointId
  = lens _ddbgBreakpointId
      (\ s a -> s{_ddbgBreakpointId = a})

-- | ID of the debuggee whose breakpoint to get.
ddbgDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsGet Text
ddbgDebuggeeId
  = lens _ddbgDebuggeeId
      (\ s a -> s{_ddbgDebuggeeId = a})

-- | The client version making the call. Schema: \`domain\/type\/version\`
-- (e.g., \`google.com\/intellij\/v1\`).
ddbgClientVersion :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Text)
ddbgClientVersion
  = lens _ddbgClientVersion
      (\ s a -> s{_ddbgClientVersion = a})

-- | JSONP
ddbgCallback :: Lens' DebuggerDebuggeesBreakpointsGet (Maybe Text)
ddbgCallback
  = lens _ddbgCallback (\ s a -> s{_ddbgCallback = a})

instance GoogleRequest
           DebuggerDebuggeesBreakpointsGet
         where
        type Rs DebuggerDebuggeesBreakpointsGet =
             GetBreakpointResponse
        type Scopes DebuggerDebuggeesBreakpointsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient DebuggerDebuggeesBreakpointsGet'{..}
          = go _ddbgDebuggeeId _ddbgBreakpointId _ddbgXgafv
              _ddbgUploadProtocol
              _ddbgAccessToken
              _ddbgUploadType
              _ddbgClientVersion
              _ddbgCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsGetResource)
                      mempty
