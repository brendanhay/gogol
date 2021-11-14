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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the breakpoint state or mutable fields. The entire Breakpoint
-- message must be sent back to the controller service. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \`location\`, \`condition\` and
-- \`expressions\` fields should not alter the breakpoint semantics. These
-- may only make changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
--
-- /See:/ <https://cloud.google.com/debugger Cloud Debugger API Reference> for @clouddebugger.controller.debuggees.breakpoints.update@.
module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Breakpoints.Update
    (
    -- * REST Resource
      ControllerDebuggeesBreakpointsUpdateResource

    -- * Creating a Request
    , controllerDebuggeesBreakpointsUpdate
    , ControllerDebuggeesBreakpointsUpdate

    -- * Request Lenses
    , cdbuXgafv
    , cdbuUploadProtocol
    , cdbuAccessToken
    , cdbuUploadType
    , cdbuPayload
    , cdbuId
    , cdbuDebuggeeId
    , cdbuCallback
    ) where

import Network.Google.Debugger.Types
import Network.Google.Prelude

-- | A resource alias for @clouddebugger.controller.debuggees.breakpoints.update@ method which the
-- 'ControllerDebuggeesBreakpointsUpdate' request conforms to.
type ControllerDebuggeesBreakpointsUpdateResource =
     "v2" :>
       "controller" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] UpdateActiveBreakpointRequest :>
                               Put '[JSON] UpdateActiveBreakpointResponse

-- | Updates the breakpoint state or mutable fields. The entire Breakpoint
-- message must be sent back to the controller service. Updates to active
-- breakpoint fields are only allowed if the new value does not change the
-- breakpoint specification. Updates to the \`location\`, \`condition\` and
-- \`expressions\` fields should not alter the breakpoint semantics. These
-- may only make changes such as canonicalizing a value or snapping the
-- location to the correct line of code.
--
-- /See:/ 'controllerDebuggeesBreakpointsUpdate' smart constructor.
data ControllerDebuggeesBreakpointsUpdate =
  ControllerDebuggeesBreakpointsUpdate'
    { _cdbuXgafv :: !(Maybe Xgafv)
    , _cdbuUploadProtocol :: !(Maybe Text)
    , _cdbuAccessToken :: !(Maybe Text)
    , _cdbuUploadType :: !(Maybe Text)
    , _cdbuPayload :: !UpdateActiveBreakpointRequest
    , _cdbuId :: !Text
    , _cdbuDebuggeeId :: !Text
    , _cdbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ControllerDebuggeesBreakpointsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdbuXgafv'
--
-- * 'cdbuUploadProtocol'
--
-- * 'cdbuAccessToken'
--
-- * 'cdbuUploadType'
--
-- * 'cdbuPayload'
--
-- * 'cdbuId'
--
-- * 'cdbuDebuggeeId'
--
-- * 'cdbuCallback'
controllerDebuggeesBreakpointsUpdate
    :: UpdateActiveBreakpointRequest -- ^ 'cdbuPayload'
    -> Text -- ^ 'cdbuId'
    -> Text -- ^ 'cdbuDebuggeeId'
    -> ControllerDebuggeesBreakpointsUpdate
controllerDebuggeesBreakpointsUpdate pCdbuPayload_ pCdbuId_ pCdbuDebuggeeId_ =
  ControllerDebuggeesBreakpointsUpdate'
    { _cdbuXgafv = Nothing
    , _cdbuUploadProtocol = Nothing
    , _cdbuAccessToken = Nothing
    , _cdbuUploadType = Nothing
    , _cdbuPayload = pCdbuPayload_
    , _cdbuId = pCdbuId_
    , _cdbuDebuggeeId = pCdbuDebuggeeId_
    , _cdbuCallback = Nothing
    }


-- | V1 error format.
cdbuXgafv :: Lens' ControllerDebuggeesBreakpointsUpdate (Maybe Xgafv)
cdbuXgafv
  = lens _cdbuXgafv (\ s a -> s{_cdbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdbuUploadProtocol :: Lens' ControllerDebuggeesBreakpointsUpdate (Maybe Text)
cdbuUploadProtocol
  = lens _cdbuUploadProtocol
      (\ s a -> s{_cdbuUploadProtocol = a})

-- | OAuth access token.
cdbuAccessToken :: Lens' ControllerDebuggeesBreakpointsUpdate (Maybe Text)
cdbuAccessToken
  = lens _cdbuAccessToken
      (\ s a -> s{_cdbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdbuUploadType :: Lens' ControllerDebuggeesBreakpointsUpdate (Maybe Text)
cdbuUploadType
  = lens _cdbuUploadType
      (\ s a -> s{_cdbuUploadType = a})

-- | Multipart request metadata.
cdbuPayload :: Lens' ControllerDebuggeesBreakpointsUpdate UpdateActiveBreakpointRequest
cdbuPayload
  = lens _cdbuPayload (\ s a -> s{_cdbuPayload = a})

-- | Breakpoint identifier, unique in the scope of the debuggee.
cdbuId :: Lens' ControllerDebuggeesBreakpointsUpdate Text
cdbuId = lens _cdbuId (\ s a -> s{_cdbuId = a})

-- | Required. Identifies the debuggee being debugged.
cdbuDebuggeeId :: Lens' ControllerDebuggeesBreakpointsUpdate Text
cdbuDebuggeeId
  = lens _cdbuDebuggeeId
      (\ s a -> s{_cdbuDebuggeeId = a})

-- | JSONP
cdbuCallback :: Lens' ControllerDebuggeesBreakpointsUpdate (Maybe Text)
cdbuCallback
  = lens _cdbuCallback (\ s a -> s{_cdbuCallback = a})

instance GoogleRequest
           ControllerDebuggeesBreakpointsUpdate
         where
        type Rs ControllerDebuggeesBreakpointsUpdate =
             UpdateActiveBreakpointResponse
        type Scopes ControllerDebuggeesBreakpointsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud_debugger"]
        requestClient
          ControllerDebuggeesBreakpointsUpdate'{..}
          = go _cdbuDebuggeeId _cdbuId _cdbuXgafv
              _cdbuUploadProtocol
              _cdbuAccessToken
              _cdbuUploadType
              _cdbuCallback
              (Just AltJSON)
              _cdbuPayload
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ControllerDebuggeesBreakpointsUpdateResource)
                      mempty
