{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the breakpoint from the debuggee.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @ClouddebuggerDebuggerDebuggeesBreakpointsDelete@.
module Clouddebugger.Debugger.Debuggees.Breakpoints.Delete
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsDeleteAPI

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsDelete
    , DebuggerDebuggeesBreakpointsDelete

    -- * Request Lenses
    , ddbdXgafv
    , ddbdQuotaUser
    , ddbdPrettyPrint
    , ddbdUploadProtocol
    , ddbdPp
    , ddbdAccessToken
    , ddbdUploadType
    , ddbdBreakpointId
    , ddbdBearerToken
    , ddbdKey
    , ddbdDebuggeeId
    , ddbdOauthToken
    , ddbdFields
    , ddbdCallback
    , ddbdAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouddebuggerDebuggerDebuggeesBreakpointsDelete@ which the
-- 'DebuggerDebuggeesBreakpointsDelete' request conforms to.
type DebuggerDebuggeesBreakpointsDeleteAPI =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "breakpointId" Text :> Delete '[JSON] Empty

-- | Deletes the breakpoint from the debuggee.
--
-- /See:/ 'debuggerDebuggeesBreakpointsDelete' smart constructor.
data DebuggerDebuggeesBreakpointsDelete = DebuggerDebuggeesBreakpointsDelete
    { _ddbdXgafv          :: !(Maybe Text)
    , _ddbdQuotaUser      :: !(Maybe Text)
    , _ddbdPrettyPrint    :: !Bool
    , _ddbdUploadProtocol :: !(Maybe Text)
    , _ddbdPp             :: !Bool
    , _ddbdAccessToken    :: !(Maybe Text)
    , _ddbdUploadType     :: !(Maybe Text)
    , _ddbdBreakpointId   :: !Text
    , _ddbdBearerToken    :: !(Maybe Text)
    , _ddbdKey            :: !(Maybe Text)
    , _ddbdDebuggeeId     :: !Text
    , _ddbdOauthToken     :: !(Maybe Text)
    , _ddbdFields         :: !(Maybe Text)
    , _ddbdCallback       :: !(Maybe Text)
    , _ddbdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbdXgafv'
--
-- * 'ddbdQuotaUser'
--
-- * 'ddbdPrettyPrint'
--
-- * 'ddbdUploadProtocol'
--
-- * 'ddbdPp'
--
-- * 'ddbdAccessToken'
--
-- * 'ddbdUploadType'
--
-- * 'ddbdBreakpointId'
--
-- * 'ddbdBearerToken'
--
-- * 'ddbdKey'
--
-- * 'ddbdDebuggeeId'
--
-- * 'ddbdOauthToken'
--
-- * 'ddbdFields'
--
-- * 'ddbdCallback'
--
-- * 'ddbdAlt'
debuggerDebuggeesBreakpointsDelete
    :: Text -- ^ 'breakpointId'
    -> Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsDelete
debuggerDebuggeesBreakpointsDelete pDdbdBreakpointId_ pDdbdDebuggeeId_ =
    DebuggerDebuggeesBreakpointsDelete
    { _ddbdXgafv = Nothing
    , _ddbdQuotaUser = Nothing
    , _ddbdPrettyPrint = True
    , _ddbdUploadProtocol = Nothing
    , _ddbdPp = True
    , _ddbdAccessToken = Nothing
    , _ddbdUploadType = Nothing
    , _ddbdBreakpointId = pDdbdBreakpointId_
    , _ddbdBearerToken = Nothing
    , _ddbdKey = Nothing
    , _ddbdDebuggeeId = pDdbdDebuggeeId_
    , _ddbdOauthToken = Nothing
    , _ddbdFields = Nothing
    , _ddbdCallback = Nothing
    , _ddbdAlt = "json"
    }

-- | V1 error format.
ddbdXgafv :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdXgafv
  = lens _ddbdXgafv (\ s a -> s{_ddbdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ddbdQuotaUser :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdQuotaUser
  = lens _ddbdQuotaUser
      (\ s a -> s{_ddbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddbdPrettyPrint :: Lens' DebuggerDebuggeesBreakpointsDelete' Bool
ddbdPrettyPrint
  = lens _ddbdPrettyPrint
      (\ s a -> s{_ddbdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddbdUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdUploadProtocol
  = lens _ddbdUploadProtocol
      (\ s a -> s{_ddbdUploadProtocol = a})

-- | Pretty-print response.
ddbdPp :: Lens' DebuggerDebuggeesBreakpointsDelete' Bool
ddbdPp = lens _ddbdPp (\ s a -> s{_ddbdPp = a})

-- | OAuth access token.
ddbdAccessToken :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdAccessToken
  = lens _ddbdAccessToken
      (\ s a -> s{_ddbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddbdUploadType :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdUploadType
  = lens _ddbdUploadType
      (\ s a -> s{_ddbdUploadType = a})

-- | The breakpoint to delete.
ddbdBreakpointId :: Lens' DebuggerDebuggeesBreakpointsDelete' Text
ddbdBreakpointId
  = lens _ddbdBreakpointId
      (\ s a -> s{_ddbdBreakpointId = a})

-- | OAuth bearer token.
ddbdBearerToken :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdBearerToken
  = lens _ddbdBearerToken
      (\ s a -> s{_ddbdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddbdKey :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdKey = lens _ddbdKey (\ s a -> s{_ddbdKey = a})

-- | The debuggee id to delete the breakpoint from.
ddbdDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsDelete' Text
ddbdDebuggeeId
  = lens _ddbdDebuggeeId
      (\ s a -> s{_ddbdDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddbdOauthToken :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdOauthToken
  = lens _ddbdOauthToken
      (\ s a -> s{_ddbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddbdFields :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdFields
  = lens _ddbdFields (\ s a -> s{_ddbdFields = a})

-- | JSONP
ddbdCallback :: Lens' DebuggerDebuggeesBreakpointsDelete' (Maybe Text)
ddbdCallback
  = lens _ddbdCallback (\ s a -> s{_ddbdCallback = a})

-- | Data format for response.
ddbdAlt :: Lens' DebuggerDebuggeesBreakpointsDelete' Text
ddbdAlt = lens _ddbdAlt (\ s a -> s{_ddbdAlt = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsDelete' where
        type Rs DebuggerDebuggeesBreakpointsDelete' = Empty
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          DebuggerDebuggeesBreakpointsDelete{..}
          = go _ddbdXgafv _ddbdQuotaUser _ddbdPrettyPrint
              _ddbdUploadProtocol
              _ddbdPp
              _ddbdAccessToken
              _ddbdUploadType
              _ddbdBreakpointId
              _ddbdBearerToken
              _ddbdKey
              _ddbdDebuggeeId
              _ddbdOauthToken
              _ddbdFields
              _ddbdCallback
              _ddbdAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsDeleteAPI)
                      r
                      u
