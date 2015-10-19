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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets breakpoint information.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerDebuggerDebuggeesBreakpointsGet@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Get
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsGetResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsGet'
    , DebuggerDebuggeesBreakpointsGet'

    -- * Request Lenses
    , ddbgXgafv
    , ddbgUploadProtocol
    , ddbgPp
    , ddbgAccessToken
    , ddbgUploadType
    , ddbgBreakpointId
    , ddbgBearerToken
    , ddbgDebuggeeId
    , ddbgCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerDebuggerDebuggeesBreakpointsGet@ method which the
-- 'DebuggerDebuggeesBreakpointsGet'' request conforms to.
type DebuggerDebuggeesBreakpointsGetResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "breakpointId" Text :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] GetBreakpointResponse

-- | Gets breakpoint information.
--
-- /See:/ 'debuggerDebuggeesBreakpointsGet'' smart constructor.
data DebuggerDebuggeesBreakpointsGet' = DebuggerDebuggeesBreakpointsGet'
    { _ddbgXgafv          :: !(Maybe Text)
    , _ddbgUploadProtocol :: !(Maybe Text)
    , _ddbgPp             :: !Bool
    , _ddbgAccessToken    :: !(Maybe Text)
    , _ddbgUploadType     :: !(Maybe Text)
    , _ddbgBreakpointId   :: !Text
    , _ddbgBearerToken    :: !(Maybe Text)
    , _ddbgDebuggeeId     :: !Text
    , _ddbgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbgXgafv'
--
-- * 'ddbgUploadProtocol'
--
-- * 'ddbgPp'
--
-- * 'ddbgAccessToken'
--
-- * 'ddbgUploadType'
--
-- * 'ddbgBreakpointId'
--
-- * 'ddbgBearerToken'
--
-- * 'ddbgDebuggeeId'
--
-- * 'ddbgCallback'
debuggerDebuggeesBreakpointsGet'
    :: Text -- ^ 'breakpointId'
    -> Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsGet'
debuggerDebuggeesBreakpointsGet' pDdbgBreakpointId_ pDdbgDebuggeeId_ =
    DebuggerDebuggeesBreakpointsGet'
    { _ddbgXgafv = Nothing
    , _ddbgUploadProtocol = Nothing
    , _ddbgPp = True
    , _ddbgAccessToken = Nothing
    , _ddbgUploadType = Nothing
    , _ddbgBreakpointId = pDdbgBreakpointId_
    , _ddbgBearerToken = Nothing
    , _ddbgDebuggeeId = pDdbgDebuggeeId_
    , _ddbgCallback = Nothing
    }

-- | V1 error format.
ddbgXgafv :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgXgafv
  = lens _ddbgXgafv (\ s a -> s{_ddbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbgUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgUploadProtocol
  = lens _ddbgUploadProtocol
      (\ s a -> s{_ddbgUploadProtocol = a})

-- | Pretty-print response.
ddbgPp :: Lens' DebuggerDebuggeesBreakpointsGet' Bool
ddbgPp = lens _ddbgPp (\ s a -> s{_ddbgPp = a})

-- | OAuth access token.
ddbgAccessToken :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgAccessToken
  = lens _ddbgAccessToken
      (\ s a -> s{_ddbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbgUploadType :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgUploadType
  = lens _ddbgUploadType
      (\ s a -> s{_ddbgUploadType = a})

-- | The breakpoint to get.
ddbgBreakpointId :: Lens' DebuggerDebuggeesBreakpointsGet' Text
ddbgBreakpointId
  = lens _ddbgBreakpointId
      (\ s a -> s{_ddbgBreakpointId = a})

-- | OAuth bearer token.
ddbgBearerToken :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgBearerToken
  = lens _ddbgBearerToken
      (\ s a -> s{_ddbgBearerToken = a})

-- | The debuggee id to get the breakpoint from.
ddbgDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsGet' Text
ddbgDebuggeeId
  = lens _ddbgDebuggeeId
      (\ s a -> s{_ddbgDebuggeeId = a})

-- | JSONP
ddbgCallback :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgCallback
  = lens _ddbgCallback (\ s a -> s{_ddbgCallback = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsGet' where
        type Rs DebuggerDebuggeesBreakpointsGet' =
             GetBreakpointResponse
        requestClient DebuggerDebuggeesBreakpointsGet'{..}
          = go _ddbgDebuggeeId _ddbgBreakpointId _ddbgXgafv
              _ddbgUploadProtocol
              (Just _ddbgPp)
              _ddbgAccessToken
              _ddbgUploadType
              _ddbgBearerToken
              _ddbgCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsGetResource)
                      mempty
