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
-- | Gets breakpoint information.
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
    , ddbgOAuthToken
    , ddbgFields
    , ddbgCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerDebuggerDebuggeesBreakpointsGet@ which the
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
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] GetBreakpointResponse

-- | Gets breakpoint information.
--
-- /See:/ 'debuggerDebuggeesBreakpointsGet'' smart constructor.
data DebuggerDebuggeesBreakpointsGet' = DebuggerDebuggeesBreakpointsGet'
    { _ddbgXgafv          :: !(Maybe Text)
    , _ddbgQuotaUser      :: !(Maybe Text)
    , _ddbgPrettyPrint    :: !Bool
    , _ddbgUploadProtocol :: !(Maybe Text)
    , _ddbgPp             :: !Bool
    , _ddbgAccessToken    :: !(Maybe Text)
    , _ddbgUploadType     :: !(Maybe Text)
    , _ddbgBreakpointId   :: !Text
    , _ddbgBearerToken    :: !(Maybe Text)
    , _ddbgKey            :: !(Maybe AuthKey)
    , _ddbgDebuggeeId     :: !Text
    , _ddbgOAuthToken     :: !(Maybe OAuthToken)
    , _ddbgFields         :: !(Maybe Text)
    , _ddbgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ddbgOAuthToken'
--
-- * 'ddbgFields'
--
-- * 'ddbgCallback'
debuggerDebuggeesBreakpointsGet'
    :: Text -- ^ 'breakpointId'
    -> Text -- ^ 'debuggeeId'
    -> DebuggerDebuggeesBreakpointsGet'
debuggerDebuggeesBreakpointsGet' pDdbgBreakpointId_ pDdbgDebuggeeId_ =
    DebuggerDebuggeesBreakpointsGet'
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
    , _ddbgOAuthToken = Nothing
    , _ddbgFields = Nothing
    , _ddbgCallback = Nothing
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
ddbgKey :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe AuthKey)
ddbgKey = lens _ddbgKey (\ s a -> s{_ddbgKey = a})

-- | The debuggee id to get the breakpoint from.
ddbgDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsGet' Text
ddbgDebuggeeId
  = lens _ddbgDebuggeeId
      (\ s a -> s{_ddbgDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
ddbgOAuthToken :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe OAuthToken)
ddbgOAuthToken
  = lens _ddbgOAuthToken
      (\ s a -> s{_ddbgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddbgFields :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgFields
  = lens _ddbgFields (\ s a -> s{_ddbgFields = a})

-- | JSONP
ddbgCallback :: Lens' DebuggerDebuggeesBreakpointsGet' (Maybe Text)
ddbgCallback
  = lens _ddbgCallback (\ s a -> s{_ddbgCallback = a})

instance GoogleAuth DebuggerDebuggeesBreakpointsGet'
         where
        _AuthKey = ddbgKey . _Just
        _AuthToken = ddbgOAuthToken . _Just

instance GoogleRequest
         DebuggerDebuggeesBreakpointsGet' where
        type Rs DebuggerDebuggeesBreakpointsGet' =
             GetBreakpointResponse
        request = requestWith debuggerRequest
        requestWith rq DebuggerDebuggeesBreakpointsGet'{..}
          = go _ddbgDebuggeeId _ddbgBreakpointId _ddbgXgafv
              _ddbgUploadProtocol
              (Just _ddbgPp)
              _ddbgAccessToken
              _ddbgUploadType
              _ddbgBearerToken
              _ddbgCallback
              _ddbgQuotaUser
              (Just _ddbgPrettyPrint)
              _ddbgFields
              _ddbgKey
              _ddbgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsGetResource)
                      rq
