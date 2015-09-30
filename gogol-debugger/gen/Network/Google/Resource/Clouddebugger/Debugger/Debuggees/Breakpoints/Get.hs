{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets breakpoint information.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @ClouddebuggerDebuggerDebuggeesBreakpointsGet@.
module Clouddebugger.Debugger.Debuggees.Breakpoints.Get
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsGetAPI

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsGet
    , DebuggerDebuggeesBreakpointsGet

    -- * Request Lenses
    , ddbgXgafv
    , ddbgQuotaUser
    , ddbgPrettyPrint
    , ddbgUploadProtocol
    , ddbgPp
    , ddbgAccessToken
    , ddbgUploadType
    , ddbgBreakpointId
    , ddbgBearerToken
    , ddbgKey
    , ddbgDebuggeeId
    , ddbgOauthToken
    , ddbgFields
    , ddbgCallback
    , ddbgAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouddebuggerDebuggerDebuggeesBreakpointsGet@ which the
-- 'DebuggerDebuggeesBreakpointsGet' request conforms to.
type DebuggerDebuggeesBreakpointsGetAPI =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "breakpointId" Text :>
                 Get '[JSON] GetBreakpointResponse

-- | Gets breakpoint information.
--
-- /See:/ 'debuggerDebuggeesBreakpointsGet' smart constructor.
data DebuggerDebuggeesBreakpointsGet = DebuggerDebuggeesBreakpointsGet
    { _ddbgXgafv          :: !(Maybe Text)
    , _ddbgQuotaUser      :: !(Maybe Text)
    , _ddbgPrettyPrint    :: !Bool
    , _ddbgUploadProtocol :: !(Maybe Text)
    , _ddbgPp             :: !Bool
    , _ddbgAccessToken    :: !(Maybe Text)
    , _ddbgUploadType     :: !(Maybe Text)
    , _ddbgBreakpointId   :: !Text
    , _ddbgBearerToken    :: !(Maybe Text)
    , _ddbgKey            :: !(Maybe Text)
    , _ddbgDebuggeeId     :: !Text
    , _ddbgOauthToken     :: !(Maybe Text)
    , _ddbgFields         :: !(Maybe Text)
    , _ddbgCallback       :: !(Maybe Text)
    , _ddbgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbgXgafv'
--
-- * 'ddbgQuotaUser'
--
-- * 'ddbgPrettyPrint'
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
-- * 'ddbgKey'
--
-- * 'ddbgDebuggeeId'
--
-- * 'ddbgOauthToken'
--
-- * 'ddbgFields'
--
-- * 'ddbgCallback'
--
-- * 'ddbgAlt'
debuggerDebuggeesBreakpointsGet
    :: Text -- ^ 'breakpointId'
    -> Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsGet
debuggerDebuggeesBreakpointsGet pDdbgBreakpointId_ pDdbgDebuggeeId_ =
    DebuggerDebuggeesBreakpointsGet
    { _ddbgXgafv = Nothing
    , _ddbgQuotaUser = Nothing
    , _ddbgPrettyPrint = True
    , _ddbgUploadProtocol = Nothing
    , _ddbgPp = True
    , _ddbgAccessToken = Nothing
    , _ddbgUploadType = Nothing
    , _ddbgBreakpointId = pDdbgBreakpointId_
    , _ddbgBearerToken = Nothing
    , _ddbgKey = Nothing
    , _ddbgDebuggeeId = pDdbgDebuggeeId_
    , _ddbgOauthToken = Nothing
    , _ddbgFields = Nothing
    , _ddbgCallback = Nothing
    , _ddbgAlt = "json"
    }

-- | V1 error format.
ddbgXgafv :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgXgafv
  = lens _ddbgXgafv (\ s a -> s{_ddbgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddbgQuotaUser :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgQuotaUser
  = lens _ddbgQuotaUser
      (\ s a -> s{_ddbgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddbgPrettyPrint :: Lens' DebuggerDebuggeesBreakpointsGet' Bool
ddbgPrettyPrint
  = lens _ddbgPrettyPrint
      (\ s a -> s{_ddbgPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddbgKey :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgKey = lens _ddbgKey (\ s a -> s{_ddbgKey = a})

-- | The debuggee id to get the breakpoint from.
ddbgDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsGet' Text
ddbgDebuggeeId
  = lens _ddbgDebuggeeId
      (\ s a -> s{_ddbgDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddbgOauthToken :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgOauthToken
  = lens _ddbgOauthToken
      (\ s a -> s{_ddbgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddbgFields :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgFields
  = lens _ddbgFields (\ s a -> s{_ddbgFields = a})

-- | JSONP
ddbgCallback :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgCallback
  = lens _ddbgCallback (\ s a -> s{_ddbgCallback = a})

-- | Data format for response.
ddbgAlt :: Lens' DebuggerDebuggeesBreakpointsGet' Text
ddbgAlt = lens _ddbgAlt (\ s a -> s{_ddbgAlt = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsGet' where
        type Rs DebuggerDebuggeesBreakpointsGet' =
             GetBreakpointResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          DebuggerDebuggeesBreakpointsGet{..}
          = go _ddbgXgafv _ddbgQuotaUser _ddbgPrettyPrint
              _ddbgUploadProtocol
              _ddbgPp
              _ddbgAccessToken
              _ddbgUploadType
              _ddbgBreakpointId
              _ddbgBearerToken
              _ddbgKey
              _ddbgDebuggeeId
              _ddbgOauthToken
              _ddbgFields
              _ddbgCallback
              _ddbgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DebuggerDebuggeesBreakpointsGetAPI)
                      r
                      u
