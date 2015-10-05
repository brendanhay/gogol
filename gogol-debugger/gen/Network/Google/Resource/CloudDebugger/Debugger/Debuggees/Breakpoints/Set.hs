{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the breakpoint to the debuggee.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerDebuggerDebuggeesBreakpointsSet@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.Set
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsSetResource

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
    , ddbsPayload
    , ddbsBearerToken
    , ddbsKey
    , ddbsDebuggeeId
    , ddbsOAuthToken
    , ddbsFields
    , ddbsCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerDebuggerDebuggeesBreakpointsSet@ which the
-- 'DebuggerDebuggeesBreakpointsSet'' request conforms to.
type DebuggerDebuggeesBreakpointsSetResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               "set" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] Breakpoint :>
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
    , _ddbsPayload        :: !Breakpoint
    , _ddbsBearerToken    :: !(Maybe Text)
    , _ddbsKey            :: !(Maybe Key)
    , _ddbsDebuggeeId     :: !Text
    , _ddbsOAuthToken     :: !(Maybe OAuthToken)
    , _ddbsFields         :: !(Maybe Text)
    , _ddbsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ddbsPayload'
--
-- * 'ddbsBearerToken'
--
-- * 'ddbsKey'
--
-- * 'ddbsDebuggeeId'
--
-- * 'ddbsOAuthToken'
--
-- * 'ddbsFields'
--
-- * 'ddbsCallback'
debuggerDebuggeesBreakpointsSet'
    :: Breakpoint -- ^ 'payload'
    -> Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsSet'
debuggerDebuggeesBreakpointsSet' pDdbsPayload_ pDdbsDebuggeeId_ =
    DebuggerDebuggeesBreakpointsSet'
    { _ddbsXgafv = Nothing
    , _ddbsQuotaUser = Nothing
    , _ddbsPrettyPrint = True
    , _ddbsUploadProtocol = Nothing
    , _ddbsPp = True
    , _ddbsAccessToken = Nothing
    , _ddbsUploadType = Nothing
    , _ddbsPayload = pDdbsPayload_
    , _ddbsBearerToken = Nothing
    , _ddbsKey = Nothing
    , _ddbsDebuggeeId = pDdbsDebuggeeId_
    , _ddbsOAuthToken = Nothing
    , _ddbsFields = Nothing
    , _ddbsCallback = Nothing
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

-- | Multipart request metadata.
ddbsPayload :: Lens' DebuggerDebuggeesBreakpointsSet' Breakpoint
ddbsPayload
  = lens _ddbsPayload (\ s a -> s{_ddbsPayload = a})

-- | OAuth bearer token.
ddbsBearerToken :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsBearerToken
  = lens _ddbsBearerToken
      (\ s a -> s{_ddbsBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddbsKey :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Key)
ddbsKey = lens _ddbsKey (\ s a -> s{_ddbsKey = a})

-- | The debuggee id to set the breakpoint to.
ddbsDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsSet' Text
ddbsDebuggeeId
  = lens _ddbsDebuggeeId
      (\ s a -> s{_ddbsDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddbsOAuthToken :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe OAuthToken)
ddbsOAuthToken
  = lens _ddbsOAuthToken
      (\ s a -> s{_ddbsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddbsFields :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsFields
  = lens _ddbsFields (\ s a -> s{_ddbsFields = a})

-- | JSONP
ddbsCallback :: Lens' DebuggerDebuggeesBreakpointsSet' (Maybe Text)
ddbsCallback
  = lens _ddbsCallback (\ s a -> s{_ddbsCallback = a})

instance GoogleAuth DebuggerDebuggeesBreakpointsSet'
         where
        authKey = ddbsKey . _Just
        authToken = ddbsOAuthToken . _Just

instance GoogleRequest
         DebuggerDebuggeesBreakpointsSet' where
        type Rs DebuggerDebuggeesBreakpointsSet' =
             SetBreakpointResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          DebuggerDebuggeesBreakpointsSet'{..}
          = go _ddbsDebuggeeId _ddbsXgafv _ddbsUploadProtocol
              (Just _ddbsPp)
              _ddbsAccessToken
              _ddbsUploadType
              _ddbsBearerToken
              _ddbsCallback
              _ddbsQuotaUser
              (Just _ddbsPrettyPrint)
              _ddbsFields
              _ddbsKey
              _ddbsOAuthToken
              (Just AltJSON)
              _ddbsPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsSetResource)
                      r
                      u
