{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Clouddebugger.Controller.Debuggees.Breakpoints.Update
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
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @ClouddebuggerControllerDebuggeesBreakpointsUpdate@.
module Clouddebugger.Controller.Debuggees.Breakpoints.Update
    (
    -- * REST Resource
      ControllerDebuggeesBreakpointsUpdateAPI

    -- * Creating a Request
    , controllerDebuggeesBreakpointsUpdate
    , ControllerDebuggeesBreakpointsUpdate

    -- * Request Lenses
    , cdbuXgafv
    , cdbuQuotaUser
    , cdbuPrettyPrint
    , cdbuUploadProtocol
    , cdbuPp
    , cdbuAccessToken
    , cdbuUploadType
    , cdbuBearerToken
    , cdbuKey
    , cdbuId
    , cdbuDebuggeeId
    , cdbuOauthToken
    , cdbuFields
    , cdbuCallback
    , cdbuAlt
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @ClouddebuggerControllerDebuggeesBreakpointsUpdate@ which the
-- 'ControllerDebuggeesBreakpointsUpdate' request conforms to.
type ControllerDebuggeesBreakpointsUpdateAPI =
     "v2" :>
       "controller" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "id" Text :>
                 Put '[JSON] UpdateActiveBreakpointResponse

-- | Updates the breakpoint state or mutable fields. The entire Breakpoint
-- protobuf must be sent back to the controller. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \'location\', \'condition\' and
-- \'expression\' fields should not alter the breakpoint semantics. They
-- are restricted to changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
--
-- /See:/ 'controllerDebuggeesBreakpointsUpdate' smart constructor.
data ControllerDebuggeesBreakpointsUpdate = ControllerDebuggeesBreakpointsUpdate
    { _cdbuXgafv          :: !(Maybe Text)
    , _cdbuQuotaUser      :: !(Maybe Text)
    , _cdbuPrettyPrint    :: !Bool
    , _cdbuUploadProtocol :: !(Maybe Text)
    , _cdbuPp             :: !Bool
    , _cdbuAccessToken    :: !(Maybe Text)
    , _cdbuUploadType     :: !(Maybe Text)
    , _cdbuBearerToken    :: !(Maybe Text)
    , _cdbuKey            :: !(Maybe Text)
    , _cdbuId             :: !Text
    , _cdbuDebuggeeId     :: !Text
    , _cdbuOauthToken     :: !(Maybe Text)
    , _cdbuFields         :: !(Maybe Text)
    , _cdbuCallback       :: !(Maybe Text)
    , _cdbuAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'cdbuBearerToken'
--
-- * 'cdbuKey'
--
-- * 'cdbuId'
--
-- * 'cdbuDebuggeeId'
--
-- * 'cdbuOauthToken'
--
-- * 'cdbuFields'
--
-- * 'cdbuCallback'
--
-- * 'cdbuAlt'
controllerDebuggeesBreakpointsUpdate
    :: Text -- ^ 'id'
    -> Text -- ^ 'debuggeeId'
    -> ControllerDebuggeesBreakpointsUpdate
controllerDebuggeesBreakpointsUpdate pCdbuId_ pCdbuDebuggeeId_ =
    ControllerDebuggeesBreakpointsUpdate
    { _cdbuXgafv = Nothing
    , _cdbuQuotaUser = Nothing
    , _cdbuPrettyPrint = True
    , _cdbuUploadProtocol = Nothing
    , _cdbuPp = True
    , _cdbuAccessToken = Nothing
    , _cdbuUploadType = Nothing
    , _cdbuBearerToken = Nothing
    , _cdbuKey = Nothing
    , _cdbuId = pCdbuId_
    , _cdbuDebuggeeId = pCdbuDebuggeeId_
    , _cdbuOauthToken = Nothing
    , _cdbuFields = Nothing
    , _cdbuCallback = Nothing
    , _cdbuAlt = "json"
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

-- | OAuth bearer token.
cdbuBearerToken :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuBearerToken
  = lens _cdbuBearerToken
      (\ s a -> s{_cdbuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdbuKey :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
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
cdbuOauthToken :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuOauthToken
  = lens _cdbuOauthToken
      (\ s a -> s{_cdbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdbuFields :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuFields
  = lens _cdbuFields (\ s a -> s{_cdbuFields = a})

-- | JSONP
cdbuCallback :: Lens' ControllerDebuggeesBreakpointsUpdate' (Maybe Text)
cdbuCallback
  = lens _cdbuCallback (\ s a -> s{_cdbuCallback = a})

-- | Data format for response.
cdbuAlt :: Lens' ControllerDebuggeesBreakpointsUpdate' Text
cdbuAlt = lens _cdbuAlt (\ s a -> s{_cdbuAlt = a})

instance GoogleRequest
         ControllerDebuggeesBreakpointsUpdate' where
        type Rs ControllerDebuggeesBreakpointsUpdate' =
             UpdateActiveBreakpointResponse
        request = requestWithRoute defReq debuggerURL
        requestWithRoute r u
          ControllerDebuggeesBreakpointsUpdate{..}
          = go _cdbuXgafv _cdbuQuotaUser _cdbuPrettyPrint
              _cdbuUploadProtocol
              _cdbuPp
              _cdbuAccessToken
              _cdbuUploadType
              _cdbuBearerToken
              _cdbuKey
              _cdbuId
              _cdbuDebuggeeId
              _cdbuOauthToken
              _cdbuFields
              _cdbuCallback
              _cdbuAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ControllerDebuggeesBreakpointsUpdateAPI)
                      r
                      u
