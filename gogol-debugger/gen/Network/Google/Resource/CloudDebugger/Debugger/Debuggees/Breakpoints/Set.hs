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
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the breakpoint to the debuggee.
--
-- /See:/ <https://cloud.google.com/debugger Stackdriver Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.set@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsSetResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsSet
    , DebuggerDebuggeesBreakpointsSet

    -- * Request Lenses
    , ddbsXgafv
    , ddbsUploadProtocol
    , ddbsAccessToken
    , ddbsUploadType
    , ddbsPayload
    , ddbsDebuggeeId
    , ddbsClientVersion
    , ddbsCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.set@ method which the
-- 'DebuggerDebuggeesBreakpointsSet' request conforms to.
type DebuggerDebuggeesBreakpointsSetResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               "set" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "clientVersion" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Breakpoint :>
                                 Post '[JSON] SetBreakpointResponse

-- | Sets the breakpoint to the debuggee.
--
-- /See:/ 'debuggerDebuggeesBreakpointsSet' smart constructor.
data DebuggerDebuggeesBreakpointsSet = DebuggerDebuggeesBreakpointsSet'
    { _ddbsXgafv          :: !(Maybe Xgafv)
    , _ddbsUploadProtocol :: !(Maybe Text)
    , _ddbsAccessToken    :: !(Maybe Text)
    , _ddbsUploadType     :: !(Maybe Text)
    , _ddbsPayload        :: !Breakpoint
    , _ddbsDebuggeeId     :: !Text
    , _ddbsClientVersion  :: !(Maybe Text)
    , _ddbsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsXgafv'
--
-- * 'ddbsUploadProtocol'
--
-- * 'ddbsAccessToken'
--
-- * 'ddbsUploadType'
--
-- * 'ddbsPayload'
--
-- * 'ddbsDebuggeeId'
--
-- * 'ddbsClientVersion'
--
-- * 'ddbsCallback'
debuggerDebuggeesBreakpointsSet
    :: Breakpoint -- ^ 'ddbsPayload'
    -> Text -- ^ 'ddbsDebuggeeId'
    -> DebuggerDebuggeesBreakpointsSet
debuggerDebuggeesBreakpointsSet pDdbsPayload_ pDdbsDebuggeeId_ =
    DebuggerDebuggeesBreakpointsSet'
    { _ddbsXgafv = Nothing
    , _ddbsUploadProtocol = Nothing
    , _ddbsAccessToken = Nothing
    , _ddbsUploadType = Nothing
    , _ddbsPayload = pDdbsPayload_
    , _ddbsDebuggeeId = pDdbsDebuggeeId_
    , _ddbsClientVersion = Nothing
    , _ddbsCallback = Nothing
    }

-- | V1 error format.
ddbsXgafv :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Xgafv)
ddbsXgafv
  = lens _ddbsXgafv (\ s a -> s{_ddbsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbsUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Text)
ddbsUploadProtocol
  = lens _ddbsUploadProtocol
      (\ s a -> s{_ddbsUploadProtocol = a})

-- | OAuth access token.
ddbsAccessToken :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Text)
ddbsAccessToken
  = lens _ddbsAccessToken
      (\ s a -> s{_ddbsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbsUploadType :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Text)
ddbsUploadType
  = lens _ddbsUploadType
      (\ s a -> s{_ddbsUploadType = a})

-- | Multipart request metadata.
ddbsPayload :: Lens' DebuggerDebuggeesBreakpointsSet Breakpoint
ddbsPayload
  = lens _ddbsPayload (\ s a -> s{_ddbsPayload = a})

-- | ID of the debuggee where the breakpoint is to be set.
ddbsDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsSet Text
ddbsDebuggeeId
  = lens _ddbsDebuggeeId
      (\ s a -> s{_ddbsDebuggeeId = a})

-- | The client version making the call. Schema: \`domain\/type\/version\`
-- (e.g., \`google.com\/intellij\/v1\`).
ddbsClientVersion :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Text)
ddbsClientVersion
  = lens _ddbsClientVersion
      (\ s a -> s{_ddbsClientVersion = a})

-- | JSONP
ddbsCallback :: Lens' DebuggerDebuggeesBreakpointsSet (Maybe Text)
ddbsCallback
  = lens _ddbsCallback (\ s a -> s{_ddbsCallback = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsSet where
        type Rs DebuggerDebuggeesBreakpointsSet =
             SetBreakpointResponse
        type Scopes DebuggerDebuggeesBreakpointsSet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient DebuggerDebuggeesBreakpointsSet'{..}
          = go _ddbsDebuggeeId _ddbsXgafv _ddbsUploadProtocol
              _ddbsAccessToken
              _ddbsUploadType
              _ddbsClientVersion
              _ddbsCallback
              (Just AltJSON)
              _ddbsPayload
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsSetResource)
                      mempty
