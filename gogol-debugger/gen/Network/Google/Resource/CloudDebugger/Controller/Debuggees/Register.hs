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
-- Module      : Network.Google.Resource.CloudDebugger.Controller.Debuggees.Register
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Registers the debuggee with the controller. All agents should call this
-- API with the same request content to get back the same stable
-- \'debuggee_id\'. Agents should call this API again whenever
-- ListActiveBreakpoints or UpdateActiveBreakpoint return the error
-- google.rpc.Code.NOT_FOUND. It allows the server to disable the agent or
-- recover from any registration loss. If the debuggee is disabled server,
-- the response will have is_disabled\' set to true.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @CloudDebuggerControllerDebuggeesRegister@.
module Network.Google.Resource.CloudDebugger.Controller.Debuggees.Register
    (
    -- * REST Resource
      ControllerDebuggeesRegisterResource

    -- * Creating a Request
    , controllerDebuggeesRegister'
    , ControllerDebuggeesRegister'

    -- * Request Lenses
    , cdrXgafv
    , cdrQuotaUser
    , cdrPrettyPrint
    , cdrUploadProtocol
    , cdrPp
    , cdrAccessToken
    , cdrUploadType
    , cdrPayload
    , cdrBearerToken
    , cdrKey
    , cdrOAuthToken
    , cdrFields
    , cdrCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudDebuggerControllerDebuggeesRegister@ which the
-- 'ControllerDebuggeesRegister'' request conforms to.
type ControllerDebuggeesRegisterResource =
     "v2" :>
       "controller" :>
         "debuggees" :>
           "register" :>
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
                                       ReqBody '[JSON] RegisterDebuggeeRequest
                                         :>
                                         Post '[JSON] RegisterDebuggeeResponse

-- | Registers the debuggee with the controller. All agents should call this
-- API with the same request content to get back the same stable
-- \'debuggee_id\'. Agents should call this API again whenever
-- ListActiveBreakpoints or UpdateActiveBreakpoint return the error
-- google.rpc.Code.NOT_FOUND. It allows the server to disable the agent or
-- recover from any registration loss. If the debuggee is disabled server,
-- the response will have is_disabled\' set to true.
--
-- /See:/ 'controllerDebuggeesRegister'' smart constructor.
data ControllerDebuggeesRegister' = ControllerDebuggeesRegister'
    { _cdrXgafv          :: !(Maybe Text)
    , _cdrQuotaUser      :: !(Maybe Text)
    , _cdrPrettyPrint    :: !Bool
    , _cdrUploadProtocol :: !(Maybe Text)
    , _cdrPp             :: !Bool
    , _cdrAccessToken    :: !(Maybe Text)
    , _cdrUploadType     :: !(Maybe Text)
    , _cdrPayload        :: !RegisterDebuggeeRequest
    , _cdrBearerToken    :: !(Maybe Text)
    , _cdrKey            :: !(Maybe AuthKey)
    , _cdrOAuthToken     :: !(Maybe OAuthToken)
    , _cdrFields         :: !(Maybe Text)
    , _cdrCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ControllerDebuggeesRegister'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrXgafv'
--
-- * 'cdrQuotaUser'
--
-- * 'cdrPrettyPrint'
--
-- * 'cdrUploadProtocol'
--
-- * 'cdrPp'
--
-- * 'cdrAccessToken'
--
-- * 'cdrUploadType'
--
-- * 'cdrPayload'
--
-- * 'cdrBearerToken'
--
-- * 'cdrKey'
--
-- * 'cdrOAuthToken'
--
-- * 'cdrFields'
--
-- * 'cdrCallback'
controllerDebuggeesRegister'
    :: RegisterDebuggeeRequest -- ^ 'payload'
    -> ControllerDebuggeesRegister'
controllerDebuggeesRegister' pCdrPayload_ =
    ControllerDebuggeesRegister'
    { _cdrXgafv = Nothing
    , _cdrQuotaUser = Nothing
    , _cdrPrettyPrint = True
    , _cdrUploadProtocol = Nothing
    , _cdrPp = True
    , _cdrAccessToken = Nothing
    , _cdrUploadType = Nothing
    , _cdrPayload = pCdrPayload_
    , _cdrBearerToken = Nothing
    , _cdrKey = Nothing
    , _cdrOAuthToken = Nothing
    , _cdrFields = Nothing
    , _cdrCallback = Nothing
    }

-- | V1 error format.
cdrXgafv :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrXgafv = lens _cdrXgafv (\ s a -> s{_cdrXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cdrQuotaUser :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrQuotaUser
  = lens _cdrQuotaUser (\ s a -> s{_cdrQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdrPrettyPrint :: Lens' ControllerDebuggeesRegister' Bool
cdrPrettyPrint
  = lens _cdrPrettyPrint
      (\ s a -> s{_cdrPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdrUploadProtocol :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrUploadProtocol
  = lens _cdrUploadProtocol
      (\ s a -> s{_cdrUploadProtocol = a})

-- | Pretty-print response.
cdrPp :: Lens' ControllerDebuggeesRegister' Bool
cdrPp = lens _cdrPp (\ s a -> s{_cdrPp = a})

-- | OAuth access token.
cdrAccessToken :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrAccessToken
  = lens _cdrAccessToken
      (\ s a -> s{_cdrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdrUploadType :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrUploadType
  = lens _cdrUploadType
      (\ s a -> s{_cdrUploadType = a})

-- | Multipart request metadata.
cdrPayload :: Lens' ControllerDebuggeesRegister' RegisterDebuggeeRequest
cdrPayload
  = lens _cdrPayload (\ s a -> s{_cdrPayload = a})

-- | OAuth bearer token.
cdrBearerToken :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrBearerToken
  = lens _cdrBearerToken
      (\ s a -> s{_cdrBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdrKey :: Lens' ControllerDebuggeesRegister' (Maybe AuthKey)
cdrKey = lens _cdrKey (\ s a -> s{_cdrKey = a})

-- | OAuth 2.0 token for the current user.
cdrOAuthToken :: Lens' ControllerDebuggeesRegister' (Maybe OAuthToken)
cdrOAuthToken
  = lens _cdrOAuthToken
      (\ s a -> s{_cdrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdrFields :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrFields
  = lens _cdrFields (\ s a -> s{_cdrFields = a})

-- | JSONP
cdrCallback :: Lens' ControllerDebuggeesRegister' (Maybe Text)
cdrCallback
  = lens _cdrCallback (\ s a -> s{_cdrCallback = a})

instance GoogleAuth ControllerDebuggeesRegister'
         where
        _AuthKey = cdrKey . _Just
        _AuthToken = cdrOAuthToken . _Just

instance GoogleRequest ControllerDebuggeesRegister'
         where
        type Rs ControllerDebuggeesRegister' =
             RegisterDebuggeeResponse
        request = requestWith debuggerRequest
        requestWith rq ControllerDebuggeesRegister'{..}
          = go _cdrXgafv _cdrUploadProtocol (Just _cdrPp)
              _cdrAccessToken
              _cdrUploadType
              _cdrBearerToken
              _cdrCallback
              _cdrQuotaUser
              (Just _cdrPrettyPrint)
              _cdrFields
              _cdrKey
              _cdrOAuthToken
              (Just AltJSON)
              _cdrPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ControllerDebuggeesRegisterResource)
                      rq
