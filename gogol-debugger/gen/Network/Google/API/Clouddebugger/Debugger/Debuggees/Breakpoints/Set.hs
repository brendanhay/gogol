{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the breakpoint to the debuggee.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.set@.
module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.Set
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsSetAPI

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsSet'
    , DebuggerDebuggeesBreakpointsSet'

    -- * Request Lenses
    , ddbsXgafv
    , ddbsQuotaUser
    , ddbsPrettyPrint
    , ddbsUploadProtocol
    , ddbsPp
    , ddbsAccessToken
    , ddbsUploadType
    , ddbsBearerToken
    , ddbsKey
    , ddbsDebuggeeId
    , ddbsOauthToken
    , ddbsFields
    , ddbsCallback
    , ddbsAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for clouddebugger.debugger.debuggees.breakpoints.set which the
-- 'DebuggerDebuggeesBreakpointsSet'' request conforms to.
type DebuggerDebuggeesBreakpointsSetAPI =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               "set" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Post '[JSON] SetBreakpointResponse

-- | Sets the breakpoint to the debuggee.
--
-- /See:/ 'debuggerDebuggeesBreakpointsSet'' smart constructor.
data DebuggerDebuggeesBreakpointsSet' = DebuggerDebuggeesBreakpointsSet'
    { _ddbsXgafv          :: !(Maybe Text)
    , _ddbsQuotaUser      :: !(Maybe Text)
    , _ddbsPrettyPrint    :: !Bool
    , _ddbsUploadProtocol :: !(Maybe Text)
    , _ddbsPp             :: !Bool
    , _ddbsAccessToken    :: !(Maybe Text)
    , _ddbsUploadType     :: !(Maybe Text)
    , _ddbsBearerToken    :: !(Maybe Text)
    , _ddbsKey            :: !(Maybe Text)
    , _ddbsDebuggeeId     :: !Text
    , _ddbsOauthToken     :: !(Maybe Text)
    , _ddbsFields         :: !(Maybe Text)
    , _ddbsCallback       :: !(Maybe Text)
    , _ddbsAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsXgafv'
--
-- * 'ddbsQuotaUser'
--
-- * 'ddbsPrettyPrint'
--
-- * 'ddbsUploadProtocol'
--
-- * 'ddbsPp'
--
-- * 'ddbsAccessToken'
--
-- * 'ddbsUploadType'
--
-- * 'ddbsBearerToken'
--
-- * 'ddbsKey'
--
-- * 'ddbsDebuggeeId'
--
-- * 'ddbsOauthToken'
--
-- * 'ddbsFields'
--
-- * 'ddbsCallback'
--
-- * 'ddbsAlt'
debuggerDebuggeesBreakpointsSet'
    :: Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsSet'
debuggerDebuggeesBreakpointsSet' pDdbsDebuggeeId_ =
    DebuggerDebuggeesBreakpointsSet'
    { _ddbsXgafv = Nothing
    , _ddbsQuotaUser = Nothing
    , _ddbsPrettyPrint = True
    , _ddbsUploadProtocol = Nothing
    , _ddbsPp = True
    , _ddbsAccessToken = Nothing
    , _ddbsUploadType = Nothing
    , _ddbsBearerToken = Nothing
    , _ddbsKey = Nothing
    , _ddbsDebuggeeId = pDdbsDebuggeeId_
    , _ddbsOauthToken = Nothing
    , _ddbsFields = Nothing
    , _ddbsCallback = Nothing
    , _ddbsAlt = "json"
    }

-- | V1 error format.
ddbsXgafv :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsXgafv
  = lens _ddbsXgafv (\ s a -> s{_ddbsXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddbsQuotaUser :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsQuotaUser
  = lens _ddbsQuotaUser
      (\ s a -> s{_ddbsQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddbsPrettyPrint :: Lens' DebuggerDebuggeesBreakpointsSet' Bool
ddbsPrettyPrint
  = lens _ddbsPrettyPrint
      (\ s a -> s{_ddbsPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbsUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsUploadProtocol
  = lens _ddbsUploadProtocol
      (\ s a -> s{_ddbsUploadProtocol = a})

-- | Pretty-print response.
ddbsPp :: Lens' DebuggerDebuggeesBreakpointsSet' Bool
ddbsPp = lens _ddbsPp (\ s a -> s{_ddbsPp = a})

-- | OAuth access token.
ddbsAccessToken :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsAccessToken
  = lens _ddbsAccessToken
      (\ s a -> s{_ddbsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbsUploadType :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsUploadType
  = lens _ddbsUploadType
      (\ s a -> s{_ddbsUploadType = a})

-- | OAuth bearer token.
ddbsBearerToken :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsBearerToken
  = lens _ddbsBearerToken
      (\ s a -> s{_ddbsBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddbsKey :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsKey = lens _ddbsKey (\ s a -> s{_ddbsKey = a})

-- | The debuggee id to set the breakpoint to.
ddbsDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsSet' Text
ddbsDebuggeeId
  = lens _ddbsDebuggeeId
      (\ s a -> s{_ddbsDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddbsOauthToken :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsOauthToken
  = lens _ddbsOauthToken
      (\ s a -> s{_ddbsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddbsFields :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsFields
  = lens _ddbsFields (\ s a -> s{_ddbsFields = a})

-- | JSONP
ddbsCallback :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsCallback
  = lens _ddbsCallback (\ s a -> s{_ddbsCallback = a})

-- | Data format for response.
ddbsAlt :: Lens' DebuggerDebuggeesBreakpointsSet' Text
ddbsAlt = lens _ddbsAlt (\ s a -> s{_ddbsAlt = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsSet' where
        type Rs DebuggerDebuggeesBreakpointsSet' =
             SetBreakpointResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          DebuggerDebuggeesBreakpointsSet'{..}
          = go _ddbsXgafv _ddbsQuotaUser
              (Just _ddbsPrettyPrint)
              _ddbsUploadProtocol
              (Just _ddbsPp)
              _ddbsAccessToken
              _ddbsUploadType
              _ddbsBearerToken
              _ddbsKey
              _ddbsDebuggeeId
              _ddbsOauthToken
              _ddbsFields
              _ddbsCallback
              (Just _ddbsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DebuggerDebuggeesBreakpointsSetAPI)
                      r
                      u
