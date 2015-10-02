{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the list of all active breakpoints for the specified debuggee.
-- The breakpoint specification (location, condition, and expression
-- fields) is semantically immutable, although the field values may change.
-- For example, an agent may update the location line number to reflect the
-- actual line the breakpoint was set to, but that doesn\'t change the
-- breakpoint semantics. Thus, an agent does not need to check if a
-- breakpoint has changed when it encounters the same breakpoint on a
-- successive call. Moreover, an agent should remember breakpoints that are
-- complete until the controller removes them from the active list to avoid
-- setting those breakpoints again.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerControllerDebuggeesBreakpointsList@.
module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.List
    (
    -- * REST Resource
      ControllerDebuggeesBreakpointsListResource

    -- * Creating a Request
    , controllerDebuggeesBreakpointsList'
    , ControllerDebuggeesBreakpointsList'

    -- * Request Lenses
    , cdblXgafv
    , cdblQuotaUser
    , cdblPrettyPrint
    , cdblUploadProtocol
    , cdblPp
    , cdblAccessToken
    , cdblUploadType
    , cdblBearerToken
    , cdblKey
    , cdblWaitToken
    , cdblDebuggeeId
    , cdblOAuthToken
    , cdblFields
    , cdblCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerControllerDebuggeesBreakpointsList@ which the
-- 'ControllerDebuggeesBreakpointsList'' request conforms to.
type ControllerDebuggeesBreakpointsListResource =
     "v2" :>
       "controller" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "waitToken" Text :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             ListActiveBreakpointsResponse

-- | Returns the list of all active breakpoints for the specified debuggee.
-- The breakpoint specification (location, condition, and expression
-- fields) is semantically immutable, although the field values may change.
-- For example, an agent may update the location line number to reflect the
-- actual line the breakpoint was set to, but that doesn\'t change the
-- breakpoint semantics. Thus, an agent does not need to check if a
-- breakpoint has changed when it encounters the same breakpoint on a
-- successive call. Moreover, an agent should remember breakpoints that are
-- complete until the controller removes them from the active list to avoid
-- setting those breakpoints again.
--
-- /See:/ 'controllerDebuggeesBreakpointsList'' smart constructor.
data ControllerDebuggeesBreakpointsList' = ControllerDebuggeesBreakpointsList'
    { _cdblXgafv          :: !(Maybe Text)
    , _cdblQuotaUser      :: !(Maybe Text)
    , _cdblPrettyPrint    :: !Bool
    , _cdblUploadProtocol :: !(Maybe Text)
    , _cdblPp             :: !Bool
    , _cdblAccessToken    :: !(Maybe Text)
    , _cdblUploadType     :: !(Maybe Text)
    , _cdblBearerToken    :: !(Maybe Text)
    , _cdblKey            :: !(Maybe Key)
    , _cdblWaitToken      :: !(Maybe Text)
    , _cdblDebuggeeId     :: !Text
    , _cdblOAuthToken     :: !(Maybe OAuthToken)
    , _cdblFields         :: !(Maybe Text)
    , _cdblCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ControllerDebuggeesBreakpointsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdblXgafv'
--
-- * 'cdblQuotaUser'
--
-- * 'cdblPrettyPrint'
--
-- * 'cdblUploadProtocol'
--
-- * 'cdblPp'
--
-- * 'cdblAccessToken'
--
-- * 'cdblUploadType'
--
-- * 'cdblBearerToken'
--
-- * 'cdblKey'
--
-- * 'cdblWaitToken'
--
-- * 'cdblDebuggeeId'
--
-- * 'cdblOAuthToken'
--
-- * 'cdblFields'
--
-- * 'cdblCallback'
controllerDebuggeesBreakpointsList'
    :: Text -- ^ 'debuggeeId'
    -> ControllerDebuggeesBreakpointsList'
controllerDebuggeesBreakpointsList' pCdblDebuggeeId_ =
    ControllerDebuggeesBreakpointsList'
    { _cdblXgafv = Nothing
    , _cdblQuotaUser = Nothing
    , _cdblPrettyPrint = True
    , _cdblUploadProtocol = Nothing
    , _cdblPp = True
    , _cdblAccessToken = Nothing
    , _cdblUploadType = Nothing
    , _cdblBearerToken = Nothing
    , _cdblKey = Nothing
    , _cdblWaitToken = Nothing
    , _cdblDebuggeeId = pCdblDebuggeeId_
    , _cdblOAuthToken = Nothing
    , _cdblFields = Nothing
    , _cdblCallback = Nothing
    }

-- | V1 error format.
cdblXgafv :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblXgafv
  = lens _cdblXgafv (\ s a -> s{_cdblXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cdblQuotaUser :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblQuotaUser
  = lens _cdblQuotaUser
      (\ s a -> s{_cdblQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdblPrettyPrint :: Lens' ControllerDebuggeesBreakpointsList' Bool
cdblPrettyPrint
  = lens _cdblPrettyPrint
      (\ s a -> s{_cdblPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdblUploadProtocol :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblUploadProtocol
  = lens _cdblUploadProtocol
      (\ s a -> s{_cdblUploadProtocol = a})

-- | Pretty-print response.
cdblPp :: Lens' ControllerDebuggeesBreakpointsList' Bool
cdblPp = lens _cdblPp (\ s a -> s{_cdblPp = a})

-- | OAuth access token.
cdblAccessToken :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblAccessToken
  = lens _cdblAccessToken
      (\ s a -> s{_cdblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdblUploadType :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblUploadType
  = lens _cdblUploadType
      (\ s a -> s{_cdblUploadType = a})

-- | OAuth bearer token.
cdblBearerToken :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblBearerToken
  = lens _cdblBearerToken
      (\ s a -> s{_cdblBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdblKey :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Key)
cdblKey = lens _cdblKey (\ s a -> s{_cdblKey = a})

-- | A wait token that, if specified, blocks the method call until the list
-- of active breakpoints has changed, or a server selected timeout has
-- expired. The value should be set from the last returned response. The
-- error code google.rpc.Code.ABORTED is returned on wait timeout (which
-- does not require the agent to re-register with the server)
cdblWaitToken :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblWaitToken
  = lens _cdblWaitToken
      (\ s a -> s{_cdblWaitToken = a})

-- | Identifies the debuggee.
cdblDebuggeeId :: Lens' ControllerDebuggeesBreakpointsList' Text
cdblDebuggeeId
  = lens _cdblDebuggeeId
      (\ s a -> s{_cdblDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
cdblOAuthToken :: Lens' ControllerDebuggeesBreakpointsList' (Maybe OAuthToken)
cdblOAuthToken
  = lens _cdblOAuthToken
      (\ s a -> s{_cdblOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdblFields :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblFields
  = lens _cdblFields (\ s a -> s{_cdblFields = a})

-- | JSONP
cdblCallback :: Lens' ControllerDebuggeesBreakpointsList' (Maybe Text)
cdblCallback
  = lens _cdblCallback (\ s a -> s{_cdblCallback = a})

instance GoogleAuth
         ControllerDebuggeesBreakpointsList' where
        authKey = cdblKey . _Just
        authToken = cdblOAuthToken . _Just

instance GoogleRequest
         ControllerDebuggeesBreakpointsList' where
        type Rs ControllerDebuggeesBreakpointsList' =
             ListActiveBreakpointsResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          ControllerDebuggeesBreakpointsList'{..}
          = go _cdblXgafv _cdblQuotaUser
              (Just _cdblPrettyPrint)
              _cdblUploadProtocol
              (Just _cdblPp)
              _cdblAccessToken
              _cdblUploadType
              _cdblBearerToken
              _cdblKey
              _cdblWaitToken
              _cdblDebuggeeId
              _cdblOAuthToken
              _cdblFields
              _cdblCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ControllerDebuggeesBreakpointsListResource)
                      r
                      u
