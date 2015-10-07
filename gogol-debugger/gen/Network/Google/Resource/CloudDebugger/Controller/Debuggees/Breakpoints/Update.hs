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
-- Module      : Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the breakpoint state or mutable fields. The entire Breakpoint
-- protobuf must be sent back to the controller. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \'location\', \'condition\' and
-- \'expression\' fields should not alter the breakpoint semantics. They
-- are restricted to changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerControllerDebuggeesBreakpointsUpdate@.
module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update
    (
    -- * REST Resource
      ControllerDebuggeesBreakpointsUpdateResource

    -- * Creating a Request
    , controllerDebuggeesBreakpointsUpdate'
    , ControllerDebuggeesBreakpointsUpdate'

    -- * Request Lenses
    , cdbuXgafv
    , cdbuQuotaUser
    , cdbuPrettyPrint
    , cdbuUploadProtocol
    , cdbuPp
    , cdbuAccessToken
    , cdbuUploadType
    , cdbuPayload
    , cdbuBearerToken
    , cdbuKey
    , cdbuId
    , cdbuDebuggeeId
    , cdbuOAuthToken
    , cdbuFields
    , cdbuCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerControllerDebuggeesBreakpointsUpdate@ method which the
-- 'ControllerDebuggeesBreakpointsUpdate'' request conforms to.
type ControllerDebuggeesBreakpointsUpdateResource =
     "v2" :>
       "controller" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "id" Text :>
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
                                           ReqBody '[JSON]
                                             UpdateActiveBreakpointRequest
                                             :>
                                             Put '[JSON]
                                               UpdateActiveBreakpointResponse

-- | Updates the breakpoint state or mutable fields. The entire Breakpoint
-- protobuf must be sent back to the controller. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \'location\', \'condition\' and
-- \'expression\' fields should not alter the breakpoint semantics. They
-- are restricted to changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
--
-- /See:/ 'controllerDebuggeesBreakpointsUpdate'' smart constructor.
data ControllerDebuggeesBreakpointsUpdate' = ControllerDebuggeesBreakpointsUpdate'
    { _cdbuXgafv          :: !(Maybe Text)
    , _cdbuQuotaUser      :: !(Maybe Text)
    , _cdbuPrettyPrint    :: !Bool
    , _cdbuUploadProtocol :: !(Maybe Text)
    , _cdbuPp             :: !Bool
    , _cdbuAccessToken    :: !(Maybe Text)
    , _cdbuUploadType     :: !(Maybe Text)
    , _cdbuPayload        :: !UpdateActiveBreakpointRequest
    , _cdbuBearerToken    :: !(Maybe Text)
    , _cdbuKey            :: !(Maybe AuthKey)
    , _cdbuId             :: !Text
    , _cdbuDebuggeeId     :: !Text
    , _cdbuOAuthToken     :: !(Maybe OAuthToken)
    , _cdbuFields         :: !(Maybe Text)
    , _cdbuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ControllerDebuggeesBreakpointsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdbuXgafv'
--
-- * 'cdbuQuotaUser'
--
-- * 'cdbuPrettyPrint'
--
-- * 'cdbuUploadProtocol'
--
-- * 'cdbuPp'
--
-- * 'cdbuAccessToken'
--
-- * 'cdbuUploadType'
--
-- * 'cdbuPayload'
--
-- * 'cdbuBearerToken'
--
-- * 'cdbuKey'
--
-- * 'cdbuId'
--
-- * 'cdbuDebuggeeId'
--
-- * 'cdbuOAuthToken'
--
-- * 'cdbuFields'
--
-- * 'cdbuCallback'
controllerDebuggeesBreakpointsUpdate'
    :: UpdateActiveBreakpointRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> Text -- ^ 'debuggeeId'
    -> ControllerDebuggeesBreakpointsUpdate'
controllerDebuggeesBreakpointsUpdate' pCdbuPayload_ pCdbuId_ pCdbuDebuggeeId_ =
    ControllerDebuggeesBreakpointsUpdate'
    { _cdbuXgafv = Nothing
    , _cdbuQuotaUser = Nothing
    , _cdbuPrettyPrint = True
    , _cdbuUploadProtocol = Nothing
    , _cdbuPp = True
    , _cdbuAccessToken = Nothing
    , _cdbuUploadType = Nothing
    , _cdbuPayload = pCdbuPayload_
    , _cdbuBearerToken = Nothing
    , _cdbuKey = Nothing
    , _cdbuId = pCdbuId_
    , _cdbuDebuggeeId = pCdbuDebuggeeId_
    , _cdbuOAuthToken = Nothing
    , _cdbuFields = Nothing
    , _cdbuCallback = Nothing
    }

-- | V1 error format.
cdbuXgafv :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuXgafv
  = lens _cdbuXgafv (\ s a -> s{_cdbuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cdbuQuotaUser :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuQuotaUser
  = lens _cdbuQuotaUser
      (\ s a -> s{_cdbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdbuPrettyPrint :: Lens' ControllerDebuggeesBreakpointsUpdate' Bool
cdbuPrettyPrint
  = lens _cdbuPrettyPrint
      (\ s a -> s{_cdbuPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdbuUploadProtocol :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuUploadProtocol
  = lens _cdbuUploadProtocol
      (\ s a -> s{_cdbuUploadProtocol = a})

-- | Pretty-print response.
cdbuPp :: Lens' ControllerDebuggeesBreakpointsUpdate' Bool
cdbuPp = lens _cdbuPp (\ s a -> s{_cdbuPp = a})

-- | OAuth access token.
cdbuAccessToken :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuAccessToken
  = lens _cdbuAccessToken
      (\ s a -> s{_cdbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdbuUploadType :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuUploadType
  = lens _cdbuUploadType
      (\ s a -> s{_cdbuUploadType = a})

-- | Multipart request metadata.
cdbuPayload :: Lens' ControllerDebuggeesBreakpointsUpdate' UpdateActiveBreakpointRequest
cdbuPayload
  = lens _cdbuPayload (\ s a -> s{_cdbuPayload = a})

-- | OAuth bearer token.
cdbuBearerToken :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuBearerToken
  = lens _cdbuBearerToken
      (\ s a -> s{_cdbuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdbuKey :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe AuthKey)
cdbuKey = lens _cdbuKey (\ s a -> s{_cdbuKey = a})

-- | Breakpoint identifier, unique in the scope of the debuggee.
cdbuId :: Lens' ControllerDebuggeesBreakpointsUpdate' Text
cdbuId = lens _cdbuId (\ s a -> s{_cdbuId = a})

-- | Identifies the debuggee being debugged.
cdbuDebuggeeId :: Lens' ControllerDebuggeesBreakpointsUpdate' Text
cdbuDebuggeeId
  = lens _cdbuDebuggeeId
      (\ s a -> s{_cdbuDebuggeeId = a})

-- | OAuth 2.0 token for the current user.
cdbuOAuthToken :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe OAuthToken)
cdbuOAuthToken
  = lens _cdbuOAuthToken
      (\ s a -> s{_cdbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdbuFields :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuFields
  = lens _cdbuFields (\ s a -> s{_cdbuFields = a})

-- | JSONP
cdbuCallback :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuCallback
  = lens _cdbuCallback (\ s a -> s{_cdbuCallback = a})

instance GoogleAuth
         ControllerDebuggeesBreakpointsUpdate' where
        _AuthKey = cdbuKey . _Just
        _AuthToken = cdbuOAuthToken . _Just

instance GoogleRequest
         ControllerDebuggeesBreakpointsUpdate' where
        type Rs ControllerDebuggeesBreakpointsUpdate' =
             UpdateActiveBreakpointResponse
        request = requestWith debuggerRequest
        requestWith rq
          ControllerDebuggeesBreakpointsUpdate'{..}
          = go _cdbuDebuggeeId _cdbuId _cdbuXgafv
              _cdbuUploadProtocol
              (Just _cdbuPp)
              _cdbuAccessToken
              _cdbuUploadType
              _cdbuBearerToken
              _cdbuCallback
              _cdbuQuotaUser
              (Just _cdbuPrettyPrint)
              _cdbuFields
              _cdbuKey
              _cdbuOAuthToken
              (Just AltJSON)
              _cdbuPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ControllerDebuggeesBreakpointsUpdateResource)
                      rq
