{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all breakpoints of the debuggee that the user has access to.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.list@.
module Network.Google.API.Clouddebugger.Debugger.Debuggees.Breakpoints.List
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsListAPI

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsList'
    , DebuggerDebuggeesBreakpointsList'

    -- * Request Lenses
    , ddblXgafv
    , ddblQuotaUser
    , ddblPrettyPrint
    , ddblIncludeInactive
    , ddblUploadProtocol
    , ddblPp
    , ddblAccessToken
    , ddblActionValue
    , ddblUploadType
    , ddblStripResults
    , ddblBearerToken
    , ddblKey
    , ddblIncludeAllUsers
    , ddblWaitToken
    , ddblDebuggeeId
    , ddblOauthToken
    , ddblFields
    , ddblCallback
    , ddblAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for clouddebugger.debugger.debuggees.breakpoints.list which the
-- 'DebuggerDebuggeesBreakpointsList'' request conforms to.
type DebuggerDebuggeesBreakpointsListAPI =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "includeInactive" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "action.value" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "stripResults" Bool :>
                                   QueryParam "bearer_token" Text :>
                                     QueryParam "key" Text :>
                                       QueryParam "includeAllUsers" Bool :>
                                         QueryParam "waitToken" Text :>
                                           QueryParam "oauth_token" Text :>
                                             QueryParam "fields" Text :>
                                               QueryParam "callback" Text :>
                                                 QueryParam "alt" Text :>
                                                   Get '[JSON]
                                                     ListBreakpointsResponse

-- | Lists all breakpoints of the debuggee that the user has access to.
--
-- /See:/ 'debuggerDebuggeesBreakpointsList'' smart constructor.
data DebuggerDebuggeesBreakpointsList' = DebuggerDebuggeesBreakpointsList'
    { _ddblXgafv           :: !(Maybe Text)
    , _ddblQuotaUser       :: !(Maybe Text)
    , _ddblPrettyPrint     :: !Bool
    , _ddblIncludeInactive :: !(Maybe Bool)
    , _ddblUploadProtocol  :: !(Maybe Text)
    , _ddblPp              :: !Bool
    , _ddblAccessToken     :: !(Maybe Text)
    , _ddblActionValue     :: !(Maybe Text)
    , _ddblUploadType      :: !(Maybe Text)
    , _ddblStripResults    :: !(Maybe Bool)
    , _ddblBearerToken     :: !(Maybe Text)
    , _ddblKey             :: !(Maybe Text)
    , _ddblIncludeAllUsers :: !(Maybe Bool)
    , _ddblWaitToken       :: !(Maybe Text)
    , _ddblDebuggeeId      :: !Text
    , _ddblOauthToken      :: !(Maybe Text)
    , _ddblFields          :: !(Maybe Text)
    , _ddblCallback        :: !(Maybe Text)
    , _ddblAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddblXgafv'
--
-- * 'ddblQuotaUser'
--
-- * 'ddblPrettyPrint'
--
-- * 'ddblIncludeInactive'
--
-- * 'ddblUploadProtocol'
--
-- * 'ddblPp'
--
-- * 'ddblAccessToken'
--
-- * 'ddblActionValue'
--
-- * 'ddblUploadType'
--
-- * 'ddblStripResults'
--
-- * 'ddblBearerToken'
--
-- * 'ddblKey'
--
-- * 'ddblIncludeAllUsers'
--
-- * 'ddblWaitToken'
--
-- * 'ddblDebuggeeId'
--
-- * 'ddblOauthToken'
--
-- * 'ddblFields'
--
-- * 'ddblCallback'
--
-- * 'ddblAlt'
debuggerDebuggeesBreakpointsList'
    :: Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsList'
debuggerDebuggeesBreakpointsList' pDdblDebuggeeId_ =
    DebuggerDebuggeesBreakpointsList'
    { _ddblXgafv = Nothing
    , _ddblQuotaUser = Nothing
    , _ddblPrettyPrint = True
    , _ddblIncludeInactive = Nothing
    , _ddblUploadProtocol = Nothing
    , _ddblPp = True
    , _ddblAccessToken = Nothing
    , _ddblActionValue = Nothing
    , _ddblUploadType = Nothing
    , _ddblStripResults = Nothing
    , _ddblBearerToken = Nothing
    , _ddblKey = Nothing
    , _ddblIncludeAllUsers = Nothing
    , _ddblWaitToken = Nothing
    , _ddblDebuggeeId = pDdblDebuggeeId_
    , _ddblOauthToken = Nothing
    , _ddblFields = Nothing
    , _ddblCallback = Nothing
    , _ddblAlt = "json"
    }

-- | V1 error format.
ddblXgafv :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblXgafv
  = lens _ddblXgafv (\ s a -> s{_ddblXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddblQuotaUser :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblQuotaUser
  = lens _ddblQuotaUser
      (\ s a -> s{_ddblQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddblPrettyPrint :: Lens' DebuggerDebuggeesBreakpointsList' Bool
ddblPrettyPrint
  = lens _ddblPrettyPrint
      (\ s a -> s{_ddblPrettyPrint = a})

-- | When set to true the response includes active and inactive breakpoints,
-- otherwise only active breakpoints are returned.
ddblIncludeInactive :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Bool)
ddblIncludeInactive
  = lens _ddblIncludeInactive
      (\ s a -> s{_ddblIncludeInactive = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddblUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblUploadProtocol
  = lens _ddblUploadProtocol
      (\ s a -> s{_ddblUploadProtocol = a})

-- | Pretty-print response.
ddblPp :: Lens' DebuggerDebuggeesBreakpointsList' Bool
ddblPp = lens _ddblPp (\ s a -> s{_ddblPp = a})

-- | OAuth access token.
ddblAccessToken :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblAccessToken
  = lens _ddblAccessToken
      (\ s a -> s{_ddblAccessToken = a})

-- | Only breakpoints with the specified action will pass the filter.
ddblActionValue :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblActionValue
  = lens _ddblActionValue
      (\ s a -> s{_ddblActionValue = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddblUploadType :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblUploadType
  = lens _ddblUploadType
      (\ s a -> s{_ddblUploadType = a})

-- | When set to true the response breakpoints will be stripped of the
-- results fields: stack_frames, evaluated_expressions and variable_table.
ddblStripResults :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Bool)
ddblStripResults
  = lens _ddblStripResults
      (\ s a -> s{_ddblStripResults = a})

-- | OAuth bearer token.
ddblBearerToken :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblBearerToken
  = lens _ddblBearerToken
      (\ s a -> s{_ddblBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddblKey :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblKey = lens _ddblKey (\ s a -> s{_ddblKey = a})

-- | When set to true the response includes the list of breakpoints set by
-- any user, otherwise only breakpoints set by the caller.
ddblIncludeAllUsers :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Bool)
ddblIncludeAllUsers
  = lens _ddblIncludeAllUsers
      (\ s a -> s{_ddblIncludeAllUsers = a})

-- | A wait token that, if specified, blocks the call until the breakpoints
-- list has changed, or a server selected timeout has expired. The value
-- should be set from the last response to ListBreakpoints. The error code
-- ABORTED is returned on wait timeout, which should be called again with
-- the same wait_token.
ddblWaitToken :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblWaitToken
  = lens _ddblWaitToken
      (\ s a -> s{_ddblWaitToken = a})

-- | The debuggee id to list breakpoint from.
ddblDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsList' Text
ddblDebuggeeId
  = lens _ddblDebuggeeId
      (\ s a -> s{_ddblDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddblOauthToken :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblOauthToken
  = lens _ddblOauthToken
      (\ s a -> s{_ddblOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddblFields :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblFields
  = lens _ddblFields (\ s a -> s{_ddblFields = a})

-- | JSONP
ddblCallback :: Lens' DebuggerDebuggeesBreakpointsList' (Maybe Text)
ddblCallback
  = lens _ddblCallback (\ s a -> s{_ddblCallback = a})

-- | Data format for response.
ddblAlt :: Lens' DebuggerDebuggeesBreakpointsList' Text
ddblAlt = lens _ddblAlt (\ s a -> s{_ddblAlt = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsList' where
        type Rs DebuggerDebuggeesBreakpointsList' =
             ListBreakpointsResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          DebuggerDebuggeesBreakpointsList'{..}
          = go _ddblXgafv _ddblQuotaUser
              (Just _ddblPrettyPrint)
              _ddblIncludeInactive
              _ddblUploadProtocol
              (Just _ddblPp)
              _ddblAccessToken
              _ddblActionValue
              _ddblUploadType
              _ddblStripResults
              _ddblBearerToken
              _ddblKey
              _ddblIncludeAllUsers
              _ddblWaitToken
              _ddblDebuggeeId
              _ddblOauthToken
              _ddblFields
              _ddblCallback
              (Just _ddblAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DebuggerDebuggeesBreakpointsListAPI)
                      r
                      u
